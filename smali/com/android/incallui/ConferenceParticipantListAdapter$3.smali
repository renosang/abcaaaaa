.class Lcom/android/incallui/ConferenceParticipantListAdapter$3;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V
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
        "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I
    .locals 7
    .param p1, "p1"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    .param p2, "p2"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .prologue
    .line 547
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 550
    .local v0, "c1":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 551
    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    .line 552
    iget-object v6, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-static {v6}, Lcom/android/incallui/ConferenceParticipantListAdapter;->-get0(Lcom/android/incallui/ConferenceParticipantListAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v6

    .line 549
    invoke-static {v4, v5, v6}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 553
    const-string/jumbo v5, ""

    .line 548
    invoke-static {v4, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 555
    .local v2, "p1Name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 558
    .local v1, "c2":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 559
    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    .line 560
    iget-object v6, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-static {v6}, Lcom/android/incallui/ConferenceParticipantListAdapter;->-get0(Lcom/android/incallui/ConferenceParticipantListAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v6

    .line 557
    invoke-static {v4, v5, v6}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 561
    const-string/jumbo v5, ""

    .line 556
    invoke-static {v4, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "p2Name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .prologue
    .line 545
    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .end local p1    # "p1":Ljava/lang/Object;
    check-cast p2, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .end local p2    # "p2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I

    move-result v0

    return v0
.end method
