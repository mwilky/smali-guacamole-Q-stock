.class public Lcom/oneplus/support/lifecycle/MutableLiveData;
.super Lcom/oneplus/support/lifecycle/LiveData;
.source "MutableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/support/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/oneplus/support/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
