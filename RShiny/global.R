# global.R

library(shiny)
library(dplyr)
library(tidyr)
library(grid)
library(ggplot2)
library(scales)
library(shiny.i18n)

i18n <- Translator$new(translation_json_path='translations/translation.json')
i18n$set_translation_language('en')