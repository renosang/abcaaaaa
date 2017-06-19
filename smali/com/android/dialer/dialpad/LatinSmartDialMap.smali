.class public Lcom/android/dialer/dialpad/LatinSmartDialMap;
.super Ljava/lang/Object;
.source "LatinSmartDialMap.java"

# interfaces
.implements Lcom/android/dialer/dialpad/SmartDialMap;


# static fields
.field private static final LATIN_LETTERS_TO_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/dialpad/LatinSmartDialMap;->LATIN_LETTERS_TO_DIGITS:[C

    .line 3
    return-void

    .line 5
    :array_0
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialpadIndex(C)B
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 396
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 397
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    return v0

    .line 398
    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 399
    sget-object v0, Lcom/android/dialer/dialpad/LatinSmartDialMap;->LATIN_LETTERS_TO_DIGITS:[C

    add-int/lit8 v1, p1, -0x61

    aget-char v0, v0, v1

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    return v0

    .line 401
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getDialpadNumericCharacter(C)C
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 407
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_0

    .line 408
    sget-object v0, Lcom/android/dialer/dialpad/LatinSmartDialMap;->LATIN_LETTERS_TO_DIGITS:[C

    add-int/lit8 v1, p1, -0x61

    aget-char v0, v0, v1

    return v0

    .line 410
    :cond_0
    return p1
.end method

.method public isValidDialpadAlphabeticChar(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 18
    const/16 v1, 0x61

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidDialpadCharacter(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/LatinSmartDialMap;->isValidDialpadAlphabeticChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/LatinSmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValidDialpadNumericChar(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 23
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public normalizeCharacter(C)C
    .locals 5
    .param p1, "ch"    # C

    .prologue
    const/16 v4, 0x65

    const/16 v3, 0x69

    const/16 v2, 0x61

    const/16 v1, 0x75

    const/16 v0, 0x6f

    .line 50
    packed-switch p1, :pswitch_data_0

    .line 390
    :pswitch_0
    return p1

    .line 51
    :pswitch_1
    return v2

    .line 52
    :pswitch_2
    return v2

    .line 53
    :pswitch_3
    return v2

    .line 54
    :pswitch_4
    return v2

    .line 55
    :pswitch_5
    return v2

    .line 56
    :pswitch_6
    return v2

    .line 57
    :pswitch_7
    const/16 v0, 0x63

    return v0

    .line 58
    :pswitch_8
    return v4

    .line 59
    :pswitch_9
    return v4

    .line 60
    :pswitch_a
    return v4

    .line 61
    :pswitch_b
    return v4

    .line 62
    :pswitch_c
    return v3

    .line 63
    :pswitch_d
    return v3

    .line 64
    :pswitch_e
    return v3

    .line 65
    :pswitch_f
    return v3

    .line 66
    :pswitch_10
    const/16 v0, 0x64

    return v0

    .line 67
    :pswitch_11
    const/16 v0, 0x6e

    return v0

    .line 68
    :pswitch_12
    return v0

    .line 69
    :pswitch_13
    return v0

    .line 70
    :pswitch_14
    return v0

    .line 71
    :pswitch_15
    return v0

    .line 72
    :pswitch_16
    return v0

    .line 73
    :pswitch_17
    const/16 v0, 0x78

    return v0

    .line 74
    :pswitch_18
    return v0

    .line 75
    :pswitch_19
    return v1

    .line 76
    :pswitch_1a
    return v1

    .line 77
    :pswitch_1b
    return v1

    .line 78
    :pswitch_1c
    return v1

    .line 79
    :pswitch_1d
    return v1

    .line 80
    :pswitch_1e
    return v2

    .line 81
    :pswitch_1f
    return v2

    .line 82
    :pswitch_20
    return v2

    .line 83
    :pswitch_21
    return v2

    .line 84
    :pswitch_22
    return v2

    .line 85
    :pswitch_23
    return v2

    .line 86
    :pswitch_24
    const/16 v0, 0x63

    return v0

    .line 87
    :pswitch_25
    return v4

    .line 88
    :pswitch_26
    return v4

    .line 89
    :pswitch_27
    return v4

    .line 90
    :pswitch_28
    return v4

    .line 91
    :pswitch_29
    return v3

    .line 92
    :pswitch_2a
    return v3

    .line 93
    :pswitch_2b
    return v3

    .line 94
    :pswitch_2c
    return v3

    .line 95
    :pswitch_2d
    const/16 v0, 0x64

    return v0

    .line 96
    :pswitch_2e
    const/16 v0, 0x6e

    return v0

    .line 97
    :pswitch_2f
    return v0

    .line 98
    :pswitch_30
    return v0

    .line 99
    :pswitch_31
    return v0

    .line 100
    :pswitch_32
    return v0

    .line 101
    :pswitch_33
    return v0

    .line 102
    :pswitch_34
    return v0

    .line 103
    :pswitch_35
    return v1

    .line 104
    :pswitch_36
    return v1

    .line 105
    :pswitch_37
    return v1

    .line 106
    :pswitch_38
    return v1

    .line 107
    :pswitch_39
    const/16 v0, 0x79

    return v0

    .line 108
    :pswitch_3a
    const/16 v0, 0x79

    return v0

    .line 109
    :pswitch_3b
    return v2

    .line 110
    :pswitch_3c
    return v2

    .line 111
    :pswitch_3d
    return v2

    .line 112
    :pswitch_3e
    return v2

    .line 113
    :pswitch_3f
    return v2

    .line 114
    :pswitch_40
    return v2

    .line 115
    :pswitch_41
    const/16 v0, 0x63

    return v0

    .line 116
    :pswitch_42
    const/16 v0, 0x63

    return v0

    .line 117
    :pswitch_43
    const/16 v0, 0x63

    return v0

    .line 118
    :pswitch_44
    const/16 v0, 0x63

    return v0

    .line 119
    :pswitch_45
    const/16 v0, 0x63

    return v0

    .line 120
    :pswitch_46
    const/16 v0, 0x63

    return v0

    .line 121
    :pswitch_47
    const/16 v0, 0x63

    return v0

    .line 122
    :pswitch_48
    const/16 v0, 0x63

    return v0

    .line 123
    :pswitch_49
    const/16 v0, 0x64

    return v0

    .line 124
    :pswitch_4a
    const/16 v0, 0x64

    return v0

    .line 125
    :pswitch_4b
    const/16 v0, 0x64

    return v0

    .line 126
    :pswitch_4c
    const/16 v0, 0x64

    return v0

    .line 127
    :pswitch_4d
    return v4

    .line 128
    :pswitch_4e
    return v4

    .line 129
    :pswitch_4f
    return v4

    .line 130
    :pswitch_50
    return v4

    .line 131
    :pswitch_51
    return v4

    .line 132
    :pswitch_52
    return v4

    .line 133
    :pswitch_53
    return v4

    .line 134
    :pswitch_54
    return v4

    .line 135
    :pswitch_55
    return v4

    .line 136
    :pswitch_56
    return v4

    .line 137
    :pswitch_57
    const/16 v0, 0x67

    return v0

    .line 138
    :pswitch_58
    const/16 v0, 0x67

    return v0

    .line 139
    :pswitch_59
    const/16 v0, 0x67

    return v0

    .line 140
    :pswitch_5a
    const/16 v0, 0x67

    return v0

    .line 141
    :pswitch_5b
    const/16 v0, 0x67

    return v0

    .line 142
    :pswitch_5c
    const/16 v0, 0x67

    return v0

    .line 143
    :pswitch_5d
    const/16 v0, 0x67

    return v0

    .line 144
    :pswitch_5e
    const/16 v0, 0x67

    return v0

    .line 145
    :pswitch_5f
    const/16 v0, 0x68

    return v0

    .line 146
    :pswitch_60
    const/16 v0, 0x68

    return v0

    .line 147
    :pswitch_61
    const/16 v0, 0x68

    return v0

    .line 148
    :pswitch_62
    const/16 v0, 0x68

    return v0

    .line 149
    :pswitch_63
    return v3

    .line 150
    :pswitch_64
    return v3

    .line 151
    :pswitch_65
    return v3

    .line 152
    :pswitch_66
    return v3

    .line 153
    :pswitch_67
    return v3

    .line 154
    :pswitch_68
    return v3

    .line 155
    :pswitch_69
    return v3

    .line 156
    :pswitch_6a
    return v3

    .line 157
    :pswitch_6b
    return v3

    .line 158
    :pswitch_6c
    return v3

    .line 159
    :pswitch_6d
    const/16 v0, 0x6a

    return v0

    .line 160
    :pswitch_6e
    const/16 v0, 0x6a

    return v0

    .line 161
    :pswitch_6f
    const/16 v0, 0x6b

    return v0

    .line 162
    :pswitch_70
    const/16 v0, 0x6b

    return v0

    .line 163
    :pswitch_71
    const/16 v0, 0x6b

    return v0

    .line 164
    :pswitch_72
    const/16 v0, 0x6c

    return v0

    .line 165
    :pswitch_73
    const/16 v0, 0x6c

    return v0

    .line 166
    :pswitch_74
    const/16 v0, 0x6c

    return v0

    .line 167
    :pswitch_75
    const/16 v0, 0x6c

    return v0

    .line 168
    :pswitch_76
    const/16 v0, 0x6c

    return v0

    .line 169
    :pswitch_77
    const/16 v0, 0x6c

    return v0

    .line 170
    :pswitch_78
    const/16 v0, 0x6c

    return v0

    .line 171
    :pswitch_79
    const/16 v0, 0x6c

    return v0

    .line 172
    :pswitch_7a
    const/16 v0, 0x6c

    return v0

    .line 173
    :pswitch_7b
    const/16 v0, 0x6c

    return v0

    .line 174
    :pswitch_7c
    const/16 v0, 0x6e

    return v0

    .line 175
    :pswitch_7d
    const/16 v0, 0x6e

    return v0

    .line 176
    :pswitch_7e
    const/16 v0, 0x6e

    return v0

    .line 177
    :pswitch_7f
    const/16 v0, 0x6e

    return v0

    .line 178
    :pswitch_80
    const/16 v0, 0x6e

    return v0

    .line 179
    :pswitch_81
    const/16 v0, 0x6e

    return v0

    .line 180
    :pswitch_82
    return v0

    .line 181
    :pswitch_83
    return v0

    .line 182
    :pswitch_84
    return v0

    .line 183
    :pswitch_85
    return v0

    .line 184
    :pswitch_86
    return v0

    .line 185
    :pswitch_87
    return v0

    .line 186
    :pswitch_88
    const/16 v0, 0x72

    return v0

    .line 187
    :pswitch_89
    const/16 v0, 0x72

    return v0

    .line 188
    :pswitch_8a
    const/16 v0, 0x72

    return v0

    .line 189
    :pswitch_8b
    const/16 v0, 0x72

    return v0

    .line 190
    :pswitch_8c
    const/16 v0, 0x72

    return v0

    .line 191
    :pswitch_8d
    const/16 v0, 0x72

    return v0

    .line 192
    :pswitch_8e
    const/16 v0, 0x73

    return v0

    .line 193
    :pswitch_8f
    const/16 v0, 0x73

    return v0

    .line 194
    :pswitch_90
    const/16 v0, 0x73

    return v0

    .line 195
    :pswitch_91
    const/16 v0, 0x73

    return v0

    .line 196
    :pswitch_92
    const/16 v0, 0x73

    return v0

    .line 197
    :pswitch_93
    const/16 v0, 0x73

    return v0

    .line 198
    :pswitch_94
    const/16 v0, 0x73

    return v0

    .line 199
    :pswitch_95
    const/16 v0, 0x73

    return v0

    .line 200
    :pswitch_96
    const/16 v0, 0x74

    return v0

    .line 201
    :pswitch_97
    const/16 v0, 0x74

    return v0

    .line 202
    :pswitch_98
    const/16 v0, 0x74

    return v0

    .line 203
    :pswitch_99
    const/16 v0, 0x74

    return v0

    .line 204
    :pswitch_9a
    const/16 v0, 0x74

    return v0

    .line 205
    :pswitch_9b
    const/16 v0, 0x74

    return v0

    .line 206
    :pswitch_9c
    return v1

    .line 207
    :pswitch_9d
    return v1

    .line 208
    :pswitch_9e
    return v1

    .line 209
    :pswitch_9f
    return v1

    .line 210
    :pswitch_a0
    return v1

    .line 211
    :pswitch_a1
    return v1

    .line 212
    :pswitch_a2
    return v1

    .line 213
    :pswitch_a3
    return v1

    .line 214
    :pswitch_a4
    return v1

    .line 215
    :pswitch_a5
    return v1

    .line 216
    :pswitch_a6
    return v1

    .line 217
    :pswitch_a7
    return v1

    .line 218
    :pswitch_a8
    const/16 v0, 0x77

    return v0

    .line 219
    :pswitch_a9
    const/16 v0, 0x77

    return v0

    .line 220
    :pswitch_aa
    const/16 v0, 0x79

    return v0

    .line 221
    :pswitch_ab
    const/16 v0, 0x79

    return v0

    .line 222
    :pswitch_ac
    const/16 v0, 0x79

    return v0

    .line 223
    :pswitch_ad
    const/16 v0, 0x7a

    return v0

    .line 224
    :pswitch_ae
    const/16 v0, 0x7a

    return v0

    .line 225
    :pswitch_af
    const/16 v0, 0x7a

    return v0

    .line 226
    :pswitch_b0
    const/16 v0, 0x7a

    return v0

    .line 227
    :pswitch_b1
    const/16 v0, 0x7a

    return v0

    .line 228
    :pswitch_b2
    const/16 v0, 0x7a

    return v0

    .line 229
    :pswitch_b3
    const/16 v0, 0x73

    return v0

    .line 230
    :pswitch_b4
    const/16 v0, 0x62

    return v0

    .line 231
    :pswitch_b5
    const/16 v0, 0x62

    return v0

    .line 232
    :pswitch_b6
    const/16 v0, 0x62

    return v0

    .line 233
    :pswitch_b7
    const/16 v0, 0x62

    return v0

    .line 234
    :pswitch_b8
    return v0

    .line 235
    :pswitch_b9
    const/16 v0, 0x63

    return v0

    .line 236
    :pswitch_ba
    const/16 v0, 0x63

    return v0

    .line 237
    :pswitch_bb
    const/16 v0, 0x64

    return v0

    .line 238
    :pswitch_bc
    const/16 v0, 0x64

    return v0

    .line 239
    :pswitch_bd
    const/16 v0, 0x64

    return v0

    .line 240
    :pswitch_be
    const/16 v0, 0x64

    return v0

    .line 241
    :pswitch_bf
    const/16 v0, 0x64

    return v0

    .line 242
    :pswitch_c0
    return v4

    .line 243
    :pswitch_c1
    const/16 v0, 0x66

    return v0

    .line 244
    :pswitch_c2
    const/16 v0, 0x66

    return v0

    .line 245
    :pswitch_c3
    const/16 v0, 0x67

    return v0

    .line 246
    :pswitch_c4
    const/16 v0, 0x67

    return v0

    .line 247
    :pswitch_c5
    return v3

    .line 248
    :pswitch_c6
    return v3

    .line 249
    :pswitch_c7
    const/16 v0, 0x6b

    return v0

    .line 250
    :pswitch_c8
    const/16 v0, 0x6b

    return v0

    .line 251
    :pswitch_c9
    const/16 v0, 0x6c

    return v0

    .line 252
    :pswitch_ca
    const/16 v0, 0x6c

    return v0

    .line 253
    :pswitch_cb
    const/16 v0, 0x77

    return v0

    .line 254
    :pswitch_cc
    const/16 v0, 0x6e

    return v0

    .line 255
    :pswitch_cd
    const/16 v0, 0x6e

    return v0

    .line 256
    :pswitch_ce
    return v0

    .line 257
    :pswitch_cf
    return v0

    .line 258
    :pswitch_d0
    return v0

    .line 259
    :pswitch_d1
    const/16 v0, 0x70

    return v0

    .line 260
    :pswitch_d2
    const/16 v0, 0x70

    return v0

    .line 261
    :pswitch_d3
    const/16 v0, 0x74

    return v0

    .line 262
    :pswitch_d4
    const/16 v0, 0x74

    return v0

    .line 263
    :pswitch_d5
    const/16 v0, 0x74

    return v0

    .line 264
    :pswitch_d6
    const/16 v0, 0x74

    return v0

    .line 265
    :pswitch_d7
    return v1

    .line 266
    :pswitch_d8
    return v1

    .line 267
    :pswitch_d9
    const/16 v0, 0x79

    return v0

    .line 268
    :pswitch_da
    const/16 v0, 0x76

    return v0

    .line 269
    :pswitch_db
    const/16 v0, 0x79

    return v0

    .line 270
    :pswitch_dc
    const/16 v0, 0x79

    return v0

    .line 271
    :pswitch_dd
    const/16 v0, 0x7a

    return v0

    .line 272
    :pswitch_de
    const/16 v0, 0x7a

    return v0

    .line 273
    :pswitch_df
    const/16 v0, 0x77

    return v0

    .line 274
    :pswitch_e0
    return v2

    .line 275
    :pswitch_e1
    return v2

    .line 276
    :pswitch_e2
    return v3

    .line 277
    :pswitch_e3
    return v3

    .line 278
    :pswitch_e4
    return v0

    .line 279
    :pswitch_e5
    return v0

    .line 280
    :pswitch_e6
    return v1

    .line 281
    :pswitch_e7
    return v1

    .line 282
    :pswitch_e8
    return v1

    .line 283
    :pswitch_e9
    return v1

    .line 284
    :pswitch_ea
    return v1

    .line 285
    :pswitch_eb
    return v1

    .line 286
    :pswitch_ec
    return v1

    .line 287
    :pswitch_ed
    return v1

    .line 288
    :pswitch_ee
    return v1

    .line 289
    :pswitch_ef
    return v1

    .line 290
    :pswitch_f0
    return v2

    .line 291
    :pswitch_f1
    return v2

    .line 292
    :pswitch_f2
    return v2

    .line 293
    :pswitch_f3
    return v2

    .line 294
    :pswitch_f4
    const/16 v0, 0x67

    return v0

    .line 295
    :pswitch_f5
    const/16 v0, 0x67

    return v0

    .line 296
    :pswitch_f6
    const/16 v0, 0x67

    return v0

    .line 297
    :pswitch_f7
    const/16 v0, 0x67

    return v0

    .line 298
    :pswitch_f8
    const/16 v0, 0x6b

    return v0

    .line 299
    :pswitch_f9
    const/16 v0, 0x6b

    return v0

    .line 300
    :pswitch_fa
    return v0

    .line 301
    :pswitch_fb
    return v0

    .line 302
    :pswitch_fc
    return v0

    .line 303
    :pswitch_fd
    return v0

    .line 304
    :pswitch_fe
    const/16 v0, 0x6a

    return v0

    .line 305
    :pswitch_ff
    const/16 v0, 0x64

    return v0

    .line 306
    :pswitch_100
    const/16 v0, 0x67

    return v0

    .line 307
    :pswitch_101
    const/16 v0, 0x67

    return v0

    .line 308
    :pswitch_102
    const/16 v0, 0x77

    return v0

    .line 309
    :pswitch_103
    const/16 v0, 0x6e

    return v0

    .line 310
    :pswitch_104
    const/16 v0, 0x6e

    return v0

    .line 311
    :pswitch_105
    return v2

    .line 312
    :pswitch_106
    return v2

    .line 313
    :pswitch_107
    return v0

    .line 314
    :pswitch_108
    return v0

    .line 315
    :pswitch_109
    return v2

    .line 316
    :pswitch_10a
    return v2

    .line 317
    :pswitch_10b
    return v2

    .line 318
    :pswitch_10c
    return v2

    .line 319
    :pswitch_10d
    return v4

    .line 320
    :pswitch_10e
    return v4

    .line 321
    :pswitch_10f
    return v4

    .line 322
    :pswitch_110
    return v4

    .line 323
    :pswitch_111
    return v3

    .line 324
    :pswitch_112
    return v3

    .line 325
    :pswitch_113
    return v3

    .line 326
    :pswitch_114
    return v3

    .line 327
    :pswitch_115
    return v0

    .line 328
    :pswitch_116
    return v0

    .line 329
    :pswitch_117
    return v0

    .line 330
    :pswitch_118
    return v0

    .line 331
    :pswitch_119
    const/16 v0, 0x72

    return v0

    .line 332
    :pswitch_11a
    const/16 v0, 0x72

    return v0

    .line 333
    :pswitch_11b
    const/16 v0, 0x72

    return v0

    .line 334
    :pswitch_11c
    const/16 v0, 0x72

    return v0

    .line 335
    :pswitch_11d
    return v1

    .line 336
    :pswitch_11e
    return v1

    .line 337
    :pswitch_11f
    return v1

    .line 338
    :pswitch_120
    return v1

    .line 339
    :pswitch_121
    const/16 v0, 0x73

    return v0

    .line 340
    :pswitch_122
    const/16 v0, 0x73

    return v0

    .line 341
    :pswitch_123
    const/16 v0, 0x74

    return v0

    .line 342
    :pswitch_124
    const/16 v0, 0x74

    return v0

    .line 343
    :pswitch_125
    const/16 v0, 0x79

    return v0

    .line 344
    :pswitch_126
    const/16 v0, 0x79

    return v0

    .line 345
    :pswitch_127
    const/16 v0, 0x68

    return v0

    .line 346
    :pswitch_128
    const/16 v0, 0x68

    return v0

    .line 347
    :pswitch_129
    const/16 v0, 0x7a

    return v0

    .line 348
    :pswitch_12a
    const/16 v0, 0x7a

    return v0

    .line 349
    :pswitch_12b
    return v2

    .line 350
    :pswitch_12c
    return v2

    .line 351
    :pswitch_12d
    return v4

    .line 352
    :pswitch_12e
    return v4

    .line 353
    :pswitch_12f
    return v0

    .line 354
    :pswitch_130
    return v0

    .line 355
    :pswitch_131
    return v0

    .line 356
    :pswitch_132
    return v0

    .line 357
    :pswitch_133
    return v0

    .line 358
    :pswitch_134
    return v0

    .line 359
    :pswitch_135
    return v0

    .line 360
    :pswitch_136
    return v0

    .line 361
    :pswitch_137
    const/16 v0, 0x79

    return v0

    .line 362
    :pswitch_138
    const/16 v0, 0x79

    return v0

    .line 363
    :pswitch_139
    return v2

    .line 364
    :pswitch_13a
    const/16 v0, 0x62

    return v0

    .line 365
    :pswitch_13b
    const/16 v0, 0x63

    return v0

    .line 366
    :pswitch_13c
    const/16 v0, 0x64

    return v0

    .line 367
    :pswitch_13d
    return v4

    .line 368
    :pswitch_13e
    const/16 v0, 0x66

    return v0

    .line 369
    :pswitch_13f
    const/16 v0, 0x67

    return v0

    .line 370
    :pswitch_140
    const/16 v0, 0x68

    return v0

    .line 371
    :pswitch_141
    return v3

    .line 372
    :pswitch_142
    const/16 v0, 0x6a

    return v0

    .line 373
    :pswitch_143
    const/16 v0, 0x6b

    return v0

    .line 374
    :pswitch_144
    const/16 v0, 0x6c

    return v0

    .line 375
    :pswitch_145
    const/16 v0, 0x6d

    return v0

    .line 376
    :pswitch_146
    const/16 v0, 0x6e

    return v0

    .line 377
    :pswitch_147
    return v0

    .line 378
    :pswitch_148
    const/16 v0, 0x70

    return v0

    .line 379
    :pswitch_149
    const/16 v0, 0x71

    return v0

    .line 380
    :pswitch_14a
    const/16 v0, 0x72

    return v0

    .line 381
    :pswitch_14b
    const/16 v0, 0x73

    return v0

    .line 382
    :pswitch_14c
    const/16 v0, 0x74

    return v0

    .line 383
    :pswitch_14d
    return v1

    .line 384
    :pswitch_14e
    const/16 v0, 0x76

    return v0

    .line 385
    :pswitch_14f
    const/16 v0, 0x77

    return v0

    .line 386
    :pswitch_150
    const/16 v0, 0x78

    return v0

    .line 387
    :pswitch_151
    const/16 v0, 0x79

    return v0

    .line 388
    :pswitch_152
    const/16 v0, 0x7a

    return v0

    .line 50
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_139
        :pswitch_13a
        :pswitch_13b
        :pswitch_13c
        :pswitch_13d
        :pswitch_13e
        :pswitch_13f
        :pswitch_140
        :pswitch_141
        :pswitch_142
        :pswitch_143
        :pswitch_144
        :pswitch_145
        :pswitch_146
        :pswitch_147
        :pswitch_148
        :pswitch_149
        :pswitch_14a
        :pswitch_14b
        :pswitch_14c
        :pswitch_14d
        :pswitch_14e
        :pswitch_14f
        :pswitch_150
        :pswitch_151
        :pswitch_152
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_0
        :pswitch_0
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_0
        :pswitch_0
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_0
        :pswitch_0
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_0
        :pswitch_0
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_0
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_0
        :pswitch_0
        :pswitch_d1
        :pswitch_d2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_dd
        :pswitch_de
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_df
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_e7
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_ef
        :pswitch_0
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_0
        :pswitch_0
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_fd
        :pswitch_0
        :pswitch_0
        :pswitch_fe
        :pswitch_0
        :pswitch_ff
        :pswitch_0
        :pswitch_100
        :pswitch_101
        :pswitch_0
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_105
        :pswitch_106
        :pswitch_0
        :pswitch_0
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_110
        :pswitch_111
        :pswitch_112
        :pswitch_113
        :pswitch_114
        :pswitch_115
        :pswitch_116
        :pswitch_117
        :pswitch_118
        :pswitch_119
        :pswitch_11a
        :pswitch_11b
        :pswitch_11c
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
        :pswitch_120
        :pswitch_121
        :pswitch_122
        :pswitch_123
        :pswitch_124
        :pswitch_125
        :pswitch_126
        :pswitch_127
        :pswitch_128
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_129
        :pswitch_12a
        :pswitch_12b
        :pswitch_12c
        :pswitch_12d
        :pswitch_12e
        :pswitch_12f
        :pswitch_130
        :pswitch_131
        :pswitch_132
        :pswitch_133
        :pswitch_134
        :pswitch_135
        :pswitch_136
        :pswitch_137
        :pswitch_138
    .end packed-switch
.end method
