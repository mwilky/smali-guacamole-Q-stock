.class Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;
.super Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->getCollection()Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    return-object p0
.end method

.method protected colGetSize()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    return p0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
