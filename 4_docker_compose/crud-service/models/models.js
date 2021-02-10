import mongoose from 'mongoose';
 
import ToDo from './todo.js';
 
const connectDb = () => {
  return mongoose.connect(process.env.MONGODB_URI || 'mongodb://localhost:27017/todo', { useNewUrlParser: true,  useUnifiedTopology: true});
};
 
const models = { ToDo };
 
export { connectDb };
 
export default models;
