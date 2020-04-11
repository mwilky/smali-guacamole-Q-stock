.class Lcom/oneplus/android/server/display/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3

    iget-object p2, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->setFontPackageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$500()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p3

    const/4 p5, 0x0

    const-string p6, "pubg-fg-status"

    invoke-static {p2, p6, p5, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const-string p3, "com.tencent.ig"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OpColorDisplayService"

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontPackageChanged: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p0

    invoke-static {p1, p6, v1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontPackageChanged. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lpackageName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p0

    invoke-static {p1, p6, p5, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    :goto_1
    return-void
.end method
