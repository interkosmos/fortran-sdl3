/* Wrapper functions for compatibility with variadic SDL 3.0 procedures.
 *
 * Author:  Philipp Engel
 * Licence: ISC
 * */
#include <SDL3/SDL.h>

#ifdef __cplusplus
extern "C" {
#endif

void SDL_LogCritical_(int category, const char *message);
void SDL_LogDebug_(int category, const char *message);
void SDL_LogError_(int category, const char *message);
void SDL_LogInfo_(int category, const char *message);
void SDL_LogMessage_(int category, int priority, const char *message);
void SDL_LogTrace_(int category, const char *message);
void SDL_LogVerbose_(int category, const char *message);
void SDL_LogWarn_(int category, const char *message);
void SDL_Log_(const char *message);

void SDL_LogCritical_(int category, const char *message)
{
    SDL_LogCritical(category, "%s", message);
}

void SDL_LogDebug_(int category, const char *message)
{
    SDL_LogDebug(category, "%s", message);
}

void SDL_LogError_(int category, const char *message)
{
    SDL_LogError(category, "%s", message);
}

void SDL_LogInfo_(int category, const char *message)
{
    SDL_LogInfo(category, "%s", message);
}

void SDL_LogMessage_(int category, int priority, const char *message)
{
    SDL_LogMessage(category, (SDL_LogPriority) priority, "%s", message);
}

void SDL_LogTrace_(int category, const char *message)
{
    SDL_LogTrace(category, "%s", message);
}

void SDL_LogVerbose_(int category, const char *message)
{
    SDL_LogVerbose(category, "%s", message);
}

void SDL_LogWarn_(int category, const char *message)
{
    SDL_LogWarn(category, "%s", message);
}

void SDL_Log_(const char *message)
{
    SDL_Log("%s", message);
}

#ifdef __cplusplus
}
#endif
