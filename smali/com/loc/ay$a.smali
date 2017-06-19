.class Lcom/loc/ay$a;
.super Ljava/lang/Object;
.source "MPos.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/loc/ay$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ay;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/ay$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/ay$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:D

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/loc/ay;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    iput-object p1, p0, Lcom/loc/ay$a;->a:Lcom/loc/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ay$a;->b:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ay$a;->c:Ljava/util/ArrayList;

    .line 103
    iput-wide v2, p0, Lcom/loc/ay$a;->d:D

    const-string/jumbo v0, ""

    .line 104
    iput-object v0, p0, Lcom/loc/ay$a;->e:Ljava/lang/String;

    .line 107
    iput-wide v2, p0, Lcom/loc/ay$a;->d:D

    const-string/jumbo v0, ""

    .line 108
    iput-object v0, p0, Lcom/loc/ay$a;->e:Ljava/lang/String;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/loc/ay$a;D)D
    .locals 1

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/loc/ay$a;->d:D

    return-wide p1
.end method

.method static synthetic b(Lcom/loc/ay$a;)D
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/loc/ay$a;->d:D

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/loc/ay$a;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 115
    iget-wide v0, p1, Lcom/loc/ay$a;->d:D

    iget-wide v2, p0, Lcom/loc/ay$a;->d:D

    sub-double/2addr v0, v2

    .line 116
    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    .line 120
    iget-object v0, p0, Lcom/loc/ay$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v4, v0

    const-wide/16 v0, 0x0

    .line 122
    iget-object v2, p0, Lcom/loc/ay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    mul-double v0, v2, v10

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/loc/ay$a;->d:D

    .line 126
    iget-wide v0, p0, Lcom/loc/ay$a;->d:D

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    add-double/2addr v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/loc/ay$a;->d:D

    .line 127
    return-void

    .line 122
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ay$c;

    .line 123
    iget v0, v0, Lcom/loc/ay$c;->e:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    add-double/2addr v0, v2

    move-wide v2, v0

    .line 124
    goto :goto_0

    :cond_1
    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 123
    goto :goto_1
.end method

.method public a(Lcom/loc/ay$c;)V
    .locals 2

    .prologue
    .line 130
    iget v0, p1, Lcom/loc/ay$c;->e:I

    if-eqz v0, :cond_0

    .line 132
    iget v0, p1, Lcom/loc/ay$c;->e:I

    if-gtz v0, :cond_1

    :goto_0
    const-string/jumbo v0, "0"

    .line 135
    iget-object v1, p0, Lcom/loc/ay$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    :goto_1
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/loc/ay$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/loc/ay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p1, Lcom/loc/ay$c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ay$a;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Lcom/loc/ay$c;
    .locals 13

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 151
    iget-object v6, p0, Lcom/loc/ay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v10, 0x3

    .line 152
    :goto_0
    iget-object v6, p0, Lcom/loc/ay$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    iget-object v0, p0, Lcom/loc/ay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    .line 203
    return-object v0

    :cond_0
    const/4 v10, 0x0

    .line 151
    goto :goto_0

    .line 153
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v6, p0, Lcom/loc/ay$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v8, v4

    move-wide v4, v0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 161
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 164
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 166
    :goto_2
    iget-object v1, p0, Lcom/loc/ay$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    const/16 v1, 0x1f4

    .line 168
    if-gt v0, v1, :cond_5

    const/16 v1, 0x1e

    .line 170
    if-lt v0, v1, :cond_6

    move v6, v0

    .line 174
    :goto_3
    div-double/2addr v2, v4

    .line 175
    div-double v4, v8, v4

    .line 176
    new-instance v0, Lcom/loc/ay$c;

    iget-object v1, p0, Lcom/loc/ay$a;->a:Lcom/loc/ay;

    iget-object v7, p0, Lcom/loc/ay$a;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/ay$a;->d:D

    invoke-direct/range {v0 .. v10}, Lcom/loc/ay$c;-><init>(Lcom/loc/ay;DDILjava/lang/String;DI)V

    .line 177
    return-object v0

    .line 154
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ay$c;

    .line 155
    iget v1, v0, Lcom/loc/ay$c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-wide v6, v0, Lcom/loc/ay$c;->b:D

    add-double/2addr v6, v8

    .line 157
    iget-wide v0, v0, Lcom/loc/ay$c;->a:D

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 158
    add-double/2addr v0, v4

    move-wide v4, v0

    move-wide v8, v6

    .line 159
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 162
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_4
    const/16 v6, 0x1f4

    .line 167
    goto :goto_3

    :cond_5
    const/16 v6, 0x12c

    .line 169
    goto :goto_3

    :cond_6
    const/16 v6, 0x1e

    .line 171
    goto :goto_3

    .line 179
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/ay$c;

    .line 182
    iget v0, v6, Lcom/loc/ay$c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 190
    iget v0, v6, Lcom/loc/ay$c;->c:I

    if-gtz v0, :cond_9

    move v0, v7

    .line 193
    :goto_4
    iget-wide v2, v6, Lcom/loc/ay$c;->b:D

    const-wide/16 v4, 0x0

    add-double/2addr v4, v2

    .line 194
    iget-wide v2, v6, Lcom/loc/ay$c;->a:D

    const-wide/16 v6, 0x0

    add-double/2addr v2, v6

    .line 195
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v1, 0x1388

    .line 196
    if-gt v0, v1, :cond_a

    move v6, v0

    .line 199
    :goto_5
    div-double/2addr v2, v8

    .line 200
    div-double/2addr v4, v8

    .line 201
    new-instance v0, Lcom/loc/ay$c;

    iget-object v1, p0, Lcom/loc/ay$a;->a:Lcom/loc/ay;

    iget-object v7, p0, Lcom/loc/ay$a;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/ay$a;->d:D

    const/4 v10, 0x2

    invoke-direct/range {v0 .. v10}, Lcom/loc/ay$c;-><init>(Lcom/loc/ay;DDILjava/lang/String;DI)V

    return-object v0

    .line 186
    :cond_8
    iget-wide v2, v6, Lcom/loc/ay$c;->a:D

    .line 187
    iget-wide v4, v6, Lcom/loc/ay$c;->b:D

    .line 188
    new-instance v0, Lcom/loc/ay$c;

    iget-object v1, p0, Lcom/loc/ay$a;->a:Lcom/loc/ay;

    iget v6, v6, Lcom/loc/ay$c;->c:I

    iget-object v7, p0, Lcom/loc/ay$a;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/loc/ay$a;->d:D

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/loc/ay$c;-><init>(Lcom/loc/ay;DDILjava/lang/String;DI)V

    return-object v0

    .line 191
    :cond_9
    iget v0, v6, Lcom/loc/ay$c;->c:I

    goto :goto_4

    :cond_a
    const/16 v6, 0x1388

    .line 197
    goto :goto_5
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 100
    check-cast p1, Lcom/loc/ay$a;

    invoke-virtual {p0, p1}, Lcom/loc/ay$a;->a(Lcom/loc/ay$a;)I

    move-result v0

    return v0
.end method
