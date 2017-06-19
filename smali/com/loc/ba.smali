.class public Lcom/loc/ba;
.super Ljava/lang/Object;
.source "LocFilter.java"


# static fields
.field private static a:Lcom/loc/ba;


# instance fields
.field private b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/loc/ba;->a:Lcom/loc/ba;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 24
    iput-wide v2, p0, Lcom/loc/ba;->c:J

    .line 25
    iput-wide v2, p0, Lcom/loc/ba;->d:J

    .line 29
    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/ba;
    .locals 2

    .prologue
    const-class v1, Lcom/loc/ba;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/loc/ba;->a:Lcom/loc/ba;

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    sget-object v0, Lcom/loc/ba;->a:Lcom/loc/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/ba;

    invoke-direct {v0}, Lcom/loc/ba;-><init>()V

    sput-object v0, Lcom/loc/ba;->a:Lcom/loc/ba;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 2

    .prologue
    .line 219
    invoke-static {p1}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-object p1

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x2

    .line 221
    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 12

    .prologue
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    .line 67
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 68
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    monitor-exit p0

    .line 70
    return-object p1

    .line 73
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 79
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A()I

    move-result v0

    iget-object v1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 98
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;Lcom/autonavi/aps/amapapi/model/AmapLoc;)F

    move-result v1

    .line 112
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v2

    .line 113
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v3

    .line 114
    sub-float v4, v3, v2

    .line 115
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v6

    .line 116
    iget-wide v8, p0, Lcom/loc/ba;->c:J

    sub-long v8, v6, v8

    const/high16 v0, 0x42ca0000    # 101.0f

    .line 119
    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_5

    :cond_4
    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_d

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_d

    .line 120
    :cond_5
    iget-wide v0, p0, Lcom/loc/ba;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 121
    iput-wide v6, p0, Lcom/loc/ba;->d:J

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/ba;->c(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 135
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 76
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    .line 77
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 78
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    .line 87
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 88
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    .line 106
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 107
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 119
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_b
    :try_start_6
    iget-wide v0, p0, Lcom/loc/ba;->d:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_6

    .line 123
    iput-wide v6, p0, Lcom/loc/ba;->c:J

    .line 124
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    .line 125
    iput-wide v0, p0, Lcom/loc/ba;->d:J

    .line 129
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    :cond_d
    const/high16 v0, 0x42c80000    # 100.0f

    .line 137
    cmpg-float v0, v3, v0

    if-gez v0, :cond_e

    const v0, 0x43958000    # 299.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_e

    .line 140
    :try_start_7
    iput-wide v6, p0, Lcom/loc/ba;->c:J

    .line 141
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/loc/ba;->d:J

    .line 143
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_e
    const v0, 0x43958000    # 299.0f

    .line 145
    cmpg-float v0, v3, v0

    if-gtz v0, :cond_f

    const-wide/16 v10, 0x0

    .line 146
    :try_start_8
    iput-wide v10, p0, Lcom/loc/ba;->d:J

    :cond_f
    const/high16 v0, 0x41200000    # 10.0f

    .line 153
    cmpg-float v0, v1, v0

    if-gez v0, :cond_12

    float-to-double v0, v1

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v10

    if-lez v0, :cond_12

    const/high16 v0, -0x3c6a0000    # -300.0f

    .line 154
    cmpl-float v0, v4, v0

    if-ltz v0, :cond_10

    .line 161
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/ba;->c(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 162
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    .line 165
    :cond_10
    div-float v0, v2, v3

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    .line 169
    :try_start_9
    iput-wide v6, p0, Lcom/loc/ba;->c:J

    .line 170
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 171
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v0

    .line 179
    :cond_11
    :try_start_a
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/ba;->c(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 180
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_12
    const/high16 v0, 0x43960000    # 300.0f

    .line 191
    cmpl-float v0, v4, v0

    if-ltz v0, :cond_15

    const-wide/16 v0, 0x7530

    .line 195
    cmp-long v0, v8, v0

    if-gez v0, :cond_13

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_14

    .line 198
    :try_start_b
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    .line 199
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 200
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    .line 195
    :cond_13
    const/4 v0, 0x0

    goto :goto_2

    .line 207
    :cond_14
    :try_start_c
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0, v0}, Lcom/loc/ba;->c(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 208
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    .line 213
    :cond_15
    :try_start_d
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    .line 214
    iput-object p1, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 215
    iget-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 0

    .prologue
    .line 233
    return-object p1
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .line 43
    :try_start_0
    iput-object v0, p0, Lcom/loc/ba;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/loc/ba;->c:J

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/loc/ba;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 46
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
