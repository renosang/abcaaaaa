.class public Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
.super Ljava/lang/Object;
.source "PhonePrefixMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->LOGGER:Ljava/util/logging/Logger;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 54
    return-void
.end method

.method private binarySearch(IIJ)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "current":I
    :goto_0
    if-gt p1, p2, :cond_2

    .line 195
    add-int v2, p1, p2

    ushr-int/lit8 v0, v2, 0x1

    .line 196
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v2, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v1

    .line 197
    .local v1, "currentValue":I
    int-to-long v2, v1

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 198
    return v0

    .line 199
    :cond_0
    int-to-long v2, v1

    cmp-long v2, v2, p3

    if-lez v2, :cond_1

    .line 200
    add-int/lit8 v0, v0, -0x1

    .line 201
    move p2, v0

    goto :goto_0

    .line 203
    :cond_1
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "currentValue":I
    :cond_2
    return v0
.end method


# virtual methods
.method lookup(J)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 148
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    move-result v3

    .line 149
    .local v3, "numOfEntries":I
    if-nez v3, :cond_0

    .line 150
    return-object v11

    .line 152
    :cond_0
    move-wide v4, p1

    .line 153
    .local v4, "phonePrefix":J
    add-int/lit8 v0, v3, -0x1

    .line 154
    .local v0, "currentIndex":I
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    move-result-object v2

    .line 155
    .local v2, "currentSetOfLengths":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 156
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 157
    .local v7, "possibleLength":Ljava/lang/Integer;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "phonePrefixStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 159
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 161
    :cond_1
    invoke-direct {p0, v10, v0, v4, v5}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->binarySearch(IIJ)I

    move-result v0

    .line 162
    if-gez v0, :cond_2

    .line 163
    return-object v11

    .line 165
    :cond_2
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v1

    .line 166
    .local v1, "currentPrefix":I
    int-to-long v8, v1

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    .line 167
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 169
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    goto :goto_0

    .line 171
    .end local v1    # "currentPrefix":I
    .end local v6    # "phonePrefixStr":Ljava/lang/String;
    .end local v7    # "possibleLength":Ljava/lang/Integer;
    :cond_4
    return-object v11
.end method

.method public lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 183
    .local v0, "phonePrefix":J
    invoke-virtual {p0, v0, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 122
    .local v0, "useFlyweightMapStorage":Z
    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    .line 119
    return-void

    .line 125
    :cond_0
    new-instance v1, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    instance-of v0, v0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 135
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 133
    return-void
.end method
