.class public final Lcom/android/contacts/common/util/PhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 71
    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "formatAfterWatcherSet"    # Z

    .prologue
    .line 85
    new-instance v1, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1, p2}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;-><init>(Ljava/lang/String;Landroid/widget/TextView;Z)V

    .line 87
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    .line 85
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Z)V

    .line 91
    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "formatAfterWatcherSet"    # Z

    .prologue
    .line 98
    new-instance v1, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;-><init>(Ljava/lang/String;Landroid/widget/TextView;Z)V

    .line 100
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    .line 98
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method
