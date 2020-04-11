.class Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback23Impl;
.super Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;
.source "ActivityCompat.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback23Impl"
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/app/SharedElementCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Lcom/oneplus/support/core/app/SharedElementCallback;)V

    return-void
.end method


# virtual methods
.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    new-instance v1, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback23Impl$1;

    invoke-direct {v1, p0, p3}, Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback23Impl$1;-><init>(Lcom/oneplus/support/core/app/ActivityCompat$SharedElementCallback23Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/core/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lcom/oneplus/support/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    return-void
.end method
