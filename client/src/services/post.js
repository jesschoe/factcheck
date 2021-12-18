import api from './api-config';

export const createPost = async (user_id, data) => {
  const resp = await api.post(`/users/${user_id}/posts`, { post: data })
  console.log(resp)
  return resp.data
}

export const readAllPosts = async (user_id) => {
  const resp = await api.get(`/users/${user_id}/posts`)
  return resp.data
}

export const readOnePost = async (id) => {
  const resp = await api.get(`/posts/${id}`);
  return resp.data
}

export const updatePost = async (user_id, id, data) => {
  const resp = await api.put(`users/${user_id}/posts/${id}`, { post: data })
  return resp.data
}

export const destroyPost = async (user_id, id) => {
  const resp = await api.delete(`users/${user_id}/posts/${id}`)
  return resp.data
}