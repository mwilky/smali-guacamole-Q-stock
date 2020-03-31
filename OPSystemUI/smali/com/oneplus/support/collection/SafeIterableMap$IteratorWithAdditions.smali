.class Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;
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
    accessFlags = 0x2
    name = "IteratorWithAdditions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private mBeforeStart:Z

.field private mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/support/collection/SafeIterableMap;


# direct methods
.method private constructor <init>(Lcom/oneplus/support/collection/SafeIterableMap;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->this$0:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/support/collection/SafeIterableMap;Lcom/oneplus/support/collection/SafeIterableMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;-><init>(Lcom/oneplus/support/collection/SafeIterableMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->this$0:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-static {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->access$100(Lcom/oneplus/support/collection/SafeIterableMap;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->this$0:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-static {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->access$100(Lcom/oneplus/support/collection/SafeIterableMap;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    :goto_1
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object p0
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

    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    :cond_1
    return-void
.end method
