.class Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;
.super Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "DefaultMapStorage.java"


# instance fields
.field private descriptions:[Ljava/lang/String;

.field private phoneNumberPrefixes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrefix(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v0, v0, p1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    .line 64
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    array-length v2, v2

    iget v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v2, v3, :cond_1

    .line 65
    :cond_0
    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v2, v3, :cond_3

    .line 68
    :cond_2
    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 70
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v2, :cond_4

    .line 71
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 72
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 75
    .local v1, "sizeOfLengths":I
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    .line 76
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    .line 77
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_5
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v4, v4, v0

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 86
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v3

    .line 89
    .local v3, "sizeOfLengths":I
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 90
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "length$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 91
    .local v1, "length":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_1

    .line 82
    .end local v1    # "length":Ljava/lang/Integer;
    :cond_1
    return-void
.end method
