.class Lcom/loc/br$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field final synthetic b:Lcom/loc/br;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/loc/br;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lcom/loc/br$a;->b:Lcom/loc/br;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 165
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iput-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v0, ""

    .line 166
    iput-object v0, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/br;Lcom/loc/bs;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/loc/br$a;-><init>(Lcom/loc/br;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 170
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-string/jumbo v0, "retype"

    .line 182
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "rdesc"

    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "adcode"

    .line 186
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "citycode"

    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "radius"

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "cenx"

    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "ceny"

    .line 208
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "desc"

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "country"

    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "province"

    .line 221
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "city"

    .line 223
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "district"

    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "road"

    .line 227
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "street"

    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "number"

    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "poiname"

    .line 233
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "BIZ"

    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "cens"

    .line 246
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "pid"

    .line 248
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "flr"

    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "coord"

    .line 252
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "mcell"

    .line 257
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "gkeyloc"

    .line 259
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gkeygeo"

    .line 261
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "apiTime"

    .line 263
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 197
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const v1, 0x45733000    # 3891.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    goto :goto_0

    .line 201
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 206
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    goto :goto_0

    .line 210
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 216
    :catch_2
    move-exception v0

    .line 215
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    goto :goto_0

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_9
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_a
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_b
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_c
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_d
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_e
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_f
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_10
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_11
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 240
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "BIZ"

    iget-object v2, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 245
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 237
    :cond_12
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 247
    :cond_13
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_14
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_15
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_16
    sget-object v0, Lcom/loc/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 256
    :goto_2
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_17
    iget-object v0, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    sput-object v0, Lcom/loc/e;->g:Ljava/lang/String;

    goto :goto_2

    .line 258
    :cond_18
    iget-object v0, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_19
    iget-object v0, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lcom/loc/br$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 176
    iput-object v0, p0, Lcom/loc/br$a;->c:Ljava/lang/String;

    .line 177
    return-void
.end method
