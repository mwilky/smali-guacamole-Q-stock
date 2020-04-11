.class Lcom/oneplus/android/server/sis/you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/sis/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/sis/you;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/sis/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/sis/you$zta;->this$0:Lcom/oneplus/android/server/sis/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/sis/you;Lcom/oneplus/android/server/sis/zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/sis/you$zta;-><init>(Lcom/oneplus/android/server/sis/you;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/sis/you$zta;->this$0:Lcom/oneplus/android/server/sis/you;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/sis/you;->zta(Lcom/oneplus/android/server/sis/you;Lorg/json/JSONArray;)V

    return-void
.end method
