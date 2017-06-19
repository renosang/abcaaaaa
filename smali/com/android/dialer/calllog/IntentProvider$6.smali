.class final Lcom/android/dialer/calllog/IntentProvider$6;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isNewContact:Z

.field final synthetic val$lookupUri:Landroid/net/Uri;

.field final synthetic val$name:Ljava/lang/CharSequence;

.field final synthetic val$number:Ljava/lang/CharSequence;

.field final synthetic val$numberType:I


# direct methods
.method constructor <init>(Landroid/net/Uri;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "val$lookupUri"    # Landroid/net/Uri;
    .param p2, "val$isNewContact"    # Z
    .param p3, "val$name"    # Ljava/lang/CharSequence;
    .param p4, "val$number"    # Ljava/lang/CharSequence;
    .param p5, "val$numberType"    # I

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$lookupUri:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$isNewContact:Z

    iput-object p3, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$name:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$number:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$numberType:I

    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "contactToSave":Lcom/android/contacts/common/model/Contact;
    iget-object v6, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$lookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$lookupUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/contacts/common/model/ContactLoader;->parseEncodedContactEntity(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    .line 154
    .end local v0    # "contactToSave":Lcom/android/contacts/common/model/Contact;
    :cond_0
    if-eqz v0, :cond_5

    .line 158
    iget-boolean v6, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$isNewContact:Z

    if-eqz v6, :cond_2

    .line 159
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v1

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v5

    .line 167
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v6

    .line 168
    const/16 v7, 0x23

    .line 167
    if-lt v6, v7, :cond_3

    .line 169
    const-string/jumbo v6, "name"

    .line 170
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "value$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 188
    .local v3, "value":Landroid/content/ContentValues;
    const-string/jumbo v6, "last_time_used"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v6, "times_used"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 161
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "value":Landroid/content/ContentValues;
    .end local v4    # "value$iterator":Ljava/util/Iterator;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent()Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 171
    .restart local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v6

    .line 172
    const/16 v7, 0x1e

    .line 171
    if-ne v6, v7, :cond_1

    .line 176
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v2, "organization":Landroid/content/ContentValues;
    const-string/jumbo v6, "data1"

    .line 178
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v6, "mimetype"

    .line 180
    const-string/jumbo v7, "vnd.android.cursor.item/organization"

    .line 179
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    .end local v2    # "organization":Landroid/content/ContentValues;
    .restart local v4    # "value$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 194
    return-object v1

    .line 197
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "value$iterator":Ljava/util/Iterator;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_5
    iget-boolean v6, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$isNewContact:Z

    if-eqz v6, :cond_6

    .line 198
    iget-object v6, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$name:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$number:Ljava/lang/CharSequence;

    iget v8, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$numberType:I

    invoke-static {v6, v7, v8}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    .line 200
    :cond_6
    iget-object v6, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$name:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$number:Ljava/lang/CharSequence;

    iget v8, p0, Lcom/android/dialer/calllog/IntentProvider$6;->val$numberType:I

    invoke-static {v6, v7, v8}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v6

    return-object v6
.end method
