.class Lcom/android/server/zta/zta;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zta/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/server/zta/you;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/android/server/zta/you;
    .locals 1

    new-instance p0, Lcom/android/server/zta/you;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/zta/you;-><init>(Lcom/android/server/zta/zta;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/zta/zta;->create()Lcom/android/server/zta/you;

    move-result-object p0

    return-object p0
.end method
