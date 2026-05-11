.class interface abstract Lplugin/gpgs/Connector$SignInListener;
.super Ljava/lang/Object;
.source "Connector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugin/gpgs/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SignInListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lplugin/gpgs/Connector$SignInListener$SignInResult;
    }
.end annotation


# virtual methods
.method public abstract onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;)V
.end method

.method public abstract onSignIn(Lplugin/gpgs/Connector$SignInListener$SignInResult;Ljava/lang/Integer;Ljava/lang/String;)V
.end method

.method public abstract onSignOut()V
.end method
