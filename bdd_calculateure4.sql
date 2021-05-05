{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- phpMyAdmin SQL Dump\
-- version 4.9.7\
-- https://www.phpmyadmin.net/\
--\
-- H\'f4te : localhost:8889\
-- G\'e9n\'e9r\'e9 le : mer. 05 mai 2021 \'e0 04:52\
-- Version du serveur :  5.7.32\
-- Version de PHP : 7.4.12\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Base de donn\'e9es : `Calculateur`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Structure de la table `epreuve`\
--\
\
CREATE TABLE `epreuve` (\
  `id` int(11) NOT NULL,\
  `nom` varchar(255) NOT NULL,\
  `prenom` varchar(255) NOT NULL,\
  `numero_commission` int(11) NOT NULL,\
  `numero_candidat` int(11) NOT NULL,\
  `date_epreuve` date NOT NULL,\
  `type_epreuve` varchar(255) NOT NULL,\
  `note` int(11) NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- D\'e9chargement des donn\'e9es de la table `epreuve`\
--\
\
INSERT INTO `epreuve` (`id`, `nom`, `prenom`, `numero_commission`, `numero_candidat`, `date_epreuve`, `type_epreuve`, `note`) VALUES\
(3, 'Aymen', 'Chattah', 1234, 98765, '2021-05-12', 'Ponctuelle', 15),\
(4, 'Boris', 'Becker', 246798, 1234567, '2021-06-07', 'Ponctuelle', 12);\
\
-- --------------------------------------------------------\
\
--\
-- Structure de la table `membre`\
--\
\
CREATE TABLE `membre` (\
  `id` int(11) NOT NULL,\
  `identifiant` varchar(255) NOT NULL,\
  `motdepasse` varchar(255) NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- D\'e9chargement des donn\'e9es de la table `membre`\
--\
\
INSERT INTO `membre` (`id`, `identifiant`, `motdepasse`) VALUES\
(1, 'jury', 'examen'),\
(5, 'admin', 'admin');\
\
--\
-- Index pour les tables d\'e9charg\'e9es\
--\
\
--\
-- Index pour la table `epreuve`\
--\
ALTER TABLE `epreuve`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- Index pour la table `membre`\
--\
ALTER TABLE `membre`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- AUTO_INCREMENT pour les tables d\'e9charg\'e9es\
--\
\
--\
-- AUTO_INCREMENT pour la table `epreuve`\
--\
ALTER TABLE `epreuve`\
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;\
\
--\
-- AUTO_INCREMENT pour la table `membre`\
--\
ALTER TABLE `membre`\
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;\
}