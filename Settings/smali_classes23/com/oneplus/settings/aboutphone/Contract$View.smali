.class interface abstract Lcom/oneplus/settings/aboutphone/Contract$View;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/aboutphone/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "View"
.end annotation


# virtual methods
.method public abstract cancelToast()V
.end method

.method public abstract displayHardWarePreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract displaySoftWarePreference(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract performHapticFeedback()V
.end method

.method public abstract showLongToast(I)V
.end method

.method public abstract showLongToast(Ljava/lang/String;)V
.end method
