.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 146
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "directory"

    .line 148
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "remove_duplicate_entries"

    const-string/jumbo v2, "true"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->URI:Landroid/net/Uri;

    .line 152
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 153
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "last_time_used"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "times_used"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "starred"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "is_super_primary"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "in_visible_group"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "is_primary"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "carrier_presence"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "account_type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "account_name"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 152
    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    .line 145
    return-void
.end method
