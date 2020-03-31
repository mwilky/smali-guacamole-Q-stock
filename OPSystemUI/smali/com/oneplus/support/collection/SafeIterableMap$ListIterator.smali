.class abstract Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/collection/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/support/collection/SafeIterableMap$Entry;Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-void
.end method

.method private nextNode()Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->forward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method abstract backward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract forward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    invoke-direct {p0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->nextNode()Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0
.end method

.method public supportRemove(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->backward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->nextNode()Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    :cond_2
    return-void
.end method
