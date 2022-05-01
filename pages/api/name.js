// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
const getRandomName = require('node-random-name');

export default function handler(req, res) {
  res.status(200).json({ name: getRandomName() });
}
