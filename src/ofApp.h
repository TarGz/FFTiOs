#pragma once

#include "ofxiOS.h"
#include "ofxFFTLive.h"
#include "ofxFFTFile.h"
#include "ofxGui.h"

class ofApp : public ofxiOSApp {
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);
    
        ofxFFTLive fftLive;
    ofxPanel gui;
    ofxSlider<float> audioThreshold;
    ofxSlider<float> audioPeakDecay;
    ofxSlider<float> audioMaxDecay;
    ofxToggle audioMirror;
    
    ofMesh meshOriginal;
    ofMesh meshWarped;
    ofEasyCam cam;
    float audioValue;
    int numOfVerts;

};


