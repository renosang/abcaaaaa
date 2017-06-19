.class Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;
.super Ljava/lang/Object;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/list/ContactEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPreferredSortName(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;
    .locals 2
    .param p1, "contactEntry"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->-get0(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 134
    if-eqz v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    return-object v0

    .line 138
    :cond_1
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/list/ContactEntry;Lcom/android/contacts/common/list/ContactEntry;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/contacts/common/list/ContactEntry;
    .param p2, "rhs"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    .line 127
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 128
    iget v1, p1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    iget v2, p2, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;->getPreferredSortName(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;->getPreferredSortName(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 126
    check-cast p1, Lcom/android/contacts/common/list/ContactEntry;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/contacts/common/list/ContactEntry;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;->compare(Lcom/android/contacts/common/list/ContactEntry;Lcom/android/contacts/common/list/ContactEntry;)I

    move-result v0

    return v0
.end method
