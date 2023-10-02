#!/usr/bin/env python

import speech_recognition as sr
from sound_play.libsoundplay import SoundClient
import numpy as np
import time
import itertools


speaker = SoundClient()
ear = sr.Recognizer()

def hear_table():
	speaker.say("Which table is the object?")
	time.sleep(2)

	with sr.Microphone() as source:
	ear.adjust_for_ambient_noise(source)
	print("Retriving table")
	try:
		audio = ear.listen(source,timeout = 4)
		text = ear.recognize_google(audio)
		if text == "one":
			print("heard:" + text)
			return "table1"
		elif text == "two":
			print("heard:"+ text)
			return "table2"
	except:
		text = np.random.choice(["table1","table2"])
		return str(text)

def hear_color():
	speaker.say("What color is the object?")
	time.sleep(2)
	with sr.Microphone() as source:
		ear.adjust_for_ambient_noise(source)
		print("Retriving RGB")
		try:
			audio = ear.listen(source,timeout = 4)
			text = ear.recognize_google(audio)
			if text == "red":
				print("heard:" + text)
				return text
			elif text == "blue":
				print("heard:"+ text)
				return text
			elif text == "green":
				print("heard:"+ text)
				return text

		except:
			text = np.random.choice(["red","blue","green"])
			print("Random " + text)
			return str(text)


def hear_confirmation():
	speaker.say("Can I bring the projected object?")
	time.sleep(2)
	with sr.Microphone() as source:
		ear.adjust_for_ambient_noise(source)
		print("Retriving Yes or No")

		try:
			audio = ear.listen(source,timeout=4)
			text = ear.recognize_google(audio)
			if text == "yes":
				print(text)
				return text
			elif text == "no":
				print(text)
				return text

		except:
			text = "yes"
			return text


def ask_to_look():
	speaker.say("Please look at the table")

