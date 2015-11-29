//
//  Matrix.swift
//  swift3D
//
//  Created by Adrian Krupa on 15.11.2015.
//  Copyright © 2015 Adrian Krupa. All rights reserved.
//

import Foundation
import simd

public extension float2x2 {
    /// Return the determinant of a squared matrix.
    public var determinant : Float {
        get {
            return self[0,0]*self[1,1]-self[0,1]*self[1,0]
        }
    }
}

public extension float3x3 {
    /// Return the determinant of a squared matrix.
    public var determinant : Float {
        get {
            let t1 = self[0,0] * (self[1,1] * self[2,2] - self[2,1] * self[1,2])
            let t2 = -self[1,0] * (self[0,1] * self[2,2] - self[2,1] * self[0,2])
            let t3 = self[2,0] * (self[0,1] * self[1,2] - self[1,1] * self[0,2])
            return t1 + t2 + t3
        }
    }
}

public extension float4x4 {
    /// Return the determinant of a squared matrix.
    public var determinant : Float {
        get {
            let SubFactor00 = self[2,2] * self[3,3] - self[3,2] * self[2,3];
            let SubFactor01 = self[2,1] * self[3,3] - self[3,1] * self[2,3];
            let SubFactor02 = self[2,1] * self[3,2] - self[3,1] * self[2,2];
            let SubFactor03 = self[2,0] * self[3,3] - self[3,0] * self[2,3];
            let SubFactor04 = self[2,0] * self[3,2] - self[3,0] * self[2,2];
            let SubFactor05 = self[2,0] * self[3,1] - self[3,0] * self[2,1];
            
            let DetCof = float4(
            +(self[1,1] * SubFactor00 - self[1,2] * SubFactor01 + self[1,3] * SubFactor02),
            -(self[1,0] * SubFactor00 - self[1,2] * SubFactor03 + self[1,3] * SubFactor04),
            +(self[1,0] * SubFactor01 - self[1,1] * SubFactor03 + self[1,3] * SubFactor05),
            -(self[1,0] * SubFactor02 - self[1,1] * SubFactor04 + self[1,2] * SubFactor05));
            
            return
                self[0,0] * DetCof[0] + self[0,1] * DetCof[1] +
                    self[0,2] * DetCof[2] + self[0,3] * DetCof[3];
        }
    }
}

public extension double2x2 {
    /// Return the determinant of a squared matrix.
    public var determinant : Double {
        get {
            return self[0,0]*self[1,1]-self[0,1]*self[1,0]
        }
    }
}

public extension double3x3 {
    /// Return the determinant of a squared matrix.
    public var determinant : Double {
        get {
            let t1 = self[0,0] * (self[1,1] * self[2,2] - self[2,1] * self[1,2])
            let t2 = -self[1,0] * (self[0,1] * self[2,2] - self[2,1] * self[0,2])
            let t3 = self[2,0] * (self[0,1] * self[1,2] - self[1,1] * self[0,2])
            return t1 + t2 + t3
        }
    }
}

public extension double4x4 {
    /// Return the determinant of a squared matrix.
    public var determinant : Double {
        get {
            let SubFactor00 = self[2,2] * self[3,3] - self[3,2] * self[2,3];
            let SubFactor01 = self[2,1] * self[3,3] - self[3,1] * self[2,3];
            let SubFactor02 = self[2,1] * self[3,2] - self[3,1] * self[2,2];
            let SubFactor03 = self[2,0] * self[3,3] - self[3,0] * self[2,3];
            let SubFactor04 = self[2,0] * self[3,2] - self[3,0] * self[2,2];
            let SubFactor05 = self[2,0] * self[3,1] - self[3,0] * self[2,1];
            
            let DetCof = double4(
                +(self[1,1] * SubFactor00 - self[1,2] * SubFactor01 + self[1,3] * SubFactor02),
                -(self[1,0] * SubFactor00 - self[1,2] * SubFactor03 + self[1,3] * SubFactor04),
                +(self[1,0] * SubFactor01 - self[1,1] * SubFactor03 + self[1,3] * SubFactor05),
                -(self[1,0] * SubFactor02 - self[1,1] * SubFactor04 + self[1,2] * SubFactor05));
            
            return
                self[0,0] * DetCof[0] + self[0,1] * DetCof[1] +
                    self[0,2] * DetCof[2] + self[0,3] * DetCof[3];
        }
    }
}