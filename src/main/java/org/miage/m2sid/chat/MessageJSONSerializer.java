/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.miage.m2sid.chat;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;

/**
 *
 * @author Ersagun
 */
public class MessageJSONSerializer implements JsonSerializer<MessageJSON>{
   @Override
    public JsonElement serialize(final MessageJSON messageJSON, final Type type, final JsonSerializationContext context) {
        JsonObject result = new JsonObject();
        result.add("login", new JsonPrimitive(messageJSON.getLogin()));
        result.add("objet", new JsonPrimitive(messageJSON.getObjet()));
        result.add("corps", new JsonPrimitive(messageJSON.getCorps()));
        return result;
    } 
}
