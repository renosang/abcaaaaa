.class public Lcom/android/dialer/util/DialerUtils;
.super Ljava/lang/Object;
.source "DialerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canShowWelcomeScreen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 205
    const-string/jumbo v1, "video_call_welcome"

    .line 204
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "message-repeat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static hideInputMethod(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 193
    const-string/jumbo v2, "input_method"

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    :cond_0
    return-void
.end method

.method public static isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Landroid/content/res/Resources;Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 156
    .local v1, "formatter":Landroid/text/BidiFormatter;
    const v5, 0x7f0d02d9

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "separator":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x1

    .line 160
    .local v0, "firstTime":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 168
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 167
    invoke-virtual {v1, v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static setShowingState(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Z

    .prologue
    .line 218
    const-string/jumbo v1, "video_call_welcome"

    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "message-repeat"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    return-void
.end method

.method public static showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    const-string/jumbo v2, "input_method"

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 186
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 183
    :cond_0
    return-void
.end method

.method public static startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const v0, 0x7f0d0289

    invoke-static {p0, p1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 61
    return-void
.end method

.method public static startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgId"    # I

    .prologue
    const/4 v7, 0x0

    .line 76
    :try_start_0
    const-string/jumbo v5, "android.intent.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 77
    instance-of v5, p0, Landroid/app/Activity;

    .line 76
    if-eqz v5, :cond_4

    .line 79
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/interactions/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v4

    .line 80
    .local v4, "touchPoint":Landroid/graphics/Point;
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_0

    iget v5, v4, Landroid/graphics/Point;->y:I

    if-eqz v5, :cond_1

    .line 83
    :cond_0
    const-string/jumbo v5, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    const-string/jumbo v5, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 84
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 89
    .local v2, "extras":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v5, "touchPoint"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    const-string/jumbo v5, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v5, v0

    invoke-static {v5, p1}, Lcom/android/dialer/util/TelecomUtil;->placeCall(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    .line 94
    .local v3, "hasCallPermission":Z
    if-nez v3, :cond_2

    .line 97
    const-string/jumbo v5, "Cannot place call without Phone permission"

    .line 98
    const/4 v6, 0x0

    .line 97
    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 74
    .end local v3    # "hasCallPermission":Z
    .end local v4    # "touchPoint":Landroid/graphics/Point;
    :cond_2
    :goto_1
    return-void

    .line 87
    .restart local v4    # "touchPoint":Landroid/graphics/Point;
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .restart local v2    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 101
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "touchPoint":Landroid/graphics/Point;
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
