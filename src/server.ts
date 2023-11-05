import express, { Request, Response } from 'express';

const app = express();
const PORT = process.env.PORT || 3000;

app.get('/ping', (req: Request, res: Response) => {
  const repsponse = 'it works 1';
  console.log('ping received, response: ', repsponse);
  res.send(repsponse);
});

// app.get('/runConnect', (req, res) => {
//   const { address } = req.body;
//   const holding = fetchHoldings(address);
//   res.send(holding);
// });

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
