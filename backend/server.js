const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());

app.get("/generate", async (req, res) => {
  // SIMULATED AI (biar demo jalan)
  const portfolio = {
    narrative: "AI",
    confidence: 82,
    tokens: [
      "0x0000000000000000000000000000000000000001",
      "0x0000000000000000000000000000000000000002",
      "0x0000000000000000000000000000000000000003",
    ],
    weights: [40, 35, 25]
  };

  res.json(portfolio);
});

app.listen(5000, () => {
  console.log("AI engine running on port 5000");
});