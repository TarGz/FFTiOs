#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    ofBackground(127,127,127);
    ofSetOrientation(OF_ORIENTATION_90_LEFT);
    
    fftLive.setMirrorData(false);
    fftLive.setup();
}

//--------------------------------------------------------------
void ofApp::update(){
    fftLive.update();
    numOfVerts = 100;
    float * audioData = new float[numOfVerts];
    fftLive.getFftPeakData(audioData, numOfVerts);
    for(int i=0; i<numOfVerts; i++) {
        float audioValue = audioData[i];
        
    }
    delete[] audioData;
}

//--------------------------------------------------------------
void ofApp::draw(){
    int pad = 5;
    fftLive.draw(pad, pad, ofGetWidth() - pad * 2, ofGetHeight() - pad * 2);
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
