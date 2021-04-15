const mongoose = require('mongoose')

const topicSchema = new mongoose.Schema({
  username: {
    type: String,
    required: true
  },
  topic: {
    type: String,
    required: true
  },
  comment: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Topic', topicSchema)
