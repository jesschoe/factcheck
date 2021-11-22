import api from './api-config';

export const createTopic = async (user_id, data) => {
  const resp = await api.post(`/users/${user_id}/topics`, { topic: data })
  console.log(resp)
  return resp.data
}

export const readAllTopics = async (user_id) => {
  const resp = await api.get(`/users/${user_id}/topics`)
  return resp.data
}

export const readOneTopic = async (id) => {
  const resp = await api.get(`/topics/${id}`);
  return resp.data
}

export const updateTopic = async (user_id, id, data) => {
  const resp = await api.put(`users/${user_id}/topics/${id}`, { topic: data })
  return resp.data
}

export const destroyTopic = async (user_id, id) => {
  const resp = await api.delete(`users/${user_id}/topics/${id}`)
  return resp.data
}