.class public Lcom/loc/cb;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static L:F

.field private static M:F

.field private static N:F

.field private static O:F

.field private static P:I

.field private static Q:I

.field private static R:I

.field private static S:I

.field private static T:I

.field private static U:I

.field private static V:I

.field protected static a:Z

.field protected static b:Z

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/Object;

.field private static j:Lcom/loc/cb;


# instance fields
.field private volatile A:Landroid/os/Handler;

.field private B:Lcom/loc/cx;

.field private C:Landroid/location/LocationListener;

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Landroid/location/GpsStatus;

.field private G:I

.field private H:I

.field private I:Ljava/util/HashMap;

.field private J:I

.field private K:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/content/Context;

.field private p:Landroid/location/LocationManager;

.field private q:Lcom/loc/cl;

.field private r:Lcom/loc/cz;

.field private s:Lcom/loc/df;

.field private t:Lcom/loc/ci;

.field private u:Lcom/loc/de;

.field private v:Lcom/loc/cy;

.field private w:Lcom/loc/cc;

.field private x:Ljava/lang/Thread;

.field private y:Landroid/os/Looper;

.field private z:Lcom/loc/cw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/16 v1, 0xa

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/cb;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/cb;->b:Z

    sput v1, Lcom/loc/cb;->c:I

    sput v2, Lcom/loc/cb;->d:I

    sput v1, Lcom/loc/cb;->e:I

    sput v1, Lcom/loc/cb;->f:I

    const/16 v0, 0x32

    sput v0, Lcom/loc/cb;->g:I

    const/16 v0, 0xc8

    sput v0, Lcom/loc/cb;->h:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/cb;->i:Ljava/lang/Object;

    const v0, 0x3f8ccccd    # 1.1f

    sput v0, Lcom/loc/cb;->L:F

    const v0, 0x400ccccd    # 2.2f

    sput v0, Lcom/loc/cb;->M:F

    const v0, 0x40133333    # 2.3f

    sput v0, Lcom/loc/cb;->N:F

    const v0, 0x40733333    # 3.8f

    sput v0, Lcom/loc/cb;->O:F

    const/4 v0, 0x3

    sput v0, Lcom/loc/cb;->P:I

    sput v1, Lcom/loc/cb;->Q:I

    sput v2, Lcom/loc/cb;->R:I

    const/4 v0, 0x7

    sput v0, Lcom/loc/cb;->S:I

    const/16 v0, 0x14

    sput v0, Lcom/loc/cb;->T:I

    const/16 v0, 0x46

    sput v0, Lcom/loc/cb;->U:I

    const/16 v0, 0x78

    sput v0, Lcom/loc/cb;->V:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/loc/cb;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/cb;->l:I

    iput v1, p0, Lcom/loc/cb;->m:I

    iput v1, p0, Lcom/loc/cb;->n:I

    iput-object v2, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    iput-object v2, p0, Lcom/loc/cb;->z:Lcom/loc/cw;

    iput-object v2, p0, Lcom/loc/cb;->A:Landroid/os/Handler;

    new-instance v0, Lcom/loc/cx;

    invoke-direct {v0, p0}, Lcom/loc/cx;-><init>(Lcom/loc/cb;)V

    iput-object v0, p0, Lcom/loc/cb;->B:Lcom/loc/cx;

    new-instance v0, Lcom/loc/cr;

    invoke-direct {v0, p0}, Lcom/loc/cr;-><init>(Lcom/loc/cb;)V

    iput-object v0, p0, Lcom/loc/cb;->C:Landroid/location/LocationListener;

    new-instance v0, Lcom/loc/cs;

    invoke-direct {v0, p0}, Lcom/loc/cs;-><init>(Lcom/loc/cb;)V

    iput-object v0, p0, Lcom/loc/cb;->D:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/loc/ct;

    invoke-direct {v0, p0}, Lcom/loc/ct;-><init>(Lcom/loc/cb;)V

    iput-object v0, p0, Lcom/loc/cb;->E:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/loc/cb;->F:Landroid/location/GpsStatus;

    iput v1, p0, Lcom/loc/cb;->G:I

    iput v1, p0, Lcom/loc/cb;->H:I

    iput-object v2, p0, Lcom/loc/cb;->I:Ljava/util/HashMap;

    iput v1, p0, Lcom/loc/cb;->J:I

    iput v1, p0, Lcom/loc/cb;->K:I

    iput-object p1, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/loc/cl;->a(Landroid/content/Context;)Lcom/loc/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    new-instance v0, Lcom/loc/cc;

    invoke-direct {v0}, Lcom/loc/cc;-><init>()V

    iput-object v0, p0, Lcom/loc/cb;->w:Lcom/loc/cc;

    new-instance v0, Lcom/loc/cz;

    iget-object v2, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-direct {v0, v2}, Lcom/loc/cz;-><init>(Lcom/loc/cl;)V

    iput-object v0, p0, Lcom/loc/cb;->r:Lcom/loc/cz;

    new-instance v0, Lcom/loc/ci;

    invoke-direct {v0, p1}, Lcom/loc/ci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/cb;->t:Lcom/loc/ci;

    new-instance v0, Lcom/loc/df;

    iget-object v2, p0, Lcom/loc/cb;->t:Lcom/loc/ci;

    invoke-direct {v0, v2}, Lcom/loc/df;-><init>(Lcom/loc/ci;)V

    iput-object v0, p0, Lcom/loc/cb;->s:Lcom/loc/df;

    new-instance v0, Lcom/loc/de;

    iget-object v2, p0, Lcom/loc/cb;->t:Lcom/loc/ci;

    invoke-direct {v0, v2}, Lcom/loc/de;-><init>(Lcom/loc/ci;)V

    iput-object v0, p0, Lcom/loc/cb;->u:Lcom/loc/de;

    iget-object v0, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/cb;->p:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cy;->a(Landroid/content/Context;)Lcom/loc/cy;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    iget-object v2, p0, Lcom/loc/cb;->B:Lcom/loc/cx;

    invoke-virtual {v0, v2}, Lcom/loc/cy;->a(Lcom/loc/cx;)V

    invoke-direct {p0}, Lcom/loc/cb;->o()V

    iget-object v0, p0, Lcom/loc/cb;->p:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/loc/cb;->k:Z

    if-nez p1, :cond_2

    sget-object v0, Lcom/loc/cl;->a:Ljava/lang/String;

    const-string/jumbo v1, "Error: No SD Card!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/cl;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/cb;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/cb;->G:I

    return v0
