.class Lcom/oneplus/android/server/scene/ivd$cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/ivd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cno"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/ivd;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd$cno;->this$0:Lcom/oneplus/android/server/scene/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd$cno;->this$0:Lcom/oneplus/android/server/scene/ivd;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/ivd;->zta(Lcom/oneplus/android/server/scene/ivd;Lorg/json/JSONArray;)V

    return-void
.end method
