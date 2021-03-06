.class Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/PhoneNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextWatcherLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/telephony/PhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCountryCode:Ljava/lang/String;

.field private final mFormatAfterWatcherSet:Z

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "formatAfterWatcherSet"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 43
    iput-boolean p3, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mFormatAfterWatcherSet:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/contacts/common/compat/PhoneNumberFormattingTextWatcherCompat;->newInstance(Ljava/lang/String;)Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    iget-boolean v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mFormatAfterWatcherSet:Z

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 52
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "watcher"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .end local p1    # "watcher":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->onPostExecute(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V

    return-void
.end method
