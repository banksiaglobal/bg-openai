ROUTINE Banksia.OpenAi.OpenAi [Type=INC]

#Define DefaultOwnedBy "openai"

/// Chage Message Role
#Define UserRole "user"
#Define SystemRole "system"
#Define AssistantRole "assistant"

/// HttpStatus
#Define HttpStatusOk "200"
#Define HttpStatusBadRequest "400"
#Define HttpStatusUnauthorized "401"
#Define HttpStatusInternalServerError "500"

/// Image size
#Define ImageSmall "256x256"
#Define ImageMedium "512x512"
#Define ImageLarge "1024x1024"

/// Image operation
#Define ImageGenerations "generations"
#Define ImageEdits "edits"
#Define ImageVariations "variations"

/// Audio operation
#Define AudioTranslation "translation"
#Define AudioTranscription "transcription"

/// Model names
#Define AdaText "text-ada-001"
#Define BabbageText "text-babbage-001"
#Define CurieText "text-curie-001"
#Define DavinciText "text-davinci-003"
#Define CushmanCode "code-cushman-001"
#Define DavinciCode "code-davinci-002"
#Define AdaTextEmbedding "text-embedding-ada-002"
#Define ChatGPTTurbo "gpt-3.5-turbo"
#Define ChatGPTTurbo0301 "gpt-3.5-turbo-0301"
#Define GPT4 "gpt-4"
#Define GPT432kContext "gpt-4-32k"
#Define TextModerationStable "text-moderation-stable"
#Define TextModerationLatest "text-moderation-latest"
#Define Whisper "whisper-1"