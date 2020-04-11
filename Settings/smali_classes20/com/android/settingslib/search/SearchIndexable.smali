.class public interface abstract annotation Lcom/android/settingslib/search/SearchIndexable;
.super Ljava/lang/Object;
.source "SearchIndexable.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/settingslib/search/SearchIndexable;
        forTarget = 0x1f
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALL:I = 0x1f

.field public static final ARC:I = 0x10

.field public static final AUTO:I = 0x8

.field public static final MOBILE:I = 0x1

.field public static final TV:I = 0x2

.field public static final WEAR:I = 0x4


# virtual methods
.method public abstract forTarget()I
.end method
