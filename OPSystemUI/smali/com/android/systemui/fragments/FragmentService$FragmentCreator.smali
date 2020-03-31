.class public interface abstract Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
.super Ljava/lang/Object;
.source "FragmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FragmentCreator"
.end annotation


# virtual methods
.method public abstract createNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end method

.method public abstract createQSFragment()Lcom/android/systemui/qs/QSFragment;
.end method
