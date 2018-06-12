/* @flow */

import React, { Component } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  TextInput,
  Alert,
  FlatList
} from 'react-native';
import firebase from 'react-native-firebase';
import DataCard from './Data';

export default class MyComponent extends Component {
  constructor(props) {
    super(props);
    this.state = {
      token:'',
    }
  }

  componentDidMount() {
    firebase.messaging().getToken()
      .then(token => {
        if (token) {
          this.setState({
            token: token || ""
          })
        }
      });

    return fetch('http://192.168.0.102:3000/fcm/ShowAllNotifi.php')
      .then((response) => response.json())
      .then((responseJson) => {
        this.setState({
          data: responseJson
        })
      })
      .catch((error) => {
        console.error(error);
    });
  }

  insertTokenUser = () => {
    fetch('http://192.168.0.102:3000/fcm/fcm_insert.php', {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        token: this.state.token
      })
    }).then((response) => response.json())
      .then((responseJson) => {
        Alert.alert(responseJson);
      }).catch((error) => {
        console.error(error);
      });
  }

  _renderItem = ({item, index}) => (
    <DataCard
      item={item}
      key={item._id}
    />
  );
  _keyExtractor = (item, index) => index.toString();

  render() {
    console.log(this.state.data);
    return (
      <View style={styles.container}>
        <Text>TOKEN: <Text style={styles.txtToken}>{this.state.token}</Text></Text>
        <TouchableOpacity style={styles.btnPush} onPress={this.insertTokenUser}>
          <Text style={{color: '#fff'}}>POST TOKEN</Text>
        </TouchableOpacity>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    padding: 20
  },
  txtToken: {
    fontSize: 16,
    color: '#FF7432'
  },
  btnPush: {
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#007ACC',
    width: 200,
    height: 40,
    borderRadius: 3,
    marginTop: 10
  },
});
