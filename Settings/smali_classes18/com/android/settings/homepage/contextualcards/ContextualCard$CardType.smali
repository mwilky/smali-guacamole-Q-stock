.class public interface abstract annotation Lcom/android/settings/homepage/contextualcards/ContextualCard$CardType;
.super Ljava/lang/Object;
.source "ContextualCard.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CardType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CONDITIONAL:I = 0x3

.field public static final CONDITIONAL_FOOTER:I = 0x5

.field public static final CONDITIONAL_HEADER:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final LEGACY_SUGGESTION:I = 0x2

.field public static final SLICE:I = 0x1
