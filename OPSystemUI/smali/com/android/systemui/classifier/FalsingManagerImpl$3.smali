.class Lcom/android/systemui/classifier/FalsingManagerImpl$3;
.super Landroid/database/ContentObserver;
.source "FalsingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManagerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$3;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$3;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->access$300(Lcom/android/systemui/classifier/FalsingManagerImpl;)V

    return-void
.end method
