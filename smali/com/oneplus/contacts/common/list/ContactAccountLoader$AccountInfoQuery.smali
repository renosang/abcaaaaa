.class public Lcom/oneplus/contacts/common/list/ContactAccountLoader$AccountInfoQuery;
.super Ljava/lang/Object;
.source "ContactAccountLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/list/ContactAccountLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfoQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "ungrouped_visible"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Lcom/oneplus/contacts/common/list/ContactAccountLoader$AccountInfoQuery;->PROJECTION:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
