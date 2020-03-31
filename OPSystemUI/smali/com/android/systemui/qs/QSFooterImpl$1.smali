.class Lcom/android/systemui/qs/QSFooterImpl$1;
.super Landroid/database/ContentObserver;
.source "QSFooterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooterImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl$1;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterImpl$1;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFooterImpl;->access$000(Lcom/android/systemui/qs/QSFooterImpl;)V

    return-void
.end method
