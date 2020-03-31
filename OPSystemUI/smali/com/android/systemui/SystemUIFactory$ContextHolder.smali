.class public Lcom/android/systemui/SystemUIFactory$ContextHolder;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContextHolder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory$ContextHolder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public provideContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory$ContextHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method
