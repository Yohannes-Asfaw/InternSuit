const mongoose = require('mongoose')
const Joi = require('joi')
const jwt = require('jsonwebtoken')
const { join } = require('lodash')
const {User} = require('../models/users')
const { required } = require('joi')



const applyschema = mongoose.Schema({
    user:{
        type:mongoose.Schema.Types.ObjectId,
        ref:"User"
    },
    cgpa:{
        type:String ,
        required:true 
    },
    description:{
        type:String,
        required:true

    },

    Subject:{
        type:String,
        required:true,
        
    },
    Seen:{
        type:String,
        default:"none"
    },
    company:{
        type:mongoose.Schema.Types.ObjectId,
        ref:"Company"
    },
})

// applyschema.methods.generateregtoken =function(){
// const token = jwt.sign({_id:this._id},config.get('jwtwebtoken'))
// return token
// }

const Application = mongoose.model('Application',applyschema)

function validateApply(application){
    const schema = Joi.object({
        user:Joi.required(),
        cgpa:Joi.string().required(),
        description:Joi.string().required(),
        Subject:Joi.string().required(),
        Seen:Joi.string(),
        company:Joi.string().required()

    })
    return schema.validate(application)
}
exports.Application=Application
exports.applyschema=applyschema
exports.validateApply=validateApply
