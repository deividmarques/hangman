import Vue from 'vue'
import VueResource from 'vue-resource'
import requestWord from '@/components/adapters/WordRequester'
import nock from 'nock'
import request from 'request'


describe('WordRequester', () => {
  it('should return a word string', async () => {
    nock('http://localhost:4000')
      .get('/')
      .reply(200, { word: 'some-word' })

    await expect(requestWord()).toEqual('some-word')
  })
})