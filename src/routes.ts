
import { PrismaClient } from "@prisma/client"
import express from "express";
import { Router } from "express";

const prisma = new PrismaClient();

const app = express();

app.get("/askselect", async (req, res) => {
    res.send('Aqui você seleciona o tipo de carteira');
})
app.get("/fortaleza", async (req, res) => {
    res.send('Aqui você está na aba de carteira selecionada')
})
app.get("/Seundarista", async (req, res) => {
    res.send('Aqui você está na aba de carteira selecionada')
})
app.get("/macro", async (req, res) => {
    res.send('Aqui você está na aba de carteira selecionada')
})
app.get("/micro", async (req, res) => {
    res.send('Aqui você está na aba de carteira selecionada')
})

app.post("/upload", async (req, res) => {

    const { status, imagePayment, imageRgFront, imageRgBack, imageProofResidence, imageRegistration } = req.body;
    await prisma.$connect()
    await prisma.ask.create({
        data: {
            status,
            imagePayment,
            imageRgFront,
            imageRgBack,
            imageProofResidence,
            imageRegistration
        }
    })
})

app.use(express.json());
app.use(express.urlencoded({ extended: true }))

app.listen(3000, () => {
    console.log("App rodando!");
});



module.exports = Router;