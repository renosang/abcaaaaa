.class public Lcom/oneplus/dialer/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;,
        Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;,
        Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final mEngineerCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEngineerCodes:[Ljava/lang/String;

.field private static mQcNvItems:Lcom/qualcomm/qcnvitems/QcNvItems;

.field private static sPreviousAdnQueryHandler:Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;


# direct methods
.method static synthetic -set0(Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;)Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;
    .locals 0

    sput-object p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V
    .locals 0
    .param p0, "handler"    # Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;
    .param p1, "cookie"    # Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->handleAdnQuery(Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 372
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->mQcNvItems:Lcom/qualcomm/qcnvitems/QcNvItems;

    .line 589
    const/16 v0, 0x3f

    new-array v0, v0, [Ljava/lang/String;

    .line 590
    const-string/jumbo v1, "*#391#"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#3954391#"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 591
    const-string/jumbo v1, "*#66#"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#99#"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 592
    const-string/jumbo v1, "*#008#"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#268#"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#789#"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 593
    const-string/jumbo v1, "*#800#"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#801#"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#802#"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#803#"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#804#"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#805#"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 594
    const-string/jumbo v1, "*#806#"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#807#"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#808#"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#809#"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#810#"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#811#"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 595
    const-string/jumbo v1, "*#820#"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#888#"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 596
    const-string/jumbo v1, "*#814#"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#824#"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#834#"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#844#"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 597
    const-string/jumbo v1, "*#900#"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#911#"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#912"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#928#"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 598
    const-string/jumbo v1, "*#1234#"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#6776#"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#4321#"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 599
    const-string/jumbo v1, "*#8000#"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8011#"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8019#"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8668#"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8669#"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8778#"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8888#"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 600
    const-string/jumbo v1, "*#9886#"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#9889#"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 601
    const-string/jumbo v1, "*##*8110#"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67766776#"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#2288379#"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 602
    const-string/jumbo v1, "*#10000#"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#12345#"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "*##*37847#"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 603
    const-string/jumbo v1, "*#36446337#"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#8958378#"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#677667764482#"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 604
    const-string/jumbo v1, "*#67760044#"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#6776001#"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#6776007#"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760052#"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 605
    const-string/jumbo v1, "*#67760055#"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760066#"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760062#"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760084#"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 606
    const-string/jumbo v1, "*#67760086#"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#67760886#"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 607
    const-string/jumbo v1, "*#632#"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 608
    const-string/jumbo v1, "*#818#"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "*#838#"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 589
    sput-object v0, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->mEngineerCodes:[Ljava/lang/String;

    .line 612
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->mEngineerCodes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 611
    sput-object v0, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->mEngineerCodeSet:Ljava/util/Set;

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleAdnQuery(Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V
    .locals 8
    .param p0, "handler"    # Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;
    .param p1, "cookie"    # Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 324
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 325
    :cond_0
    const-string/jumbo v0, "SpecialCharSequenceMgr"

    const-string/jumbo v1, "queryAdn parameters incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 324
    :cond_1
    if-eqz p2, :cond_0

    .line 330
    iget-object v0, p1, Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 333
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "number"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v0, :cond_2

    .line 338
    sget-object v0, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {v0}, Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 340
    :cond_2
    sput-object p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 323
    return-void
.end method
