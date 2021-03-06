/*
* g++ TrafficAnalyzer_v002.cpp -o TrafficAnalyzer_v002 `pkg-config --cflags --libs opencv` -Wall {-DDEBUG}
* ./TrafficAnalyzer_v002 ../test_videos/part3.mov or ./TrafficAnalyzer_v002 for webcam
*/
#include "opencv2/opencv.hpp"

using namespace cv;

const char* cascade_file = "haarcascade_car_1.xml";

int main(int argc, char** argv){

	if (argc > 2){
		std::cout << "Usage: {./TrafficAnalyzer_v002 ../test_videos/part3.mov} or {./TrafficAnalyzer_v002} for webcam" << std::endl;
		return 0;
	}

    VideoCapture cap;
    if (argc == 2)
        cap.open(argv[1]);
    else
        cap.open(1);    //Pay attention for the device ID!!! Not good this way.

    if(!cap.isOpened()){
        std::cout << "Can't open video" << std::endl;
        return -1;
    }

    cap.set(CV_CAP_PROP_FRAME_WIDTH, 1280);
    cap.set(CV_CAP_PROP_FRAME_HEIGHT, 720);

    CascadeClassifier cascadeClassifier (cascade_file);
    Rect roi_rect (500, 160, 400, 300); //the ROI on the original videostream

#ifdef DEBUG
    VideoWriter vwr ("TestVideo.mkv", VideoWriter::fourcc('D','A','V','C'), 30, Size ( 400, 300 ), false);
#endif

    for(;;){

        Mat frame, grey;
        std::vector<Rect> detected_objects; //will contain detected objects in Rect

        cap >> frame;

        Mat roi (frame, roi_rect);

        cvtColor(roi, grey, COLOR_BGR2GRAY);

        cascadeClassifier.detectMultiScale(grey, detected_objects, 1.1, 3, 0, Size ( 120, 120 ), Size ( 180, 180 ) );

        /*
        * Use the detected_objects vector to get information, e.g.:
        * std::cout << "Number of detected objects on this image: " << detected_objects.size() << "\n";
		*/
#ifdef DEBUG
        //visualization
        for(int i = 0; i < (int)detected_objects.size(); i++)
            rectangle(grey, detected_objects.at(i), 255, 2);

        imshow("Traffic Analyzer v002", grey);

        vwr << grey; //Recording

        if(waitKey(30) == 'c') break;
#endif

    }

    return 0;
}