.end method

.method static synthetic a(Lcom/loc/cb;Lcom/loc/dh;I)I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget v0, p0, Lcom/loc/cb;->J:I

    sget v1, Lcom/loc/cb;->Q:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/loc/cb;->J:I

    sget v1, Lcom/loc/cb;->P:I

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/loc/dh;->c()D

    move-result-wide v0

    sget v2, Lcom/loc/cb;->L:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    return v4

    :cond_0
    return v4

    :cond_1
    return v5

    :cond_2
    sget v2, Lcom/loc/cb;->M:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    return v5

    :cond_3
    invoke-virtual {p1}, Lcom/loc/dh;->b()D

    move-result-wide v0

    sget v2, Lcom/loc/cb;->N:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_4

    return v4

    :cond_4
    sget v2, Lcom/loc/cb;->O:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    return v5

    :cond_5
    sget v0, Lcom/loc/cb;->S:I

    if-ge p2, v0, :cond_6

    sget v0, Lcom/loc/cb;->R:I

    if-le p2, v0, :cond_7

    iget-object v0, p0, Lcom/loc/cb;->I:Ljava/util/HashMap;

    if-nez v0, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_6
    return v4

    :cond_7
    return v5

    :cond_8
    iget-object v0, p0, Lcom/loc/cb;->I:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/loc/cb;->a(Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/HashMap;)I
    .locals 12

    .prologue
    iget v0, p0, Lcom/loc/cb;->G:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move v1, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v5, v0, [D

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v6, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-wide v2, v5, v1

    int-to-double v8, v6

    div-double/2addr v2, v8

    aput-wide v2, v5, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget-wide v2, v5, v1

    int-to-double v6, v6

    div-double/2addr v2, v6

    aput-wide v2, v5, v0

    const/4 v0, 0x0

    aget-wide v2, v5, v0

    const/4 v0, 0x1

    aget-wide v6, v5, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_6

    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v8, 0x0

    mul-double/2addr v2, v2

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v4, v8

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v1, "%d,%d,%d,%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    sget v2, Lcom/loc/cb;->U:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/loc/cb;->a(Ljava/util/List;)[D

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-wide v8, v0, v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    aput-wide v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-wide v8, v0, v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    aput-wide v8, v0, v7

    const/4 v1, 0x0

    const/4 v7, 0x0

    aget-wide v8, v5, v7

    const/4 v7, 0x0

    aget-wide v10, v0, v7

    add-double/2addr v8, v10

    aput-wide v8, v5, v1

    const/4 v1, 0x1

    const/4 v7, 0x1

    aget-wide v8, v5, v7

    const/4 v7, 0x1

    aget-wide v10, v0, v7

    add-double/2addr v8, v10

    aput-wide v8, v5, v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_7

    const-wide v0, 0x4070e00000000000L    # 270.0

    goto/16 :goto_2

    :cond_7
    const-wide/16 v0, 0x0

    goto/16 :goto_2

    :cond_8
    div-double v0, v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    sget v2, Lcom/loc/cb;->V:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic a(Lcom/loc/cb;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/loc/cb;->F:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/cb;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/loc/cb;->A:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/cb;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/cb;
    .locals 2

    sget-object v0, Lcom/loc/cb;->j:Lcom/loc/cb;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/loc/cb;->j:Lcom/loc/cb;

    return-object v0

    :cond_0
    sget-object v1, Lcom/loc/cb;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/cb;->j:Lcom/loc/cb;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/loc/cb;

    invoke-direct {v0, p0}, Lcom/loc/cb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/cb;->j:Lcom/loc/cb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/cb;Lcom/loc/cw;)Lcom/loc/cw;
    .locals 0

    iput-object p1, p0, Lcom/loc/cb;->z:Lcom/loc/cw;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/cb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "V1.0.0r"

    return-object v0

    :cond_1
    const-string/jumbo v0, "COL.15.0929r"

    return-object v0
.end method

.method static synthetic a(Lcom/loc/cb;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/loc/cb;->I:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/cb;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/cb;->o()V

    return-void
.end method

.method static synthetic a(Lcom/loc/cb;Landroid/location/Location;IJ)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/loc/cb;->r:Lcom/loc/cz;

    invoke-virtual {v0, p1}, Lcom/loc/cz;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/loc/cb;->r:Lcom/loc/cz;

    invoke-virtual {v1, p1}, Lcom/loc/cz;->b(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_5

    if-nez v1, :cond_6

    :cond_0
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/loc/cb;->w:Lcom/loc/cc;

    iget-object v1, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    iget v0, p0, Lcom/loc/cb;->K:I

    int-to-byte v3, v0

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/loc/cc;->a(Landroid/location/Location;Lcom/loc/cl;IBJZ)Lcom/loc/ca;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_3
    if-nez v1, :cond_7

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    if-nez v0, :cond_a

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/loc/cb;->r:Lcom/loc/cz;

    iget-object v1, v1, Lcom/loc/cz;->b:Lcom/loc/da;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, v1, Lcom/loc/da;->b:Landroid/location/Location;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/loc/cb;->r:Lcom/loc/cz;

    iget-object v2, v2, Lcom/loc/cz;->a:Lcom/loc/dd;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, v2, Lcom/loc/dd;->b:Landroid/location/Location;

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :cond_6
    const/4 v2, 0x2

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-virtual {v0}, Lcom/loc/cl;->m()Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v3, :cond_9

    :cond_8
    :goto_5
    invoke-virtual {v1}, Lcom/loc/ca;->a()[B

    move-result-object v1

    iget-object v3, p0, Lcom/loc/cb;->s:Lcom/loc/df;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lcom/loc/df;->a(J[B)V

    goto :goto_4

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/loc/cb;->w:Lcom/loc/cc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    const-string/jumbo v1, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v0, "get_sensor"

    const-string/jumbo v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_6
    return-void

    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/loc/cb;->w:Lcom/loc/cc;

    iget-object v1, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    iget v0, p0, Lcom/loc/cb;->K:I

    int-to-byte v3, v0

    const/4 v0, 0x0

    const/4 v6, 0x1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/loc/cc;->a(Landroid/location/Location;Lcom/loc/cl;IBJZ)Lcom/loc/ca;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-virtual {v0}, Lcom/loc/cl;->m()Ljava/util/List;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v2, :cond_e

    :cond_d
    :goto_8
    invoke-virtual {v1}, Lcom/loc/ca;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/cb;->s:Lcom/loc/df;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v1}, Lcom/loc/df;->a(J[B)V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "get_sensor"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_7

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_8
.end method

.method private a(Ljava/util/List;)[D
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v1, v12, [D

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    aget-wide v2, v1, v10

    int-to-double v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v10

    aget-wide v2, v1, v11

    int-to-double v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v11

    return-object v1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v3, v4, v3

    float-to-double v4, v3

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v0

    float-to-double v6, v0

    new-array v0, v12, [D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v0, v11

    aget-wide v4, v1, v10

    aget-wide v6, v0, v10

    add-double/2addr v4, v6

    aput-wide v4, v1, v10

    aget-wide v4, v1, v11

    aget-wide v6, v0, v11

    add-double/2addr v4, v6

    aput-wide v4, v1, v11

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/cb;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/cb;->H:I

    return v0
.end method

.method static synthetic b(Lcom/loc/cb;Ljava/util/HashMap;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/cb;->a(Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/loc/cb;)Lcom/loc/cy;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    return-object v0
.end method

.method static synthetic c(Lcom/loc/cb;I)I
    .locals 0

    iput p1, p0, Lcom/loc/cb;->l:I

    return p1
.end method

.method static synthetic c(Lcom/loc/cb;)Lcom/loc/cw;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->z:Lcom/loc/cw;

    return-object v0
.end method

.method static synthetic d(Lcom/loc/cb;I)I
    .locals 0

    iput p1, p0, Lcom/loc/cb;->J:I

    return p1
.end method

.method static synthetic d(Lcom/loc/cb;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->p:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic e(Lcom/loc/cb;I)I
    .locals 0

    iput p1, p0, Lcom/loc/cb;->K:I

    return p1
.end method

.method static synthetic e(Lcom/loc/cb;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->C:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic f(Lcom/loc/cb;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->F:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic g(Lcom/loc/cb;)I
    .locals 2

    iget v0, p0, Lcom/loc/cb;->H:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/cb;->H:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcom/loc/cb;->e:I

    return v0
.end method

.method static synthetic h(Lcom/loc/cb;)I
    .locals 1

    iget v0, p0, Lcom/loc/cb;->l:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcom/loc/cb;->h:I

    return v0
.end method

.method static synthetic i(Lcom/loc/cb;)Lcom/loc/cl;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    return-object v0
.end method

.method static synthetic j()I
    .locals 1

    sget v0, Lcom/loc/cb;->d:I

    return v0
.end method

.method static synthetic j(Lcom/loc/cb;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->I:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k()I
    .locals 1

    sget v0, Lcom/loc/cb;->g:I

    return v0
.end method

.method static synthetic k(Lcom/loc/cb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/loc/cb;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l()I
    .locals 1

    sget v0, Lcom/loc/cb;->f:I

    return v0
.end method

.method static synthetic l(Lcom/loc/cb;)I
    .locals 1

    iget v0, p0, Lcom/loc/cb;->H:I

    return v0
.end method

.method static synthetic m()I
    .locals 1

    sget v0, Lcom/loc/cb;->c:I

    return v0
.end method

.method static synthetic m(Lcom/loc/cb;)I
    .locals 1

    iget v0, p0, Lcom/loc/cb;->K:I

    return v0
.end method

.method static synthetic n()I
    .locals 1

    sget v0, Lcom/loc/cb;->T:I

    return v0
.end method

.method private o()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    invoke-virtual {v0}, Lcom/loc/cy;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/loc/cb;->m:I

    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    invoke-virtual {v0}, Lcom/loc/cy;->c()I

    move-result v0

    iput v0, p0, Lcom/loc/cb;->n:I

    iget-object v0, p0, Lcom/loc/cb;->r:Lcom/loc/cz;

    iget v0, p0, Lcom/loc/cb;->m:I

    iget v0, p0, Lcom/loc/cb;->n:I

    invoke-static {}, Lcom/loc/cz;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v4, Lcom/loc/cl;->b:Z

    iget-boolean v0, p0, Lcom/loc/cb;->k:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/loc/cb;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sput-boolean v4, Lcom/loc/cb;->b:Z

    iget-object v1, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cb;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cb;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/loc/cb;->p:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/cb;->C:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    if-nez v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    if-nez v1, :cond_4

    :goto_1
    new-instance v1, Lcom/loc/cu;

    invoke-direct {v1, p0, v0}, Lcom/loc/cu;-><init>(Lcom/loc/cb;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-virtual {v0}, Lcom/loc/cl;->a()V

    sput-boolean v4, Lcom/loc/cb;->a:Z

    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v3, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v3, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    goto :goto_1
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/loc/cb;->t:Lcom/loc/ci;

    invoke-virtual {v0, p1}, Lcom/loc/ci;->a(I)V

    return-void

    :cond_1
    const/16 v0, 0x2220

    if-eq p1, v0, :cond_0

    const/16 v0, 0x300

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid Size! must be COLLECTOR_SMALL_SIZE or COLLECTOR_BIG_SIZE or COLLECTOR_MEDIUM_SIZE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/loc/ch;Ljava/lang/String;)V
    .locals 4

    .prologue
    sget-boolean v0, Lcom/loc/cl;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    invoke-virtual {v0, p2}, Lcom/loc/cy;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/loc/ch;->a()[B

    move-result-object v2

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/loc/ch;->a(Z)V

    iget-object v0, p0, Lcom/loc/cb;->u:Lcom/loc/de;

    invoke-virtual {v0, p1}, Lcom/loc/de;->a(Lcom/loc/ch;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    iget-object v3, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    invoke-virtual {v3}, Lcom/loc/cy;->f()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/loc/cy;->b(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    iget-object v3, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    invoke-virtual {v3}, Lcom/loc/cy;->e()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/loc/cy;->a(I)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-boolean v3, Lcom/loc/cl;->b:Z

    iput-object v2, p0, Lcom/loc/cb;->A:Landroid/os/Handler;

    sput-boolean v3, Lcom/loc/cl;->c:Z

    iget-boolean v0, p0, Lcom/loc/cb;->k:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/loc/cb;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/cb;->E:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/loc/cb;->p:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/cb;->z:Lcom/loc/cw;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/loc/cb;->p:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/cb;->z:Lcom/loc/cw;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    iput-object v2, p0, Lcom/loc/cb;->z:Lcom/loc/cw;

    iget-object v0, p0, Lcom/loc/cb;->p:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/cb;->C:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    if-nez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    if-nez v0, :cond_6

    :goto_3
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-virtual {v0}, Lcom/loc/cl;->b()V

    sput-boolean v3, Lcom/loc/cb;->a:Z

    return-void

    :cond_2
    return-void

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/cb;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/loc/cb;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/cb;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-virtual {v0}, Lcom/loc/cl;->v()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/loc/cb;->y:Landroid/os/Looper;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/loc/cb;->x:Ljava/lang/Thread;

    goto :goto_3
.end method

.method public b(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-virtual {v0, p1}, Lcom/loc/cl;->a(I)V

    return-void

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/loc/cb;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/cb;->b()V

    return-void

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/loc/cb;->a:Z

    return v0
.end method

.method public e()Lcom/loc/ch;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cb;->u:Lcom/loc/de;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/cb;->f()Z

    iget-object v0, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    invoke-virtual {v0}, Lcom/loc/cy;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/loc/cl;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/cb;->u:Lcom/loc/de;

    iget-object v1, p0, Lcom/loc/cb;->v:Lcom/loc/cy;

    invoke-virtual {v1}, Lcom/loc/cy;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loc/de;->a(I)Lcom/loc/ch;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    return-object v1

    :cond_2
    return-object v1
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/loc/cb;->q:Lcom/loc/cl;

    invoke-virtual {v0}, Lcom/loc/cl;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/loc/cb;->t:Lcom/loc/ci;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/loc/ci;->b(J)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/loc/cb;->u:Lcom/loc/de;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/loc/cb;->u:Lcom/loc/de;

    invoke-virtual {v0}, Lcom/loc/de;->a()I

    move-result v0

    return v0
.end method
