import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A325600: Positions of 1 in A325599.

The programs for A325600, there is no canonical definition to state claims against.
-/

/-! ## A325600.P11508583280222142013

`eq[1, A325599(n+1)]+1`
-/

namespace A325600.P11508583280222142013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325600.P11508583280222142013

/-! ## A325600.P6569630561370506258

`record[n-a(A325599(n))]` with `a(0)=1, a(1)=0`
-/

namespace A325600.P6569630561370506258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - f1 (A325599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325600.P6569630561370506258

/-! ## A325600.P12655236851037989726

`A325599(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A325600.P12655236851037989726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325599 (a (n - 1) + 1).toNat + a (n - 1)

end

end A325600.P12655236851037989726

/-! ## A325600.P12389255006762011992

`eq[n, A028310(n)*A325599(A028310(n))]`
-/

namespace A325600.P12389255006762011992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A325599 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325600.P12389255006762011992

/-! ## A325600.P2196381538868252204

`eq[1, Δ[A325597(n+1)]]+1`
-/

namespace A325600.P2196381538868252204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325600.P2196381538868252204

/-! ## A325600.P5582806943825041426

`record[n+1-Δ[A325601(n+1)]]+2`
-/

namespace A325600.P5582806943825041426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A325600.P5582806943825041426

/-! ## A325600.P7905675309620108146

`record[(n+1)/(A325597(n+2)-A325597(n+1))]`
-/

namespace A325600.P7905675309620108146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A325597 (n + 2) - A325597 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325600.P7905675309620108146

/-!
# A325601: Positions of 2 in A325599.

The programs for A325601, there is no canonical definition to state claims against.
-/

/-! ## A325601.P5026258654033798428

`A325598(n+1)-(n+1)`
-/

namespace A325601.P5026258654033798428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325598 (n + 1) - (n + 1 : ℤ)

end

end A325601.P5026258654033798428

/-! ## A325601.P8942103041200800004

`A325597(n+2)+A325597(n+2)+A325597(n+1)-(n+1)`
-/

namespace A325601.P8942103041200800004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (n + 2) + (A325597 (n + 2) + A325597 (n + 1)) - (n + 1 : ℤ)

end

end A325601.P8942103041200800004

/-! ## A325601.P11283926294117038190

`eq[2, A325599(n+1)]+1`
-/

namespace A325601.P11283926294117038190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325601.P11283926294117038190

/-! ## A325601.P13386535557354117812

`record[n-a(A325599(n))]` with `a(0)=4, a(1)=3, a(2)=0`
-/

namespace A325601.P13386535557354117812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 0] fun n f1 =>
  (n : ℤ) - f1 (A325599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325601.P13386535557354117812

/-! ## A325601.P5325112445727201637

`eq[2, Δ[A325597(n+1)]]+1`
-/

namespace A325601.P5325112445727201637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325601.P5325112445727201637

/-! ## A325601.P7233430533077040283

`eq[2, A325599(A028310(n))]`
-/

namespace A325601.P7233430533077040283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325601.P7233430533077040283

/-! ## A325601.P17097031045838705839

`A023443(A325598(n+1)-n)`
-/

namespace A325601.P17097031045838705839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325598 (n + 1) - (n : ℤ)).toNat

end

end A325601.P17097031045838705839

/-! ## A325601.P2952345088843744573

`eq[2, A325599(A008458(n)-5*n)]`
-/

namespace A325601.P2952345088843744573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (A008458 n - (5 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325601.P2952345088843744573

/-! ## A325601.P15591297858740435276

`eq[char[A325600(n+1)], A288352(3*(n+1))]`
-/

namespace A325601.P15591297858740435276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325600 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288352 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325601.P15591297858740435276

/-! ## A325601.P10201657581178829034

`eq[2, A325599(A233583(n+1))]`
-/

namespace A325601.P10201657581178829034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325601.P10201657581178829034

/-!
# A325603: Lower left-hand y-coordinate for 2 X 2 invisible forest with 0 < x < y.

The programs for A325603, there is no canonical definition to state claims against.
-/

/-! ## A325603.P17291755230558846116

`A157426(A116966(n)%A340359(3*n+2))`
-/

namespace A325603.P17291755230558846116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157426 (Int.tmod (A116966 n) (A340359 (3 * n + 2))).toNat

end

end A325603.P17291755230558846116

/-!
# A325609: Unsorted q-signature of n!. Irregular triangle read by rows where T(n,k) is the multiplicity of q(k) in the factorization of n! into factors q(i) = prime(i)/i.

The programs for A325609, there is no canonical definition to state claims against.
-/

/-! ## A325609.P12133438749784217679

`A321878(n+1)+A212632(A233543(2*n+3))`
-/

namespace A325609.P12133438749784217679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (n + 1) + A212632 (A233543 (2 * n + 3)).toNat

end

end A325609.P12133438749784217679

/-! ## A325609.P747280641750970701

`A235791(lt[A210753(n+5), A164798(3*n+5)])`
-/

namespace A325609.P747280641750970701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210753 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164798 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325609.P747280641750970701

/-!
# A325610: Adjusted frequency depth of 2^n - 1.

The programs for A325610, there is no canonical definition to state claims against.
-/

/-! ## A325610.P7819287298952820789

`A323014(A278240(n+1))`
-/

namespace A325610.P7819287298952820789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A278240 (n + 1)).toNat

end

end A325610.P7819287298952820789

/-! ## A325610.P10653042019182588136

`or(A069513(n+1), A182850(A278240(n+1)))`
-/

namespace A325610.P10653042019182588136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069513 (n + 1)) (A182850 (A278240 (n + 1)).toNat)

end

end A325610.P10653042019182588136

/-! ## A325610.P17235544443035456842

`or(A086251(n+1), A182850(A278240(n+1)))`
-/

namespace A325610.P17235544443035456842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086251 (n + 1)) (A182850 (A278240 (n + 1)).toNat)

end

end A325610.P17235544443035456842

/-! ## A325610.P6057641948127836954

`A323014(or(A117078(n+1), A282124(n)))`
-/

namespace A325610.P6057641948127836954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (Int.lor (A117078 (n + 1)) (A282124 n)).toNat

end

end A325610.P6057641948127836954

/-! ## A325610.P12814281553526918666

`A323014(A323014(n+1)+A278243(n)²)`
-/

namespace A325610.P12814281553526918666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A323014 (n + 1) + A278243 n ^ 2).toNat

end

end A325610.P12814281553526918666

/-!
# A325611: Number of nodes in the rooted tree with Matula-Goebel number 2^n - 1.

The programs for A325611, there is no canonical definition to state claims against.
-/

/-! ## A325611.P3264136227538759457

`A061775(∑{d}[A133025(n+1), #])`
-/

namespace A325611.P3264136227538759457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A325611.P3264136227538759457

/-! ## A325611.P17376240674997746743

`A061775(∑[2^n])`
-/

namespace A325611.P17376240674997746743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325611.P17376240674997746743

/-! ## A325611.P12663373296296638417

`A196050(∑[2^n])+1`
-/

namespace A325611.P12663373296296638417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A325611.P12663373296296638417

/-! ## A325611.P13630932628545894019

`A061775(A126646(n))%16`
-/

namespace A325611.P13630932628545894019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061775 (A126646 n).toNat) 16

end

end A325611.P13630932628545894019

/-! ## A325611.P2936427790571852812

`and(15, A061775(A000225(n+1)))`
-/

namespace A325611.P2936427790571852812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A061775 (A000225 (n + 1)).toNat)

end

end A325611.P2936427790571852812

/-!
# A325612: Width (number of leaves) of the rooted tree with Matula-Goebel number 2^n - 1.

The programs for A325612, there is no canonical definition to state claims against.
-/

/-! ## A325612.P3510530383899966303

`A109129(or(2, ∑[2^n]))`
-/

namespace A325612.P3510530383899966303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A325612.P3510530383899966303

/-! ## A325612.P17432483683535661094

`A109129(∑[ceil(atan(n))^n]+1)`
-/

namespace A325612.P17432483683535661094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A325612.P17432483683535661094

/-! ## A325612.P15917091259233084439

`A109129(∑[2^n]+floor(acot(n)))`
-/

namespace A325612.P15917091259233084439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A325612.P15917091259233084439

/-! ## A325612.P3578408666315581444

`A109129(ceil(acot(n))*∑[2^n])`
-/

namespace A325612.P3578408666315581444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A325612.P3578408666315581444

/-! ## A325612.P6430670287763713419

`round(sqrt(A109129(∑[2^n])²+1))`
-/

namespace A325612.P6430670287763713419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A109129 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℝ))

end

end A325612.P6430670287763713419

/-!
# A325613: Full q-signature of n. Irregular triangle read by rows where T(n,k) is the multiplicity of q(k) in the q-factorization of n.

The programs for A325613, there is no canonical definition to state claims against.
-/

/-! ## A325613.P3705883009585198553

`A038769(xor(15, A152046(n)))`
-/

namespace A325613.P3705883009585198553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (Int.xor 15 (A152046 n)).toNat

end

end A325613.P3705883009585198553

/-! ## A325613.P15897134300322948890

`A051764(A214595(n+5)+A008472(2*n+1))`
-/

namespace A325613.P15897134300322948890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A214595 (n + 5) + A008472 (2 * n + 1)).toNat

end

end A325613.P15897134300322948890

/-!
# A325614: Unsorted q-signature of n.

The programs for A325614, there is no canonical definition to state claims against.
-/

/-! ## A325614.P1618970658926777359

`A103956(A007092(n)*A103961(n+1))`
-/

namespace A325614.P1618970658926777359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (A007092 n * A103961 (n + 1)).toNat

end

end A325614.P1618970658926777359

/-! ## A325614.P6535365023592144986

`A094840(A316976(n+1))`
-/

namespace A325614.P6535365023592144986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094840 (A316976 (n + 1)).toNat

end

end A325614.P6535365023592144986

/-! ## A325614.P14917681467828880933

`A106795(xor(3*n, A106817(n+1)))`
-/

namespace A325614.P14917681467828880933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106795 (Int.xor (3 * n : ℤ) (A106817 (n + 1))).toNat

end

end A325614.P14917681467828880933

/-! ## A325614.P7178720399983770631

`gcd(A114500(n), A207384(A310398(n)))`
-/

namespace A325614.P7178720399983770631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114500 n) (A207384 (A310398 n).toNat)

end

end A325614.P7178720399983770631

/-! ## A325614.P13575779116073052301

`A062892(A057548(A038722(n+1))²)`
-/

namespace A325614.P13575779116073052301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (A057548 (A038722 (n + 1)).toNat ^ 2).toNat

end

end A325614.P13575779116073052301

/-!
# A325615: Sorted q-signature of n.

The programs for A325615, there is no canonical definition to state claims against.
-/

/-! ## A325615.P17766117662976546697

`gcd(A178125(n), A263232(A263242(n+1)))`
-/

namespace A325615.P17766117662976546697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178125 n) (A263232 (A263242 (n + 1)).toNat)

end

end A325615.P17766117662976546697

/-! ## A325615.P12417461677921629992

`A003989(xor(A003410(n), A006667(n+1)))`
-/

namespace A325615.P12417461677921629992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (Int.xor (A003410 n) (A006667 (n + 1))).toNat

end

end A325615.P12417461677921629992

/-! ## A325615.P17497884464291184634

`gcd(A084090(A168297(n)), A178125(n))`
-/

namespace A325615.P17497884464291184634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084090 (A168297 n).toNat) (A178125 n)

end

end A325615.P17497884464291184634

/-! ## A325615.P16636056312661961802

`A071625(A132775(n)*A336872(n+1))`
-/

namespace A325615.P16636056312661961802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A132775 n * A336872 (n + 1)).toNat

end

end A325615.P16636056312661961802

/-! ## A325615.P16569234729542979065

`A331591(A042968(3*n+5)*A270236(n+1))`
-/

namespace A325615.P16569234729542979065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A042968 (3 * n + 5) * A270236 (n + 1)).toNat

end

end A325615.P16569234729542979065

/-!
# A325616: Triangle read by rows where T(n,k) is the number of length-k integer partitions of n into factorial numbers.

The programs for A325616, there is no canonical definition to state claims against.
-/

/-! ## A325616.P12868177841359857311

`C(A359893(2*n+1), A065880(A238858(n)))`
-/

namespace A325616.P12868177841359857311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A359893 (2 * n + 1)).toNat (A065880 (A238858 n).toNat).toNat

end

end A325616.P12868177841359857311

/-! ## A325616.P1765367198763547993

`A325897(A356265(n+1))`
-/

namespace A325616.P1765367198763547993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325897 (A356265 (n + 1)).toNat

end

end A325616.P1765367198763547993

/-! ## A325616.P10592260386493560599

`A118605(A143983(n+1))`
-/

namespace A325616.P10592260386493560599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 (A143983 (n + 1)).toNat

end

end A325616.P10592260386493560599

/-! ## A325616.P2808392104907462952

`A173864(A282988(n+1))`
-/

namespace A325616.P2808392104907462952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173864 (A282988 (n + 1)).toNat

end

end A325616.P2808392104907462952

/-! ## A325616.P17069388955378835780

`A317961(A155039(n+1))`
-/

namespace A325616.P17069388955378835780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317961 (A155039 (n + 1)).toNat

end

end A325616.P17069388955378835780

/-!
# A325617: Multinomial coefficient of the prime signature of n!.

The programs for A325617, the canonical program `A325617.P5965648772748734260` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325617 has offset 0).

The definition of A325617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, A318762, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325617.P5965648772748734260

`A318762(A181819(n!))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A325617

/-- `A318762(A181819(n!))` -/
def P5965648772748734260.Spec : Prop :=
  ∀ n, P5965648772748734260.a n = A325617 n

theorem P5965648772748734260.correct : P5965648772748734260.Spec := by
  intro n
  simp only [A325617]

end A325617

/-! ## A325617.P7888061703597521913

`A335459(n)+A335407(n)`
-/

namespace A325617.P7888061703597521913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335459 n + A335407 n

end

end A325617.P7888061703597521913

namespace A325617

/-- `A335459(n)+A335407(n)` -/
def P7888061703597521913.Spec : Prop :=
  ∀ n, P7888061703597521913.a n = A325617 n

end A325617

/-! ## A325617.P12396051684596459909

`A318762(A325508(n))`
-/

namespace A325617.P12396051684596459909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A325508 n).toNat

end

end A325617.P12396051684596459909

namespace A325617

/-- `A318762(A325508(n))` -/
def P12396051684596459909.Spec : Prop :=
  ∀ n, P12396051684596459909.a n = A325617 n

end A325617

/-! ## A325617.P13732192758771189058

`A318762(∏{e}[n!, A007693(#)])`
-/

namespace A325617.P13732192758771189058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (∏ p ∈ Nat.primeFactors (f1 n), A007693 (Nat.factorization (f1 n) p)).toNat

end

end A325617.P13732192758771189058

namespace A325617

/-- `A318762(∏{e}[n!, A007693(#)])` -/
def P13732192758771189058.Spec : Prop :=
  ∀ n, P13732192758771189058.a n = A325617 n

end A325617

/-! ## A325617.P5900764305985347101

`abs(A355939(n!))`
-/

namespace A325617.P5900764305985347101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (Nat.factorial n)|

end

end A325617.P5900764305985347101

namespace A325617

/-- `abs(A355939(n!))` -/
def P5900764305985347101.Spec : Prop :=
  ∀ n, P5900764305985347101.a n = A325617 n

end A325617

/-!
# A325620: Number of integer partitions of n whose reciprocal factorial sum is an integer.

The programs for A325620, there is no canonical definition to state claims against.
-/

/-! ## A325620.P17270283059268963868

`∑[ceil(A263138(n)/A115943(n+1))]`
-/

namespace A325620.P17270283059268963868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A263138 n : ℚ) / (A115943 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325620.P17270283059268963868

/-! ## A325620.P13883116415069077033

`A003056(A039927(n+1)+A000009(n))`
-/

namespace A325620.P13883116415069077033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A039927 (n + 1) + A000009 n).toNat

end

end A325620.P13883116415069077033

/-! ## A325620.P12899797017363444998

`A057427(A002965(n+1))+A025816(2*n+1)`
-/

namespace A325620.P12899797017363444998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002965 (n + 1)).toNat + A025816 (2 * n + 1)

end

end A325620.P12899797017363444998

/-! ## A325620.P13498001963867883111

`A025816(2*n+1)+A010194(A002148(n+2))`
-/

namespace A325620.P13498001963867883111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 (2 * n + 1) + A010194 (A002148 (n + 2)).toNat

end

end A325620.P13498001963867883111

/-! ## A325620.P1275877426221366538

`∑[A324920(A263138(n)²)]`
-/

namespace A325620.P1275877426221366538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324920 (A263138 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325620.P1275877426221366538

/-!
# A325622: Number of integer partitions of n whose reciprocal factorial sum is the reciprocal of an integer.

The programs for A325622, there is no canonical definition to state claims against.
-/

/-! ## A325622.P6952379076190304944

`A237442(A029968(n+5)-2)`
-/

namespace A325622.P6952379076190304944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A029968 (n + 5) - 2).toNat

end

end A325622.P6952379076190304944

/-! ## A325622.P2842055009885104748

`A351014(A179871(n+1)+A007092(n))`
-/

namespace A325622.P2842055009885104748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A179871 (n + 1) + A007092 n).toNat

end

end A325622.P2842055009885104748

/-! ## A325622.P3780372515979737577

`A295664(A023649(n+1)-A060455(n))`
-/

namespace A325622.P3780372515979737577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A023649 (n + 1) - A060455 n).toNat

end

end A325622.P3780372515979737577

/-! ## A325622.P17871096949185074654

`A001221(xor(A006047(n), A006593(n+1)))`
-/

namespace A325622.P17871096949185074654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A006047 n) (A006593 (n + 1))).toNat

end

end A325622.P17871096949185074654

/-! ## A325622.P639096213935664588

`A300409(A073355(n+1)*A180000(n+1))`
-/

namespace A325622.P639096213935664588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300409 (A073355 (n + 1) * A180000 (n + 1)).toNat

end

end A325622.P639096213935664588

/-!
# A325623: Heinz numbers of integer partitions whose reciprocal factorial sum is the reciprocal of an integer.

The programs for A325623, there is no canonical definition to state claims against.
-/

/-! ## A325623.P12247786839534441327

`lt[A325704(n+1), 2]+1`
-/

namespace A325623.P12247786839534441327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325623.P12247786839534441327

/-! ## A325623.P9962170746134635007

`eq[A057427(n), A325704(n+1)]+1`
-/

namespace A325623.P9962170746134635007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325623.P9962170746134635007

/-! ## A325623.P6911129673359611725

`A141310(eq[n, n*A325704(n+1)])`
-/

namespace A325623.P6911129673359611725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325623.P6911129673359611725

/-! ## A325623.P10001204927607385579

`record[A004273(n+1)-n*A325704(n+1)]`
-/

namespace A325623.P10001204927607385579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - (n : ℤ) * A325704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325623.P10001204927607385579

/-! ## A325623.P4607666047472591275

`record[A004442(2*n)-n*A325704(n+1)]`
-/

namespace A325623.P4607666047472591275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n) - (n : ℤ) * A325704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325623.P4607666047472591275

/-! ## A325623.P12849382618199403412

`eq[A266719(n), A325704(A029579(n))]`
-/

namespace A325623.P12849382618199403412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (A029579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325623.P12849382618199403412

/-! ## A325623.P5672261834342610296

`A141310(eq[A057427(n), A325704(n+1)])`
-/

namespace A325623.P5672261834342610296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325623.P5672261834342610296

/-! ## A325623.P9436110175841527890

`eq[A057427(n), A325704(A233583(n+1))]`
-/

namespace A325623.P9436110175841527890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325623.P9436110175841527890

/-! ## A325623.P829602166936410561

`A141310(eq[A325704(n+1)², A325704(n+1)])`
-/

namespace A325623.P829602166936410561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325623.P829602166936410561

/-! ## A325623.P12036457928180079307

`record[A004525(A004767(n))-n*A325704(n+1)]`
-/

namespace A325623.P12036457928180079307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004767 n).toNat - (n : ℤ) * A325704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325623.P12036457928180079307

/-!
# A325625: Sorted prime signature of 2^n - 1.

The programs for A325625, there is no canonical definition to state claims against.
-/

/-! ## A325625.P10485207795463664776

`A036039(Δ[eq[1, A095025(n+5)]])`
-/

namespace A325625.P10485207795463664776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095025 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A325625.P10485207795463664776

/-! ## A325625.P1075400420919476959

`A091090(and(A033948(2*n+3), A348740(n+1)))`
-/

namespace A325625.P1075400420919476959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (Int.land (A033948 (2 * n + 3)) (A348740 (n + 1))).toNat

end

end A325625.P1075400420919476959

/-! ## A325625.P14949264603187036050

`gcd(A005117(2*n+3), A330996(A306713(2*n)))`
-/

namespace A325625.P14949264603187036050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005117 (2 * n + 3)) (A330996 (A306713 (2 * n)).toNat)

end

end A325625.P14949264603187036050

/-! ## A325625.P10087467801784648785

`A244145(2*n+1)^A083925(A050603(n))`
-/

namespace A325625.P10087467801784648785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244145 (2 * n + 1) : ℚ) ^ (A083925 (A050603 n).toNat : ℤ)

end

end A325625.P10087467801784648785

/-! ## A325625.P11927115093996242539

`gcd(A015716(n+1), A244145(A080512(2*n+1)))`
-/

namespace A325625.P11927115093996242539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015716 (n + 1)) (A244145 (A080512 (2 * n + 1)).toNat)

end

end A325625.P11927115093996242539

/-!
# A325626: a(n) is the smallest prime factor in A030426(n).

The programs for A325626, there is no canonical definition to state claims against.
-/

/-! ## A325626.P15645865989509836113

`A001578(p?[2*n+1])`
-/

namespace A325626.P15645865989509836113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A325626.P15645865989509836113

/-! ## A325626.P5697813809889647833

`A060383(p?[2*n+1])`
-/

namespace A325626.P5697813809889647833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A325626.P5697813809889647833

/-! ## A325626.P4827906354533508162

`A001578(A065091(n+1))`
-/

namespace A325626.P4827906354533508162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (A065091 (n + 1)).toNat

end

end A325626.P4827906354533508162

/-! ## A325626.P9822714961365095828

`A001578(A000040(n+2))`
-/

namespace A325626.P9822714961365095828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (A000040 (n + 2)).toNat

end

end A325626.P9822714961365095828

/-! ## A325626.P5701129288045198749

`A001578(A006005(n+2))`
-/

namespace A325626.P5701129288045198749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (A006005 (n + 2)).toNat

end

end A325626.P5701129288045198749

/-! ## A325626.P3907557760014532644

`A309373(A006093(n+2))`
-/

namespace A325626.P3907557760014532644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309373 (A006093 (n + 2)).toNat

end

end A325626.P3907557760014532644

/-! ## A325626.P17047364407061240206

`A001578(record[A006530(n+3)])`
-/

namespace A325626.P17047364407061240206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325626.P17047364407061240206

/-! ## A325626.P4425459493623642658

`A001578(record[A020639(n+3)])`
-/

namespace A325626.P4425459493623642658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325626.P4425459493623642658

/-! ## A325626.P17720992174353591765

`A060383(record[A006530(n+3)])`
-/

namespace A325626.P17720992174353591765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325626.P17720992174353591765

/-! ## A325626.P8520026351339571668

`A060383(record[A020639(n+3)])`
-/

namespace A325626.P8520026351339571668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325626.P8520026351339571668

/-!
# A325627: a(n) is the largest prime factor in A030426(n).

The programs for A325627, there is no canonical definition to state claims against.
-/

/-! ## A325627.P12451978052054937572

`A060385(p?[2*n+1])`
-/

namespace A325627.P12451978052054937572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060385 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A325627.P12451978052054937572

/-! ## A325627.P15469385381740184005

`A060385(A065091(n+1))`
-/

namespace A325627.P15469385381740184005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060385 (A065091 (n + 1)).toNat

end

end A325627.P15469385381740184005

/-! ## A325627.P11062117877447741584

`A060385(A000040(n+2))`
-/

namespace A325627.P11062117877447741584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060385 (A000040 (n + 2)).toNat

end

end A325627.P11062117877447741584

/-! ## A325627.P7990944991402203146

`A060385(A006005(n+2))`
-/

namespace A325627.P7990944991402203146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060385 (A006005 (n + 2)).toNat

end

end A325627.P7990944991402203146

/-! ## A325627.P7937366443365072816

`A060385(A008578(n+3))`
-/

namespace A325627.P7937366443365072816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060385 (A008578 (n + 3)).toNat

end

end A325627.P7937366443365072816

/-!
# A325628: Number of mirror-symmetric Euclidean pseudo-order types: nondegenerate abstract order types of configurations of n points in the plane with a mirroring automorphism.

The programs for A325628, there is no canonical definition to state claims against.
-/

/-! ## A325628.P12060125799955643027

`A325595(n+1)-A146167(A146142(n+1))`
-/

namespace A325628.P12060125799955643027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325595 (n + 1) - A146167 (A146142 (n + 1)).toNat

end

end A325628.P12060125799955643027

/-! ## A325628.P6487866570409036248

`xor(A053616(A305375(n+1)), A325595(n+1))`
-/

namespace A325628.P6487866570409036248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053616 (A305375 (n + 1)).toNat) (A325595 (n + 1))

end

end A325628.P6487866570409036248

/-!
# A325632: a(n) = gcd(n, A325634(n)) = gcd(n, A091255(n, sigma(n))).

The programs for A325632, there is no canonical definition to state claims against.
-/

/-! ## A325632.P4407792306034377660

`gcd(n+1, A325634(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325632.P4407792306034377660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A325634 (n + 1))

end

end A325632.P4407792306034377660

/-! ## A325632.P14409733729475301474

`gcd(C(n+1, n), A325635(C(n+1, n)))`
-/

namespace A325632.P14409733729475301474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) n : ℤ) (A325635 (Nat.choose (n + 1) n))

end

end A325632.P14409733729475301474

/-! ## A325632.P4642938884349810117

`gcd(2*n+1-n, A325635(2*n+1-n))`
-/

namespace A325632.P4642938884349810117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A325635 (2 * n + 1 - n))

end

end A325632.P4642938884349810117

/-! ## A325632.P17027632204425168270

`gcd(A325635(n+1), A131738(n))`
-/

namespace A325632.P17027632204425168270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325635 (n + 1)) (A131738 n)

end

end A325632.P17027632204425168270

/-! ## A325632.P12651769422373792105

`gcd(A000027(A325635(n+1)), A153152(n))`
-/

namespace A325632.P12651769422373792105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A325635 (n + 1)).toNat) (A153152 n)

end

end A325632.P12651769422373792105

/-! ## A325632.P7803074118679439863

`gcd(A105769(n+1)*A325635(n+1), A130446(n+1))`
-/

namespace A325632.P7803074118679439863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105769 (n + 1) * A325635 (n + 1)) (A130446 (n + 1))

end

end A325632.P7803074118679439863

/-!
# A325633: a(n) = gcd(A009194(n), A325634(n)) = gcd(A009194(n), A091255(n, sigma(n))).

The programs for A325633, there is no canonical definition to state claims against.
-/

/-! ## A325633.P6642683112871344457

`gcd(Δ[A160664(n)], A325632(n+1))`
-/

namespace A325633.P6642683112871344457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A325632 (n + 1))

end

end A325633.P6642683112871344457

/-! ## A325633.P7833128299929303469

`gcd(A009194(n+1), A325635(n+1))`
-/

namespace A325633.P7833128299929303469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A325635 (n + 1))

end

end A325633.P7833128299929303469

/-! ## A325633.P15385314494044596607

`gcd(A325634(n+1), A325636(n+1))`
-/

namespace A325633.P15385314494044596607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325634 (n + 1)) (A325636 (n + 1))

end

end A325633.P15385314494044596607

/-! ## A325633.P12320143967807084957

`gcd(A001065(n+1), A325632(A000027(n+1)))`
-/

namespace A325633.P12320143967807084957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (n + 1)) (A325632 (A000027 (n + 1)).toNat)

end

end A325633.P12320143967807084957

/-! ## A325633.P15152115818319011688

`gcd(A000027(A325632(n+1)), A033880(n+1))`
-/

namespace A325633.P15152115818319011688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A325632 (n + 1)).toNat) (A033880 (n + 1))

end

end A325633.P15152115818319011688

/-! ## A325633.P9164923712271940387

`gcd(A033885(n+1), A325632(A014684(n+1)))`
-/

namespace A325633.P9164923712271940387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033885 (n + 1)) (A325632 (A014684 (n + 1)).toNat)

end

end A325633.P9164923712271940387

/-! ## A325633.P4285407732537818538

`gcd(A054024(n+1), A325632(A014683(n+1)))`
-/

namespace A325633.P4285407732537818538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054024 (n + 1)) (A325632 (A014683 (n + 1)).toNat)

end

end A325633.P4285407732537818538

/-!
# A325634: a(n) = A091255(n, sigma(n)).

The programs for A325634, there is no canonical definition to state claims against.
-/

/-! ## A325634.P5671816265075172692

`A325635(n+1)/gcd(2, A017665(n+1))`
-/

namespace A325634.P5671816265075172692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325635 (n + 1) : ℚ) / (Int.gcd 2 (A017665 (n + 1)) : ℚ)

end

end A325634.P5671816265075172692

/-! ## A325634.P2637150270627923671

`lcm(A000265(A325635(n+1)), A325632(n+1))`
-/

namespace A325634.P2637150270627923671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A325635 (n + 1)).toNat) (A325632 (n + 1))

end

end A325634.P2637150270627923671

/-! ## A325634.P5119412618973572717

`A009194(n+1)*A325635(n+1)/A325636(n+1)`
-/

namespace A325634.P5119412618973572717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) * A325635 (n + 1) : ℚ) / (A325636 (n + 1) : ℚ)

end

end A325634.P5119412618973572717

/-! ## A325634.P12638763462326838462

`A000265(A325635(n+1)/A325632(n+1))*A325632(n+1)`
-/

namespace A325634.P12638763462326838462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A325635 (n + 1) : ℚ) / (A325632 (n + 1) : ℚ))).toNat * A325632 (n + 1)

end

end A325634.P12638763462326838462

/-! ## A325634.P3221164390191674271

`A026741(A325635(n+1)/A325633(n+1))*A325633(n+1)`
-/

namespace A325634.P3221164390191674271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A325635 (n + 1) : ℚ) / (A325633 (n + 1) : ℚ))).toNat * A325633 (n + 1)

end

end A325634.P3221164390191674271

/-! ## A325634.P13497293539430343281

`A325635(n+1)/A040001(A017665(n+1))`
-/

namespace A325634.P13497293539430343281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325635 (n + 1) : ℚ) / (A040001 (A017665 (n + 1)).toNat : ℚ)

end

end A325634.P13497293539430343281

/-! ## A325634.P2495668258832649791

`lcm(A026741(A325635(n+1)), A325633(n+1))`
-/

namespace A325634.P2495668258832649791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026741 (A325635 (n + 1)).toNat) (A325633 (n + 1))

end

end A325634.P2495668258832649791

/-! ## A325634.P15573927208994606233

`gcd(A008486(A020332(n+1)), A325635(n+1))`
-/

namespace A325634.P15573927208994606233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 (A020332 (n + 1)).toNat) (A325635 (n + 1))

end

end A325634.P15573927208994606233

/-!
# A325635: a(n) = A091255(2n, sigma(n)).

The programs for A325635, there is no canonical definition to state claims against.
-/

/-! ## A325635.P1905673210828453640

`(A324903(n+1)+1)*A325634(n+1)`
-/

namespace A325635.P1905673210828453640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324903 (n + 1) + 1) * A325634 (n + 1)

end

end A325635.P1905673210828453640

/-! ## A325635.P14469463851055401743

`gcd(2, A017665(n+1))*A325634(n+1)`
-/

namespace A325635.P14469463851055401743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A017665 (n + 1)) : ℤ) * A325634 (n + 1)

end

end A325635.P14469463851055401743

/-! ## A325635.P13599527738780754466

`A325634(n+1)*A325636(n+1)/A009194(n+1)`
-/

namespace A325635.P13599527738780754466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325634 (n + 1) * A325636 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A325635.P13599527738780754466

/-! ## A325635.P9285772986643690824

`lcm(A006519(A325636(n+1)), A325634(n+1))`
-/

namespace A325635.P9285772986643690824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (A325636 (n + 1)).toNat) (A325634 (n + 1))

end

end A325635.P9285772986643690824

/-! ## A325635.P11863202936675938742

`A040001(A017665(n+1))*A325634(n+1)`
-/

namespace A325635.P11863202936675938742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A017665 (n + 1)).toNat * A325634 (n + 1)

end

end A325635.P11863202936675938742

/-!
# A325636: a(n) = gcd(2n, sigma(n)).

The programs for A325636, the canonical program `A325636.P8281237954582928816` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325636 has offset 1).

The definition of A325636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325636.P8281237954582928816

`gcd(2*(n+1), ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325636

/-- `gcd(2*(n+1), ∑{d}[n+1, #])` -/
def P8281237954582928816.Spec : Prop :=
  ∀ n, (P8281237954582928816.a n : ℤ) = A325636 (n + 1)

theorem P8281237954582928816.correct : P8281237954582928816.Spec := by
  intro n
  simp only [A325636, Nat.add_sub_cancel]

end A325636

/-! ## A325636.P17661424497932919305

`gcd(2*(n+1), A000203(n+1))`
-/

namespace A325636.P17661424497932919305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A000203 (n + 1))

end

end A325636.P17661424497932919305

namespace A325636

/-- `gcd(2*(n+1), A000203(n+1))` -/
def P17661424497932919305.Spec : Prop :=
  ∀ n, (P17661424497932919305.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P5618514182011439316

`gcd(∑{d}[n+1, #], A004277(n+1))`
-/

namespace A325636.P5618514182011439316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A004277 (n + 1))

end

end A325636.P5618514182011439316

namespace A325636

/-- `gcd(∑{d}[n+1, #], A004277(n+1))` -/
def P5618514182011439316.Spec : Prop :=
  ∀ n, (P5618514182011439316.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P4645819704375941103

`gcd(record[2-xor(1, -n)], A224880(n+1))`
-/

namespace A325636.P4645819704375941103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A224880 (n + 1))

end

end A325636.P4645819704375941103

namespace A325636

/-- `gcd(record[2-xor(1, -n)], A224880(n+1))` -/
def P4645819704375941103.Spec : Prop :=
  ∀ n, (P4645819704375941103.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P4569259609018250804

`gcd(3*(n+1)-(n+1), A143348(n+1))`
-/

namespace A325636.P4569259609018250804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((3 * (n + 1) : ℤ) - (n + 1 : ℤ)) (A143348 (n + 1))

end

end A325636.P4569259609018250804

namespace A325636

/-- `gcd(3*(n+1)-(n+1), A143348(n+1))` -/
def P4569259609018250804.Spec : Prop :=
  ∀ n, (P4569259609018250804.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P2154832248507342000

`gcd(A000203(n+1), A103517(n))`
-/

namespace A325636.P2154832248507342000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A103517 n)

end

end A325636.P2154832248507342000

namespace A325636

/-- `gcd(A000203(n+1), A103517(n))` -/
def P2154832248507342000.Spec : Prop :=
  ∀ n, (P2154832248507342000.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P13437434742554700175

`gcd(Δ[A202018(n)], A033879(n+1))`
-/

namespace A325636.P13437434742554700175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A033879 (n + 1))

end

end A325636.P13437434742554700175

namespace A325636

/-- `gcd(Δ[A202018(n)], A033879(n+1))` -/
def P13437434742554700175.Spec : Prop :=
  ∀ n, (P13437434742554700175.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P12894800656684798179

`gcd(A009242(n+1), A033880(n+1))`
-/

namespace A325636.P12894800656684798179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009242 (n + 1)) (A033880 (n + 1))

end

end A325636.P12894800656684798179

namespace A325636

/-- `gcd(A009242(n+1), A033880(n+1))` -/
def P12894800656684798179.Spec : Prop :=
  ∀ n, (P12894800656684798179.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P17758407429781102731

`(A324903(n+1)+1)*A009194(n+1)`
-/

namespace A325636.P17758407429781102731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324903 (n + 1) + 1) * A009194 (n + 1)

end

end A325636.P17758407429781102731

namespace A325636

/-- `(A324903(n+1)+1)*A009194(n+1)` -/
def P17758407429781102731.Spec : Prop :=
  ∀ n, P17758407429781102731.a n = A325636 (n + 1)

end A325636

/-! ## A325636.P10092279988869802525

`gcd(2*A324046(n+1), A324121(n+1))`
-/

namespace A325636.P10092279988869802525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A324046 (n + 1)) (A324121 (n + 1))

end

end A325636.P10092279988869802525

namespace A325636

/-- `gcd(2*A324046(n+1), A324121(n+1))` -/
def P10092279988869802525.Spec : Prop :=
  ∀ n, (P10092279988869802525.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P9923645172455015504

`gcd(A088580(n+1)-1, abs(A033879(n+1)))`
-/

namespace A325636.P9923645172455015504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088580 (n + 1) - 1) |A033879 (n + 1)|

end

end A325636.P9923645172455015504

namespace A325636

/-- `gcd(A088580(n+1)-1, abs(A033879(n+1)))` -/
def P9923645172455015504.Spec : Prop :=
  ∀ n, (P9923645172455015504.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P16832124949264801629

`gcd(A039653(n+1)+1, A000027(2*(n+1)))`
-/

namespace A325636.P16832124949264801629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039653 (n + 1) + 1) (A000027 (2 * (n + 1)))

end

end A325636.P16832124949264801629

namespace A325636

/-- `gcd(A039653(n+1)+1, A000027(2*(n+1)))` -/
def P16832124949264801629.Spec : Prop :=
  ∀ n, (P16832124949264801629.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P6982933381052148470

`gcd(A000027(2*n+2), A245092(2*n+1))`
-/

namespace A325636.P6982933381052148470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (2 * n + 2)) (A245092 (2 * n + 1))

end

end A325636.P6982933381052148470

namespace A325636

/-- `gcd(A000027(2*n+2), A245092(2*n+1))` -/
def P6982933381052148470.Spec : Prop :=
  ∀ n, (P6982933381052148470.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P17933846584498657790

`A009194(n+1)/A325634(n+1)*A325635(n+1)`
-/

namespace A325636.P17933846584498657790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) : ℚ) / (A325634 (n + 1) : ℚ) * (A325635 (n + 1) : ℚ)

end

end A325636.P17933846584498657790

namespace A325636

/-- `A009194(n+1)/A325634(n+1)*A325635(n+1)` -/
def P17933846584498657790.Spec : Prop :=
  ∀ n, P17933846584498657790.a n = (A325636 (n + 1) : ℚ)

end A325636

/-! ## A325636.P5719793373150814501

`gcd(A051755(n+2)+A033880(n+1), A051755(n+2))`
-/

namespace A325636.P5719793373150814501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051755 (n + 2) + A033880 (n + 1)) (A051755 (n + 2))

end

end A325636.P5719793373150814501

namespace A325636

/-- `gcd(A051755(n+2)+A033880(n+1), A051755(n+2))` -/
def P5719793373150814501.Spec : Prop :=
  ∀ n, (P5719793373150814501.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P17897084759338119602

`gcd(A146076(n+1)+A000593(n+1), -A033879(n+1))`
-/

namespace A325636.P17897084759338119602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146076 (n + 1) + A000593 (n + 1)) (-A033879 (n + 1))

end

end A325636.P17897084759338119602

namespace A325636

/-- `gcd(A146076(n+1)+A000593(n+1), -A033879(n+1))` -/
def P17897084759338119602.Spec : Prop :=
  ∀ n, (P17897084759338119602.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P13331040639771850685

`gcd(2*(n+1)-A033879(n+1), A033879(A000027(n+1)))`
-/

namespace A325636.P13331040639771850685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) : ℤ) - A033879 (n + 1)) (A033879 (A000027 (n + 1)).toNat)

end

end A325636.P13331040639771850685

namespace A325636

/-- `gcd(2*(n+1)-A033879(n+1), A033879(A000027(n+1)))` -/
def P13331040639771850685.Spec : Prop :=
  ∀ n, (P13331040639771850685.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P4577549544887175090

`gcd(A091818(n+1), A326065(2*(n+1)))`
-/

namespace A325636.P4577549544887175090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091818 (n + 1)) (A326065 (2 * (n + 1)))

end

end A325636.P4577549544887175090

namespace A325636

/-- `gcd(A091818(n+1), A326065(2*(n+1)))` -/
def P4577549544887175090.Spec : Prop :=
  ∀ n, (P4577549544887175090.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P4657936443373165022

`gcd(2-A103517(n+1), A326068(2*(n+1)))`
-/

namespace A325636.P4657936443373165022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A103517 (n + 1)) (A326068 (2 * (n + 1)))

end

end A325636.P4657936443373165022

namespace A325636

/-- `gcd(2-A103517(n+1), A326068(2*(n+1)))` -/
def P4657936443373165022.Spec : Prop :=
  ∀ n, (P4657936443373165022.a n : ℤ) = A325636 (n + 1)

end A325636

/-! ## A325636.P1601598173095246967

`gcd(A103517(n), A326068(A103517(n)))`
-/

namespace A325636.P1601598173095246967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n) (A326068 (A103517 n).toNat)

end

end A325636.P1601598173095246967

namespace A325636

/-- `gcd(A103517(n), A326068(A103517(n)))` -/
def P1601598173095246967.Spec : Prop :=
  ∀ n, (P1601598173095246967.a n : ℤ) = A325636 (n + 1)

end A325636

/-!
# A325637: Numbers k for which gcd(2k, sigma(k)) = 2k.

The programs for A325637, there is no canonical definition to state claims against.
-/

/-! ## A325637.P12741719605741184808

`A224832(n+1)/2`
-/

namespace A325637.P12741719605741184808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224832 (n + 1) : ℚ) / 2

end

end A325637.P12741719605741184808

/-! ## A325637.P3355191881631049953

`∩[A007691(n+1), A336702(n+2)]`
-/

namespace A325637.P3355191881631049953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336702 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325637.P3355191881631049953

/-! ## A325637.P3885979935807760406

`A336702(n+2)+A336702(2*n+1)*A351539(n+2)`
-/

namespace A325637.P3885979935807760406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336702 (n + 2) + A336702 (2 * n + 1) * A351539 (n + 2)

end

end A325637.P3885979935807760406

/-! ## A325637.P5609961845030102513

`A336702(n+2)+A336702(2*n+1)*A353638(2*(n+1))`
-/

namespace A325637.P5609961845030102513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336702 (n + 2) + A336702 (2 * n + 1) * A353638 (2 * (n + 1))

end

end A325637.P5609961845030102513

/-!
# A325638: Numbers m such that sigma(m) can be obtained as the base-2 carryless product of 2m and some k.

The programs for A325638, there is no canonical definition to state claims against.
-/

/-! ## A325638.P8633069452572743708

`filter[A325639(n+1), A324903(#)]`
-/

namespace A325638.P8633069452572743708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A325638.P8633069452572743708

/-! ## A325638.P15421295229131265992

`A325639(A032967(n+2))`
-/

namespace A325638.P15421295229131265992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325639 (A032967 (n + 2)).toNat

end

end A325638.P15421295229131265992

/-!
# A325639: Numbers n for which A091255(n, sigma(n)) = n.

The programs for A325639, there is no canonical definition to state claims against.
-/

/-! ## A325639.P8698477202954437495

`record[C(A325632(n+1), n)]`
-/

namespace A325639.P8698477202954437495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325632 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325639.P8698477202954437495

/-! ## A325639.P4407577380203225682

`record[C(A325634(n+1), n)]`
-/

namespace A325639.P4407577380203225682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325634 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325639.P4407577380203225682

/-! ## A325639.P11657998706825917375

`record[A325632(A325632(n+1))]`
-/

namespace A325639.P11657998706825917375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325632 (A325632 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325639.P11657998706825917375

/-! ## A325639.P3891470815126941637

`record[A325634(A325634(n+1))]`
-/

namespace A325639.P3891470815126941637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325634 (A325634 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325639.P3891470815126941637

/-! ## A325639.P16170621702546487958

`eq[n, A325632(A028310(n))]`
-/

namespace A325639.P16170621702546487958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325632 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325639.P16170621702546487958

/-!
# A325640: a(n) = A091255(n, A009194(n)) = A091255(n, gcd(n, sigma(n))).

The programs for A325640, there is no canonical definition to state claims against.
-/

/-! ## A325640.P7122795736539333633

`gcd(A007691(A074400(n+1)), A009194(n+1))`
-/

namespace A325640.P7122795736539333633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007691 (A074400 (n + 1)).toNat) (A009194 (n + 1))

end

end A325640.P7122795736539333633

/-! ## A325640.P14485117203418993966

`gcd(A009194(n+1), A045833(A128291(n)))`
-/

namespace A325640.P14485117203418993966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A045833 (A128291 n).toNat)

end

end A325640.P14485117203418993966

/-! ## A325640.P12911785926510181963

`A009194(n+1)%A355992(n+1)`
-/

namespace A325640.P12911785926510181963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009194 (n + 1)) (A355992 (n + 1))

end

end A325640.P12911785926510181963

/-! ## A325640.P11492439950251013661

`gcd(A000203(n+1), A327389(A131516(n+1)))`
-/

namespace A325640.P11492439950251013661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A327389 (A131516 (n + 1)).toNat)

end

end A325640.P11492439950251013661

/-! ## A325640.P5370381731421185093

`A009194(n+1)%A003624(A100081(n))`
-/

namespace A325640.P5370381731421185093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009194 (n + 1)) (A003624 (A100081 n).toNat)

end

end A325640.P5370381731421185093

/-! ## A325640.P2170449508557595420

`and(A009194(n+1), A321804(A298538(n+1)))`
-/

namespace A325640.P2170449508557595420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009194 (n + 1)) (A321804 (A298538 (n + 1)).toNat)

end

end A325640.P2170449508557595420

/-! ## A325640.P1991168472871165492

`A009194(A009194((n+1)²)+n%∑[A104573(n)])`
-/

namespace A325640.P1991168472871165492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A009194 ((n + 1) ^ 2) + Int.tmod (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A325640.P1991168472871165492

/-!
# A325641: a(1) = 1; for n > 1, a(n) = n/d for the least divisor d > 1 of n such that A048720(d,k) = n for some k.

The programs for A325641, there is no canonical definition to state claims against.
-/

/-! ## A325641.P14684551909988518389

`(n+1)/A325643(n+1)`
-/

namespace A325641.P14684551909988518389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A325643 (n + 1) : ℚ)

end

end A325641.P14684551909988518389

/-! ## A325641.P3023070335513925838

`(n+1)*A325643(n+1)^A133574(A001316(n))`
-/

namespace A325641.P3023070335513925838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A325643 (n + 1) : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A325641.P3023070335513925838

/-! ## A325641.P13288594479074780441

`A234575(A325643(n+1)+A000217(n))`
-/

namespace A325641.P13288594479074780441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A325643 (n + 1) + A000217 n).toNat

end

end A325641.P13288594479074780441

/-! ## A325641.P1246663432454607852

`A126988(A325643(n+1)+∑[n])`
-/

namespace A325641.P1246663432454607852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A325643 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A325641.P1246663432454607852

/-! ## A325641.P9492804700689310554

`A010766(A325643(n+1)+A000217(n))`
-/

namespace A325641.P9492804700689310554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A325643 (n + 1) + A000217 n).toNat

end

end A325641.P9492804700689310554

/-! ## A325641.P12454410927472149743

`A051537(A325643(n+1)+A000217(n))`
-/

namespace A325641.P12454410927472149743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A325643 (n + 1) + A000217 n).toNat

end

end A325641.P12454410927472149743

/-! ## A325641.P11158225379880117444

`A054531(A325643(n+1)+A000217(n))`
-/

namespace A325641.P11158225379880117444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A325643 (n + 1) + A000217 n).toNat

end

end A325641.P11158225379880117444

/-!
# A325642: a(1) = 1; for n > 1, a(n) = k for the least divisor d > 1 of n such that A048720(d,k) = n for some k.

The programs for A325642, there is no canonical definition to state claims against.
-/

/-! ## A325642.P10777720961918923119

`or(A016319(A004890(n+1))², A325563(n+1))`
-/

namespace A325642.P10777720961918923119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016319 (A004890 (n + 1)).toNat ^ 2) (A325563 (n + 1))

end

end A325642.P10777720961918923119

/-! ## A325642.P10264239407023057777

`or(A005873(A165998(n)), A325563(n+1))`
-/

namespace A325642.P10264239407023057777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005873 (A165998 n).toNat) (A325563 (n + 1))

end

end A325642.P10264239407023057777

/-! ## A325642.P8442169648616127673

`or(A032742(n+1), A378036(A338453(n+5)))`
-/

namespace A325642.P8442169648616127673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) (A378036 (A338453 (n + 5)).toNat)

end

end A325642.P8442169648616127673

/-! ## A325642.P10584321951157644904

`A324088(A280491(n+1))+A280495(n+1)`
-/

namespace A325642.P10584321951157644904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A280491 (n + 1)).toNat + A280495 (n + 1)

end

end A325642.P10584321951157644904

/-! ## A325642.P723384105826554092

`A324088(A280491(n+1))+A280496(n+1)`
-/

namespace A325642.P723384105826554092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A280491 (n + 1)).toNat + A280496 (n + 1)

end

end A325642.P723384105826554092

/-!
# A325643: a(1) = 1; for n > 1, a(n) is the least divisor d > 1 of n such that A048720(d,k) = n for some k.

The programs for A325643, there is no canonical definition to state claims against.
-/

/-! ## A325643.P14522205486201796807

`(n+1)/A325641(n+1)`
-/

namespace A325643.P14522205486201796807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A325641 (n + 1) : ℚ)

end

end A325643.P14522205486201796807

/-! ## A325643.P860073052576785413

`A325641(n+1)^(-1)*A325641(2*(n+1))`
-/

namespace A325643.P860073052576785413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325641 (n + 1) : ℚ) ^ (-1 : ℤ) * (A325641 (2 * (n + 1)) : ℚ)

end

end A325643.P860073052576785413

/-! ## A325643.P13783498762285318780

`A234575(A325641(n+1)+A000217(n))`
-/

namespace A325643.P13783498762285318780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A325641 (n + 1) + A000217 n).toNat

end

end A325643.P13783498762285318780

/-! ## A325643.P4214299950065631254

`A051537(A325641(n+1)+∑[n])`
-/

namespace A325643.P4214299950065631254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A325641 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A325643.P4214299950065631254

/-! ## A325643.P8818699048185400018

`A126988(A325641(n+1)+∑[n])`
-/

namespace A325643.P8818699048185400018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A325641 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A325643.P8818699048185400018

/-! ## A325643.P1710229162251795945

`A010766(A325641(n+1)+A000217(n))`
-/

namespace A325643.P1710229162251795945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A325641 (n + 1) + A000217 n).toNat

end

end A325643.P1710229162251795945

/-! ## A325643.P2860667338318584842

`A054531(A325641(n+1)+A000217(n))`
-/

namespace A325643.P2860667338318584842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A325641 (n + 1) + A000217 n).toNat

end

end A325643.P2860667338318584842

/-!
# A325644: "Sloping quaternary numbers": write numbers in quaternary under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A325644, there is no canonical definition to state claims against.
-/

/-! ## A325644.P10961446235356065230

`floor(A102370(A004273(n))/2)`
-/

namespace A325644.P10961446235356065230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102370 (A004273 n).toNat : ℚ) / 2⌋

end

end A325644.P10961446235356065230

/-! ## A325644.P8421310276810832024

`xor(A103185(2*n)+n, A103185(2*n))`
-/

namespace A325644.P8421310276810832024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103185 (2 * n) + (n : ℤ)) (A103185 (2 * n))

end

end A325644.P8421310276810832024

/-! ## A325644.P8245399032967463315

`A005843(and(n, A103185(A005843(n))))+n`
-/

namespace A325644.P8245399032967463315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.land (n : ℤ) (A103185 (A005843 n).toNat)).toNat + (n : ℤ)

end

end A325644.P8245399032967463315

/-! ## A325644.P8373537408136145989

`A004526(A102370(A004273(n)))`
-/

namespace A325644.P8373537408136145989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102370 (A004273 n).toNat).toNat

end

end A325644.P8373537408136145989

/-! ## A325644.P8592396420415568236

`A004526(A102370(record[A026741(n)]))`
-/

namespace A325644.P8592396420415568236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A325644.P8592396420415568236

/-! ## A325644.P11225854466893234419

`A004526(A102370(record[A227140(n)]))`
-/

namespace A325644.P11225854466893234419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A325644.P11225854466893234419

/-!
# A325645: "Sloping quinary numbers": write numbers in quinary under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A325645, there is no canonical definition to state claims against.
-/

/-! ## A325645.P2685087506782743214

`A010122(A005920(n))-1+n`
-/

namespace A325645.P2685087506782743214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A005920 n).toNat - 1 + (n : ℤ)

end

end A325645.P2685087506782743214

/-! ## A325645.P2054950684407961166

`A010122(A193068(n+1))-1+n`
-/

namespace A325645.P2054950684407961166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A193068 (n + 1)).toNat - 1 + (n : ℤ)

end

end A325645.P2054950684407961166

/-! ## A325645.P5596014796836478499

`A010122(A244668(n+1))-1+n`
-/

namespace A325645.P5596014796836478499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A244668 (n + 1)).toNat - 1 + (n : ℤ)

end

end A325645.P5596014796836478499

/-! ## A325645.P598558777931342782

`A010122(∑[A000217(3*n+1)])+n-1`
-/

namespace A325645.P598558777931342782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((n : ℤ) - 1)

end

end A325645.P598558777931342782

/-! ## A325645.P8514988172935046727

`A023443(A010122(A005920(n))+n)`
-/

namespace A325645.P8514988172935046727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A010122 (A005920 n).toNat + (n : ℤ)).toNat

end

end A325645.P8514988172935046727

/-!
# A325646: Number of separable partitions of n in which the number of distinct (repeatable) parts is 2.

The programs for A325646, there is no canonical definition to state claims against.
-/

/-! ## A325646.P9922527039462909811

`A325711(n+1)-1`
-/

namespace A325646.P9922527039462909811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325711 (n + 1) - 1

end

end A325646.P9922527039462909811

/-! ## A325646.P17984941253132912573

`A023443(A325711(n+1))`
-/

namespace A325646.P17984941253132912573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325711 (n + 1)).toNat

end

end A325646.P17984941253132912573

/-! ## A325646.P12185723059839598788

`A023444(A325711(n+1)+1)`
-/

namespace A325646.P12185723059839598788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A325711 (n + 1) + 1).toNat

end

end A325646.P12185723059839598788

/-! ## A325646.P17535776920917607704

`A289207(A325711(n+1)+1)`
-/

namespace A325646.P17535776920917607704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A325711 (n + 1) + 1).toNat

end

end A325646.P17535776920917607704

/-! ## A325646.P7296037449721316350

`A023445(A325711(n+1)+2)`
-/

namespace A325646.P7296037449721316350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A325711 (n + 1) + 2).toNat

end

end A325646.P7296037449721316350

/-! ## A325646.P15303663323966552682

`floor(A325711(n+1)+ratio[A033999(n)])`
-/

namespace A325646.P15303663323966552682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325711 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A325646.P15303663323966552682

/-! ## A325646.P10955687227162419053

`(A325711(n+1)+A000096(n))%∑[n+1]`
-/

namespace A325646.P10955687227162419053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325711 (n + 1) + A000096 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A325646.P10955687227162419053

/-! ## A325646.P8306475801259219005

`(A325711(n+1)+∑[n+3])%(A055999(n)+4)`
-/

namespace A325646.P8306475801259219005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325711 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A055999 n + 4)

end

end A325646.P8306475801259219005

/-! ## A325646.P14380424560518951126

`-A007318(val(n+2, 5))*A024000(A325711(n+1))`
-/

namespace A325646.P14380424560518951126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A007318 (SequenceMachineLib.valuation (n + 2) 5) * A024000 (A325711 (n + 1)).toNat)

end

end A325646.P14380424560518951126

/-! ## A325646.P7513380935813744059

`-A007318(ceil(n/(n+1)))*A024000(A325711(n+1))`
-/

namespace A325646.P7513380935813744059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A024000 (A325711 (n + 1)).toNat)

end

end A325646.P7513380935813744059

/-!
# A325647: Number of separable partitions of n in which the number of distinct (repeatable) parts is 3.

The programs for A325647, there is no canonical definition to state claims against.
-/

/-! ## A325647.P3703928608226327725

`A325712(n+1)-A325711(n+1)`
-/

namespace A325647.P3703928608226327725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (n + 1) - A325711 (n + 1)

end

end A325647.P3703928608226327725

/-! ## A325647.P9046604045892498579

`A325712(n+1)-(A325646(n+1)+1)`
-/

namespace A325647.P9046604045892498579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (n + 1) - (A325646 (n + 1) + 1)

end

end A325647.P9046604045892498579

/-! ## A325647.P16033372628131886507

`A325534(n+1)-(A325718(n+1)+A325711(n+1))`
-/

namespace A325647.P16033372628131886507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - (A325718 (n + 1) + A325711 (n + 1))

end

end A325647.P16033372628131886507

/-! ## A325647.P6350054057808537543

`A325534(n+1)-(A325646(n+1)+1)-A325718(n+1)`
-/

namespace A325647.P6350054057808537543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - (A325646 (n + 1) + 1) - A325718 (n + 1)

end

end A325647.P6350054057808537543

/-! ## A325647.P2131113327015998444

`A325717(n+1)-A325718(n+1)`
-/

namespace A325647.P2131113327015998444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325717 (n + 1) - A325718 (n + 1)

end

end A325647.P2131113327015998444

/-!
# A325648: Number of separable partitions of n in which the number of distinct (repeatable) parts is 4.

The programs for A325648, there is no canonical definition to state claims against.
-/

/-! ## A325648.P18429432093136202887

`A325713(n+1)-A325712(n+1)`
-/

namespace A325648.P18429432093136202887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325713 (n + 1) - A325712 (n + 1)

end

end A325648.P18429432093136202887

/-! ## A325648.P17521626387421991278

`A325718(n+1)-A325719(n+1)`
-/

namespace A325648.P17521626387421991278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325718 (n + 1) - A325719 (n + 1)

end

end A325648.P17521626387421991278

/-! ## A325648.P13761820895273255493

`A325718(n+1)-(A325720(n+1)+A325649(n+1))`
-/

namespace A325648.P13761820895273255493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325718 (n + 1) - (A325720 (n + 1) + A325649 (n + 1))

end

end A325648.P13761820895273255493

/-!
# A325649: Number of separable partitions of n in which the number of distinct (repeatable) parts is 5.

The programs for A325649, there is no canonical definition to state claims against.
-/

/-! ## A325649.P8187815440914138180

`A325719(n+1)-A325720(n+1)`
-/

namespace A325649.P8187815440914138180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325719 (n + 1) - A325720 (n + 1)

end

end A325649.P8187815440914138180

/-! ## A325649.P3976431807441137325

`A325534(n+1)-(A325720(n+1)+A325713(n+1))`
-/

namespace A325649.P3976431807441137325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - (A325720 (n + 1) + A325713 (n + 1))

end

end A325649.P3976431807441137325

/-! ## A325649.P13807445646690061477

`A325712(n+1)+A325718(n+1)-A325713(n+1)-A325720(n+1)`
-/

namespace A325649.P13807445646690061477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (n + 1) + (A325718 (n + 1) - A325713 (n + 1)) - A325720 (n + 1)

end

end A325649.P13807445646690061477

/-! ## A325649.P16030523190136312921

`A000041(n+1)-A325535(n+1)-A325720(n+1)-A325713(n+1)`
-/

namespace A325649.P16030523190136312921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A325535 (n + 1) - A325720 (n + 1) - A325713 (n + 1)

end

end A325649.P16030523190136312921

/-! ## A325649.P13557293055803271905

`A325714(n+1)-A325713(n+1)`
-/

namespace A325649.P13557293055803271905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325714 (n + 1) - A325713 (n + 1)

end

end A325649.P13557293055803271905

/-!
# A325650: Number of separable partitions of n in which the number of distinct (repeatable) parts is 6.

The programs for A325650, there is no canonical definition to state claims against.
-/

/-! ## A325650.P14060094312993855485

`A325715(n+1)-A325714(n+1)`
-/

namespace A325650.P14060094312993855485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325715 (n + 1) - A325714 (n + 1)

end

end A325650.P14060094312993855485

/-! ## A325650.P8748912647794585981

`A325715(A000027(n+1))%A325714(n+1)`
-/

namespace A325650.P8748912647794585981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325715 (A000027 (n + 1)).toNat) (A325714 (n + 1))

end

end A325650.P8748912647794585981

/-! ## A325650.P6576531306896491649

`A325715(A181440(n+1))%A325714(n+1)`
-/

namespace A325650.P6576531306896491649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325715 (A181440 (n + 1)).toNat) (A325714 (n + 1))

end

end A325650.P6576531306896491649

/-! ## A325650.P10233996307354259974

`A325715(A052938(2*n))%A325714(n+1)`
-/

namespace A325650.P10233996307354259974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325715 (A052938 (2 * n)).toNat) (A325714 (n + 1))

end

end A325650.P10233996307354259974

/-! ## A325650.P17169401763213728876

`A325715(n+1)-(A325713(n+1)+A325649(n+1))`
-/

namespace A325650.P17169401763213728876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325715 (n + 1) - (A325713 (n + 1) + A325649 (n + 1))

end

end A325650.P17169401763213728876

/-!
# A325651: a(n) = greatest k such that sigma(k) = sigma(n).

The programs for A325651, there is no canonical definition to state claims against.
-/

/-! ## A325651.P16356988059899661352

`A057637(∑{d}[n+1, #])`
-/

namespace A325651.P16356988059899661352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A325651.P16356988059899661352

/-! ## A325651.P6181245953650829084

`A057637(A000203(n+1))`
-/

namespace A325651.P6181245953650829084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A000203 (n + 1)).toNat

end

end A325651.P6181245953650829084

/-! ## A325651.P5060789294060229941

`A057637(abs(Δ[A330725(n)]))`
-/

namespace A325651.P5060789294060229941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 |f1 (n + 1) - f1 n|.toNat

end

end A325651.P5060789294060229941

/-! ## A325651.P15554794474202216541

`A057637(A262610(Δ[n²]))`
-/

namespace A325651.P15554794474202216541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A325651.P15554794474202216541

/-! ## A325651.P12464908278027557087

`A057637(∑[A340793(n+1)])`
-/

namespace A325651.P12464908278027557087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325651.P12464908278027557087

/-! ## A325651.P9436853915943353612

`A057637(A039653(n+1)+1)`
-/

namespace A325651.P9436853915943353612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A039653 (n + 1) + 1).toNat

end

end A325651.P9436853915943353612

/-! ## A325651.P13563487021200072464

`A057637(A274535(n+1)/5)`
-/

namespace A325651.P13563487021200072464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.roundAway ((A274535 (n + 1) : ℚ) / 5)).toNat

end

end A325651.P13563487021200072464

/-! ## A325651.P6367192262356331470

`A057637(A001065(n+1)+1+n)`
-/

namespace A325651.P6367192262356331470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A325651.P6367192262356331470

/-! ## A325651.P16930625835389753238

`A057637(A064987(n+1)/(n+1))`
-/

namespace A325651.P16930625835389753238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A325651.P16930625835389753238

/-! ## A325651.P17490173239771524969

`A057637(A051612(n+1)+A000010(n+1))`
-/

namespace A325651.P17490173239771524969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A051612 (n + 1) + A000010 (n + 1)).toNat

end

end A325651.P17490173239771524969

/-! ## A325651.P15350897134975020268

`A057637(A048146(n+1)+A034448(n+1))`
-/

namespace A325651.P15350897134975020268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A325651.P15350897134975020268

/-! ## A325651.P3052089021574179646

`A057637(A065387(n+1)-A000010(n+1))`
-/

namespace A325651.P3052089021574179646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A065387 (n + 1) - A000010 (n + 1)).toNat

end

end A325651.P3052089021574179646

/-! ## A325651.P1644109285615906849

`A057637(A057640(n+1)-A057641(n+1))`
-/

namespace A325651.P1644109285615906849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A057640 (n + 1) - A057641 (n + 1)).toNat

end

end A325651.P1644109285615906849

/-!
# A325652: a(n) = the sum of numbers k such that sigma(k) = sigma(n).

The programs for A325652, there is no canonical definition to state claims against.
-/

/-! ## A325652.P15267119940608045968

`A258913(∑{d}[n+1, #])`
-/

namespace A325652.P15267119940608045968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A325652.P15267119940608045968

/-! ## A325652.P8379309746108797517

`A258913(Δ[A160664(n)])`
-/

namespace A325652.P8379309746108797517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (f1 (n + 1) - f1 n).toNat

end

end A325652.P8379309746108797517

/-! ## A325652.P8562496394964253679

`A258913(A000203(n+1))`
-/

namespace A325652.P8562496394964253679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A000203 (n + 1)).toNat

end

end A325652.P8562496394964253679

/-! ## A325652.P978558669308101432

`A258913(abs(A143348(n+1)))`
-/

namespace A325652.P978558669308101432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 |A143348 (n + 1)|.toNat

end

end A325652.P978558669308101432

/-! ## A325652.P2358371545219126838

`A258913(sqrt(A072861(n+1)))`
-/

namespace A325652.P2358371545219126838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A325652.P2358371545219126838

/-! ## A325652.P9809824168930670820

`A258913(∑[A340793(n+1)])`
-/

namespace A325652.P9809824168930670820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325652.P9809824168930670820

/-! ## A325652.P4272821877256110659

`A258913(A039653(n+1)+1)`
-/

namespace A325652.P4272821877256110659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A039653 (n + 1) + 1).toNat

end

end A325652.P4272821877256110659

/-! ## A325652.P1147306100066140483

`A258913(A088580(n+1)-1)`
-/

namespace A325652.P1147306100066140483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A088580 (n + 1) - 1).toNat

end

end A325652.P1147306100066140483

/-! ## A325652.P6524900940264797516

`A258913(A245092(2*n+1))`
-/

namespace A325652.P6524900940264797516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A245092 (2 * n + 1)).toNat

end

end A325652.P6524900940264797516

/-! ## A325652.P9060789064011078539

`A258913(A074400(n+1)/2)`
-/

namespace A325652.P9060789064011078539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A325652.P9060789064011078539

/-! ## A325652.P7268313286694293312

`A258913(A146076(2*(n+1))/2)`
-/

namespace A325652.P7268313286694293312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A325652.P7268313286694293312

/-! ## A325652.P17122778747630676260

`A258913(A001065(n+1)+1+n)`
-/

namespace A325652.P17122778747630676260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A325652.P17122778747630676260

/-! ## A325652.P2640087811120456853

`A258913(A155085(n+1)-(n+1))`
-/

namespace A325652.P2640087811120456853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A325652.P2640087811120456853

/-! ## A325652.P1080068311678032899

`A258913(A064987(n+1)/(n+1))`
-/

namespace A325652.P1080068311678032899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A325652.P1080068311678032899

/-! ## A325652.P2922660153816128407

`A258913(A224880(n+1)-2*(n+1))`
-/

namespace A325652.P2922660153816128407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A224880 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A325652.P2922660153816128407

/-! ## A325652.P134224157629699975

`A258913(A146076(n+1)+A000593(n+1))`
-/

namespace A325652.P134224157629699975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A325652.P134224157629699975

/-! ## A325652.P15033715873963458734

`A258913(A088001(n+1)+A088000(n+1))`
-/

namespace A325652.P15033715873963458734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A088001 (n + 1) + A088000 (n + 1)).toNat

end

end A325652.P15033715873963458734

/-! ## A325652.P1898934413073498283

`A258913(A326126(n+1)+A007913(n+1))`
-/

namespace A325652.P1898934413073498283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A326126 (n + 1) + A007913 (n + 1)).toNat

end

end A325652.P1898934413073498283

/-!
# A325653: a(n) = the product of numbers k such that sigma(k) = sigma(n).

The programs for A325653, there is no canonical definition to state claims against.
-/

/-! ## A325653.P7087303438654782299

`A361853(A119480(n+1))+1+n`
-/

namespace A325653.P7087303438654782299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361853 (A119480 (n + 1)).toNat + 1 + (n : ℤ)

end

end A325653.P7087303438654782299

/-! ## A325653.P14488751764438007272

`(n+1)*A272817(A160433(A087202(n+3)))`
-/

namespace A325653.P14488751764438007272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A272817 (A160433 (A087202 (n + 3)).toNat).toNat

end

end A325653.P14488751764438007272

/-! ## A325653.P7897781140233854887

`lcm(A020753(A085908(n+1)), A325651(n+1))`
-/

namespace A325653.P7897781140233854887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020753 (A085908 (n + 1)).toNat) (A325651 (n + 1))

end

end A325653.P7897781140233854887

/-!
# A325654: Numbers m with a divisor d satisfying sigma(d) = 2*m.

The programs for A325654, there is no canonical definition to state claims against.
-/

/-! ## A325654.P15404102792738716117

`A001221(A019326(n))*A325637(n+1)`
-/

namespace A325654.P15404102792738716117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A019326 n).toNat * A325637 (n + 1)

end

end A325654.P15404102792738716117

/-! ## A325654.P8928813339836789377

`A115722(A000670(n))*A325637(n+1)`
-/

namespace A325654.P8928813339836789377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A000670 n).toNat * A325637 (n + 1)

end

end A325654.P8928813339836789377

/-! ## A325654.P1521421769865567230

`A001227(A006139(n))*A336702(n+2)`
-/

namespace A325654.P1521421769865567230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A006139 n).toNat * A336702 (n + 2)

end

end A325654.P1521421769865567230

/-!
# A325656: a(n) = (1/24)*n*((4*n + 3)*(2*n^2 + 1) - 3*(-1)^n).

The programs for A325656, the canonical program `A325656.P6997343028178280890` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325656 has offset 0).

The definition of A325656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325656.P6997343028178280890

`1/24*n*((4*n+3)*(2*n²+1)-3*(-1)^n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325656

/-- `1/24*n*((4*n+3)*(2*n²+1)-3*(-1)^n)` -/
def P6997343028178280890.Spec : Prop :=
  ∀ n, P6997343028178280890.a n = (A325656 n : ℚ)

end A325656

/-! ## A325656.P12489917122799303976

`lcm(n, n*∑[n²-floor(n/2)])`
-/

namespace A325656.P12489917122799303976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A325656.P12489917122799303976

namespace A325656

/-- `lcm(n, n*∑[n²-floor(n/2)])` -/
def P12489917122799303976.Spec : Prop :=
  ∀ n, (P12489917122799303976.a n : ℤ) = A325656 n

end A325656

/-! ## A325656.P1372635477730889948

`A212578(n)+A071246(n)`
-/

namespace A325656.P1372635477730889948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n + A071246 n

end

end A325656.P1372635477730889948

namespace A325656

/-- `A212578(n)+A071246(n)` -/
def P1372635477730889948.Spec : Prop :=
  ∀ n, P1372635477730889948.a n = A325656 n

end A325656

/-! ## A325656.P9422318687713262235

`A325517(n)+A008911(n)`
-/

namespace A325656.P9422318687713262235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325517 n + A008911 n

end

end A325656.P9422318687713262235

namespace A325656

/-- `A325517(n)+A008911(n)` -/
def P9422318687713262235.Spec : Prop :=
  ∀ n, P9422318687713262235.a n = A325656 n

end A325656

/-! ## A325656.P4019096632805333115

`A006584(n)+A037270(n)-A071244(n)`
-/

namespace A325656.P4019096632805333115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 n + (A037270 n - A071244 n)

end

end A325656.P4019096632805333115

namespace A325656

/-- `A006584(n)+A037270(n)-A071244(n)` -/
def P4019096632805333115.Spec : Prop :=
  ∀ n, P4019096632805333115.a n = A325656 n

end A325656

/-! ## A325656.P13728200696610550901

`record[A025480(n)*A173722(n)]`
-/

namespace A325656.P13728200696610550901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n * A173722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325656.P13728200696610550901

namespace A325656

/-- `record[A025480(n)*A173722(n)]` -/
def P13728200696610550901.Spec : Prop :=
  ∀ n, P13728200696610550901.a n = A325656 n

end A325656

/-!
# A325657: a(n) = (1/2)*(-1 + (-1)^n)*(n-1) + n^2.

The programs for A325657, the canonical program `A325657.P4006859683767330413` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325657 has offset 0).

The definition of A325657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325657.P4006859683767330413

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7, a(4)=16`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325657

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4006859683767330413.Spec : Prop :=
  ∀ n, P4006859683767330413.a n = A325657 n

theorem P4006859683767330413.correct : P4006859683767330413.Spec := by
  intro n
  simp only [A325657]

end A325657

/-! ## A325657.P5042441218705821584

`ceil((comp[or(2, n)]/2)²)`
-/

namespace A325657.P5042441218705821584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2) ^ 2⌉

end

end A325657.P5042441218705821584

namespace A325657

/-- `ceil((comp[or(2, n)]/2)²)` -/
def P5042441218705821584.Spec : Prop :=
  ∀ n, P5042441218705821584.a n = A325657 n

end A325657

/-! ## A325657.P17700833725018411142

`(n-1)*or(1, n)+1`
-/

namespace A325657.P17700833725018411142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.lor 1 n : ℤ) + 1

end

end A325657.P17700833725018411142

namespace A325657

/-- `(n-1)*or(1, n)+1` -/
def P17700833725018411142.Spec : Prop :=
  ∀ n, P17700833725018411142.a n = A325657 n

end A325657

/-! ## A325657.P6122480381900959221

`1-(1-n)*or(1, n)`
-/

namespace A325657.P6122480381900959221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (1 - (n : ℤ)) * (Nat.lor 1 n : ℤ)

end

end A325657.P6122480381900959221

namespace A325657

/-- `1-(1-n)*or(1, n)` -/
def P6122480381900959221.Spec : Prop :=
  ∀ n, P6122480381900959221.a n = A325657 n

end A325657

/-! ## A325657.P7532978233260209425

`ceil((comp[or(2, n)]/2)^2)`
-/

namespace A325657.P7532978233260209425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2) ^ 2⌉

end

end A325657.P7532978233260209425

namespace A325657

/-- `ceil((comp[or(2, n)]/2)^2)` -/
def P7532978233260209425.Spec : Prop :=
  ∀ n, P7532978233260209425.a n = A325657 n

end A325657

/-! ## A325657.P15640933741394211613

`ceil((n%2/2-n)²)`
-/

namespace A325657.P15640933741394211613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n % 2 : ℕ) : ℚ) / 2 - (n : ℚ)) ^ 2⌉

end

end A325657.P15640933741394211613

namespace A325657

/-- `ceil((n%2/2-n)²)` -/
def P15640933741394211613.Spec : Prop :=
  ∀ n, P15640933741394211613.a n = A325657 n

end A325657

/-! ## A325657.P673559465435325280

`ceil((and(1, n)/2-n)²)`
-/

namespace A325657.P673559465435325280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.land 1 n : ℚ) / 2 - (n : ℚ)) ^ 2⌉

end

end A325657.P673559465435325280

namespace A325657

/-- `ceil((and(1, n)/2-n)²)` -/
def P673559465435325280.Spec : Prop :=
  ∀ n, P673559465435325280.a n = A325657 n

end A325657

/-! ## A325657.P2092070710980714166

`∑[n]+C(and(n, -2), 2)`
-/

namespace A325657.P2092070710980714166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Int.land (n : ℤ) (-2)).toNat 2

end

end A325657.P2092070710980714166

namespace A325657

/-- `∑[n]+C(and(n, -2), 2)` -/
def P2092070710980714166.Spec : Prop :=
  ∀ n, (P2092070710980714166.a n : ℤ) = A325657 n

end A325657

/-! ## A325657.P5329925627777382300

`(n-1)*and(n, -2)+n`
-/

namespace A325657.P5329925627777382300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.land (n : ℤ) (-2) + (n : ℤ)

end

end A325657.P5329925627777382300

namespace A325657

/-- `(n-1)*and(n, -2)+n` -/
def P5329925627777382300.Spec : Prop :=
  ∀ n, P5329925627777382300.a n = A325657 n

end A325657

/-! ## A325657.P4767808704917769235

`n²-(n-1)*and(1, n)`
-/

namespace A325657.P4767808704917769235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

end

end A325657.P4767808704917769235

namespace A325657

/-- `n²-(n-1)*and(1, n)` -/
def P4767808704917769235.Spec : Prop :=
  ∀ n, P4767808704917769235.a n = A325657 n

end A325657

/-! ## A325657.P11364296968716885839

`n²+1-n^and(1, n)`
-/

namespace A325657.P11364296968716885839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (1 - (n ^ Nat.land 1 n : ℤ))

end

end A325657.P11364296968716885839

namespace A325657

/-- `n²+1-n^and(1, n)` -/
def P11364296968716885839.Spec : Prop :=
  ∀ n, P11364296968716885839.a n = A325657 n

end A325657

/-! ## A325657.P942920938440944414

`n²-xor(1, n)%(n+1)`
-/

namespace A325657.P942920938440944414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((Nat.xor 1 n % (n + 1) : ℕ) : ℤ)

end

end A325657.P942920938440944414

namespace A325657

/-- `n²-xor(1, n)%(n+1)` -/
def P942920938440944414.Spec : Prop :=
  ∀ n, P942920938440944414.a n = A325657 n

end A325657

/-! ## A325657.P11165370306992227855

`n²-lcm(n-1, and(1, n))`
-/

namespace A325657.P11165370306992227855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℤ)

end

end A325657.P11165370306992227855

namespace A325657

/-- `n²-lcm(n-1, and(1, n))` -/
def P11165370306992227855.Spec : Prop :=
  ∀ n, P11165370306992227855.a n = A325657 n

end A325657

/-! ## A325657.P1659225675673058275

`(n-and(1, n))*(n-1)+n`
-/

namespace A325657.P1659225675673058275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land 1 n : ℤ)) * ((n : ℤ) - 1) + (n : ℤ)

end

end A325657.P1659225675673058275

namespace A325657

/-- `(n-and(1, n))*(n-1)+n` -/
def P1659225675673058275.Spec : Prop :=
  ∀ n, P1659225675673058275.a n = A325657 n

end A325657

/-! ## A325657.P10195266243652524478

`n-(and(1, n)-n)*(n-1)`
-/

namespace A325657.P10195266243652524478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.land 1 n : ℤ) - (n : ℤ)) * ((n : ℤ) - 1)

end

end A325657.P10195266243652524478

namespace A325657

/-- `n-(and(1, n)-n)*(n-1)` -/
def P10195266243652524478.Spec : Prop :=
  ∀ n, P10195266243652524478.a n = A325657 n

end A325657

/-! ## A325657.P10280505744098870216

`ceil(n²*or(1, n)/(n+1))`
-/

namespace A325657.P10280505744098870216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)⌉

end

end A325657.P10280505744098870216

namespace A325657

/-- `ceil(n²*or(1, n)/(n+1))` -/
def P10280505744098870216.Spec : Prop :=
  ∀ n, P10280505744098870216.a n = A325657 n

end A325657

/-! ## A325657.P9265937902268815529

`n²+n^∑[(-1)^n]-n`
-/

namespace A325657.P9265937902268815529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - (n : ℚ))

end

end A325657.P9265937902268815529

namespace A325657

/-- `n²+n^∑[(-1)^n]-n` -/
def P9265937902268815529.Spec : Prop :=
  ∀ n, P9265937902268815529.a n = (A325657 n : ℚ)

end A325657

/-! ## A325657.P16006396592744693376

`ceil(((1-or(1, n))²+n²)/2)`
-/

namespace A325657.P16006396592744693376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (Nat.lor 1 n : ℤ)) ^ 2 + (n ^ 2 : ℤ) : ℚ) / 2⌉

end

end A325657.P16006396592744693376

namespace A325657

/-- `ceil(((1-or(1, n))²+n²)/2)` -/
def P16006396592744693376.Spec : Prop :=
  ∀ n, P16006396592744693376.a n = A325657 n

end A325657

/-! ## A325657.P11378379730403595133

`floor(((or(1, n)+n-1)²+3)/4)`
-/

namespace A325657.P11378379730403595133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1)) ^ 2 + 3 : ℚ) / 4⌋

end

end A325657.P11378379730403595133

namespace A325657

/-- `floor(((or(1, n)+n-1)²+3)/4)` -/
def P11378379730403595133.Spec : Prop :=
  ∀ n, P11378379730403595133.a n = A325657 n

end A325657

/-! ## A325657.P13504807056960333871

`∪[(2*n)²+2*n+1, (2*n)²]`
-/

namespace A325657.P13504807056960333871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A325657.P13504807056960333871

namespace A325657

/-- `∪[(2*n)²+2*n+1, (2*n)²]` -/
def P13504807056960333871.Spec : Prop :=
  ∀ n, (P13504807056960333871.a n : ℤ) = A325657 n

end A325657

/-!
# A325658: Brazilian composites of the form 1 + b + b^2 + b^3 + ... + b^k, b > 1, k > 1.

The programs for A325658, there is no canonical definition to state claims against.
-/

/-! ## A325658.P7631682139946538331

`filter[A053696(n+1), A005171(#)]`
-/

namespace A325658.P7631682139946538331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325658.P7631682139946538331

/-! ## A325658.P9142276088178042840

`filter[A053696(n+1), A066247(#)]`
-/

namespace A325658.P9142276088178042840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A325658.P9142276088178042840

/-! ## A325658.P1620617357535680944

`filter[A053696(n+1), A202238(#)]`
-/

namespace A325658.P1620617357535680944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A325658.P1620617357535680944

/-! ## A325658.P17893773087948692169

`filter[A053696(n+1), A292438(#)]`
-/

namespace A325658.P17893773087948692169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A325658.P17893773087948692169

/-! ## A325658.P10318985671204599578

`filter[A053696(n+1), A323162(#)]`
-/

namespace A325658.P10318985671204599578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A325658.P10318985671204599578

/-! ## A325658.P9966343182515609245

`∩[A005381(n+1), A053696(n+1)]`
-/

namespace A325658.P9966343182515609245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P9966343182515609245

/-! ## A325658.P17071166985387178228

`∩[A009188(n+1), A053696(n+1)]`
-/

namespace A325658.P17071166985387178228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P17071166985387178228

/-! ## A325658.P12922219902651719665

`∩[A053696(n+1), A138593(n+1)]`
-/

namespace A325658.P12922219902651719665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P12922219902651719665

/-! ## A325658.P17350433880953746058

`∩[A053696(n+1), A264828(n+1)]`
-/

namespace A325658.P17350433880953746058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P17350433880953746058

/-! ## A325658.P1711417802190326288

`∩[A053696(n+1), A164276(n+1)]`
-/

namespace A325658.P1711417802190326288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P1711417802190326288

/-! ## A325658.P11994607818345650259

`∩[A002808(n+1), A053696(n+1)]`
-/

namespace A325658.P11994607818345650259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P11994607818345650259

/-! ## A325658.P12234576005958996134

`∩[A018252(n+1), A053696(n+1)]`
-/

namespace A325658.P12234576005958996134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P12234576005958996134

/-! ## A325658.P13314282708665344135

`∩[A053696(n+1), A056653(n+1)]`
-/

namespace A325658.P13314282708665344135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P13314282708665344135

/-! ## A325658.P2460105955396079936

`∩[A053696(n+1), A065090(n+1)]`
-/

namespace A325658.P2460105955396079936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P2460105955396079936

/-! ## A325658.P394131451330915946

`∩[A053696(n+1), A138592(n+1)]`
-/

namespace A325658.P394131451330915946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P394131451330915946

/-! ## A325658.P2863649901404245573

`∩[A053696(n+1), A141468(n+1)]`
-/

namespace A325658.P2863649901404245573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P2863649901404245573

/-! ## A325658.P9700278349249779975

`∩[A053696(n+1), A171581(n+1)]`
-/

namespace A325658.P9700278349249779975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P9700278349249779975

/-! ## A325658.P18118165212211305404

`∩[A053696(n+1), A173905(n+1)]`
-/

namespace A325658.P18118165212211305404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P18118165212211305404

/-! ## A325658.P4463242868029759475

`∩[A053696(n+1), A176423(n+1)]`
-/

namespace A325658.P4463242868029759475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P4463242868029759475

/-! ## A325658.P13206523100999936792

`∩[A053696(n+1), A220571(n+1)]`
-/

namespace A325658.P13206523100999936792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325658.P13206523100999936792

/-!
# A325659: Smallest Brazilian composite in base n >= 2 which can be represented as a string of three or more 1's in this base.

The programs for A325659, there is no canonical definition to state claims against.
-/

/-! ## A325659.P11953141139261450516

`A349201(2*n+5)%A349223(A349204(n+2))`
-/

namespace A325659.P11953141139261450516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349201 (2 * n + 5)) (A349223 (A349204 (n + 2)).toNat)

end

end A325659.P11953141139261450516

/-!
# A325660: Number of ones in the q-signature of n.

The programs for A325660, there is no canonical definition to state claims against.
-/

/-! ## A325660.P7334472656914427768

`∑{e}[A324922(n+1), A000220(#)]`
-/

namespace A325660.P7334472656914427768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000220 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P7334472656914427768

/-! ## A325660.P3540888315943473689

`∑{e}[A324922(n+1), A004530(#)]`
-/

namespace A325660.P3540888315943473689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A004530 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P3540888315943473689

/-! ## A325660.P8412706078578558030

`∑{e}[A324922(n+1), A010057(#)]`
-/

namespace A325660.P8412706078578558030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010057 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P8412706078578558030

/-! ## A325660.P17310711709795204905

`∑{e}[A324922(n+1), A014047(#)]`
-/

namespace A325660.P17310711709795204905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014047 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P17310711709795204905

/-! ## A325660.P3489040390863613354

`∑{e}[A324922(n+1), A016402(#)]`
-/

namespace A325660.P3489040390863613354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A016402 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P3489040390863613354

/-! ## A325660.P4076690568848773291

`∑{e}[A324922(n+1), A051224(#)]`
-/

namespace A325660.P4076690568848773291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A051224 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P4076690568848773291

/-! ## A325660.P11602222339661781847

`∑{e}[A324922(n+1), A060396(#)]`
-/

namespace A325660.P11602222339661781847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A060396 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P11602222339661781847

/-! ## A325660.P9657982942441937559

`∑{e}[A324922(n+1), A069531(#)]`
-/

namespace A325660.P9657982942441937559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069531 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P9657982942441937559

/-! ## A325660.P5373775409050597056

`∑{e}[A324922(n+1), A098108(#)]`
-/

namespace A325660.P5373775409050597056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A098108 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P5373775409050597056

/-! ## A325660.P8579608572903885779

`∑{e}[A324922(n+1), A178333(#)]`
-/

namespace A325660.P8579608572903885779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A178333 (Nat.factorization (f1 n).natAbs p)

end

end A325660.P8579608572903885779

/-!
# A325661: q-powerful numbers. Numbers whose factorization into factors prime(i)/i has no factor of multiplicity 1.

The programs for A325661, there is no canonical definition to state claims against.
-/

/-! ## A325661.P13829586594539938811

`∩[A360070(n+1), A388715(n+1)]`
-/

namespace A325661.P13829586594539938811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325661.P13829586594539938811

/-! ## A325661.P10499209644467568387

`record[A322820(n+1)]^exp(A061858(n))`
-/

namespace A325661.P10499209644467568387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ (Real.exp (A061858 n : ℝ))

end

end A325661.P10499209644467568387

/-! ## A325661.P1349219865131270714

`record[A322820(n+1)%A234114(n+1)]`
-/

namespace A325661.P1349219865131270714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322820 (n + 1)) (A234114 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325661.P1349219865131270714

/-! ## A325661.P16939015446520275967

`record[A322820(n+2)%A204867(n+1)]`
-/

namespace A325661.P16939015446520275967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322820 (n + 2)) (A204867 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325661.P16939015446520275967

/-! ## A325661.P12867032578019943885

`∩[A339462(n+1), A347202(n+1)]`
-/

namespace A325661.P12867032578019943885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325661.P12867032578019943885

/-!
# A325662: Matula-Goebel numbers of regular rooted stars.

The programs for A325662, there is no canonical definition to state claims against.
-/

/-! ## A325662.P13954219998710429183

`∩[A000961(n+1), A325663(n+1)]`
-/

namespace A325662.P13954219998710429183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325662.P13954219998710429183

/-! ## A325662.P6520999908740979208

`∩[A302498(n+1), A325663(n+1)]`
-/

namespace A325662.P6520999908740979208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325662.P6520999908740979208

/-! ## A325662.P3451915991955808560

`∩[A325663(n+1), A382215(n+1)]`
-/

namespace A325662.P3451915991955808560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325662.P3451915991955808560

/-! ## A325662.P3197394458696350932

`∩[A322030(n+1), A325663(n+1)]`
-/

namespace A325662.P3197394458696350932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325662.P3197394458696350932

/-! ## A325662.P17980192165531365493

`record[A053585(A325663(n+1))]`
-/

namespace A325662.P17980192165531365493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A325663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325662.P17980192165531365493

/-!
# A325663: Matula-Goebel numbers of not necessarily regular rooted stars.

The programs for A325663, the canonical program `A325663.P670906074571644087` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325663 has offset 1).

The definition of A325663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325663.P670906074571644087

`eq[A001222(n+1), A109129(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A325663

/-- `eq[A001222(n+1), A109129(n+1)]+1` -/
def P670906074571644087.Spec : Prop :=
  ∀ n, (P670906074571644087.a n : ℤ) = A325663 (n + 1)

theorem P670906074571644087.correct : P670906074571644087.Spec := by
  intro n
  simp only [A325663, Nat.add_sub_cancel]

end A325663

/-! ## A325663.P12822660823098171924

`eq[A003963(n+1), A198328(n+1)]+1`
-/

namespace A325663.P12822660823098171924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325663.P12822660823098171924

namespace A325663

/-- `eq[A003963(n+1), A198328(n+1)]+1` -/
def P12822660823098171924.Spec : Prop :=
  ∀ n, (P12822660823098171924.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P15860294659519970721

`eq[A196048(n+1), A196050(n+1)]+1`
-/

namespace A325663.P15860294659519970721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325663.P15860294659519970721

namespace A325663

/-- `eq[A196048(n+1), A196050(n+1)]+1` -/
def P15860294659519970721.Spec : Prop :=
  ∀ n, (P15860294659519970721.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P14935227334978061404

`eq[1, A196049(8*(n+1))]+1`
-/

namespace A325663.P14935227334978061404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (8 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325663.P14935227334978061404

namespace A325663

/-- `eq[1, A196049(8*(n+1))]+1` -/
def P14935227334978061404.Spec : Prop :=
  ∀ n, (P14935227334978061404.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P1132739666094744424

`eq[1, A196049(A022144(n))]`
-/

namespace A325663.P1132739666094744424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325663.P1132739666094744424

namespace A325663

/-- `eq[1, A196049(A022144(n))]` -/
def P1132739666094744424.Spec : Prop :=
  ∀ n, (P1132739666094744424.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P10858155394751652916

`lt[A196049(A022144(n+1)), 2]+1`
-/

namespace A325663.P10858155394751652916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A022144 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325663.P10858155394751652916

namespace A325663

/-- `lt[A196049(A022144(n+1)), 2]+1` -/
def P10858155394751652916.Spec : Prop :=
  ∀ n, (P10858155394751652916.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P3509299862712846851

`eq[1, A196049(2*A298026(n))]`
-/

namespace A325663.P3509299862712846851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (2 * A298026 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325663.P3509299862712846851

namespace A325663

/-- `eq[1, A196049(2*A298026(n))]` -/
def P3509299862712846851.Spec : Prop :=
  ∀ n, (P3509299862712846851.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P3957171955353221224

`eq[1, A196049(6*(A004273(n)+1))]`
-/

namespace A325663.P3957171955353221224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (6 * (A004273 n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325663.P3957171955353221224

namespace A325663

/-- `eq[1, A196049(6*(A004273(n)+1))]` -/
def P3957171955353221224.Spec : Prop :=
  ∀ n, (P3957171955353221224.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P7387678570087423845

`eq[1, A196049(A008706(A008586(n)))]`
-/

namespace A325663.P7387678570087423845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A008706 (A008586 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325663.P7387678570087423845

namespace A325663

/-- `eq[1, A196049(A008706(A008586(n)))]` -/
def P7387678570087423845.Spec : Prop :=
  ∀ n, (P7387678570087423845.a n : ℤ) = A325663 (n + 1)

end A325663

/-! ## A325663.P5010815211183871968

`record[A198328(A064988(n+1))]`
-/

namespace A325663.P5010815211183871968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325663.P5010815211183871968

namespace A325663

/-- `record[A198328(A064988(n+1))]` -/
def P5010815211183871968.Spec : Prop :=
  ∀ n, P5010815211183871968.a n = A325663 (n + 1)

end A325663

/-!
# A325664: First term of n-th difference sequence of (floor(k*r)), r = sqrt(2), k >= 0.

The programs for A325664, there is no canonical definition to state claims against.
-/

/-! ## A325664.P18417760756040782113

`A033999(n+1)-A325665(n+1)`
-/

namespace A325664.P18417760756040782113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325665 (n + 1)

end

end A325664.P18417760756040782113

/-! ## A325664.P6119170492584204661

`A325674(n+1)-A325840(n+1)`
-/

namespace A325664.P6119170492584204661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325674 (n + 1) - A325840 (n + 1)

end

end A325664.P6119170492584204661

/-! ## A325664.P8694972832036361310

`n-(A325665(n+1)+A004442(n))`
-/

namespace A325664.P8694972832036361310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A325665 (n + 1) + A004442 n)

end

end A325664.P8694972832036361310

/-! ## A325664.P1582754402938853384

`A055975(A166519(n))-A325665(n+1)`
-/

namespace A325664.P1582754402938853384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325665 (n + 1)

end

end A325664.P1582754402938853384

/-! ## A325664.P15605629067689955710

`A000035(n)-(A325665(n+1)+A000035(n+1))`
-/

namespace A325664.P15605629067689955710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - (A325665 (n + 1) + A000035 (n + 1))

end

end A325664.P15605629067689955710

/-! ## A325664.P17248388733420334598

`A325666(n+1)+A325667(n+1)-A325665(n+1)`
-/

namespace A325664.P17248388733420334598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325665 (n + 1))

end

end A325664.P17248388733420334598

/-! ## A325664.P4053685759459957711

`A325668(n+1)+A325669(n+1)-A325665(n+1)`
-/

namespace A325664.P4053685759459957711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325665 (n + 1))

end

end A325664.P4053685759459957711

/-! ## A325664.P14178570110236298819

`A325670(n+1)+A325671(n+1)-A325665(n+1)`
-/

namespace A325664.P14178570110236298819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325665 (n + 1))

end

end A325664.P14178570110236298819

/-! ## A325664.P17016740011130925889

`A325672(n+1)+A325673(n+1)-A325665(n+1)`
-/

namespace A325664.P17016740011130925889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325665 (n + 1))

end

end A325664.P17016740011130925889

/-! ## A325664.P456288427190024208

`A325674(n+1)+A325675(n+1)-A325665(n+1)`
-/

namespace A325664.P456288427190024208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325674 (n + 1) + (A325675 (n + 1) - A325665 (n + 1))

end

end A325664.P456288427190024208

/-! ## A325664.P6032801941936345987

`A325745(n+1)+A325746(n+1)-A325665(n+1)`
-/

namespace A325664.P6032801941936345987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + (A325746 (n + 1) - A325665 (n + 1))

end

end A325664.P6032801941936345987

/-!
# A325665: First term of n-th difference sequence of (floor(k*r)), r = -sqrt(2), k >= 0.

The programs for A325665, there is no canonical definition to state claims against.
-/

/-! ## A325665.P12986367490992655545

`A325840(n+1)+A325675(n+1)`
-/

namespace A325665.P12986367490992655545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325840 (n + 1) + A325675 (n + 1)

end

end A325665.P12986367490992655545

/-! ## A325665.P14972648515377972069

`A033999(n+1)-A325664(n+1)`
-/

namespace A325665.P14972648515377972069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325664 (n + 1)

end

end A325665.P14972648515377972069

/-! ## A325665.P18006704202036320603

`A055975(A166519(n))-A325664(n+1)`
-/

namespace A325665.P18006704202036320603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325664 (n + 1)

end

end A325665.P18006704202036320603

/-! ## A325665.P14185726184911970353

`A038608(n+1)+A038608(n)-A325664(n+1)`
-/

namespace A325665.P14185726184911970353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) + (A038608 n - A325664 (n + 1))

end

end A325665.P14185726184911970353

/-! ## A325665.P5859925840887663416

`A325666(n+1)+A325667(n+1)-A325664(n+1)`
-/

namespace A325665.P5859925840887663416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325664 (n + 1))

end

end A325665.P5859925840887663416

/-! ## A325665.P17612046075828945009

`A325668(n+1)+A325669(n+1)-A325664(n+1)`
-/

namespace A325665.P17612046075828945009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325664 (n + 1))

end

end A325665.P17612046075828945009

/-! ## A325665.P15460823379216644578

`A325670(n+1)+A325671(n+1)-A325664(n+1)`
-/

namespace A325665.P15460823379216644578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325664 (n + 1))

end

end A325665.P15460823379216644578

/-! ## A325665.P15886995113121492073

`A325672(n+1)+A325673(n+1)-A325664(n+1)`
-/

namespace A325665.P15886995113121492073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325664 (n + 1))

end

end A325665.P15886995113121492073

/-! ## A325665.P1112274975890685926

`A325674(n+1)+A325675(n+1)-A325664(n+1)`
-/

namespace A325665.P1112274975890685926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325674 (n + 1) + (A325675 (n + 1) - A325664 (n + 1))

end

end A325665.P1112274975890685926

/-! ## A325665.P1287600362355322464

`A325745(n+1)+A325746(n+1)-A325664(n+1)`
-/

namespace A325665.P1287600362355322464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + (A325746 (n + 1) - A325664 (n + 1))

end

end A325665.P1287600362355322464

/-!
# A325666: First term of n-th difference sequence of (floor(k*r)), r = sqrt(3), k >= 0.

The programs for A325666, there is no canonical definition to state claims against.
-/

/-! ## A325666.P11915860483896303521

`A033999(n+1)-A325667(n+1)`
-/

namespace A325666.P11915860483896303521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325667 (n + 1)

end

end A325666.P11915860483896303521

/-! ## A325666.P10013375739002657678

`A055975(A166519(n))-A325667(n+1)`
-/

namespace A325666.P10013375739002657678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325667 (n + 1)

end

end A325666.P10013375739002657678

/-! ## A325666.P3671493047364480954

`A000035(n)-(A325667(n+1)+A000035(n+1))`
-/

namespace A325666.P3671493047364480954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - (A325667 (n + 1) + A000035 (n + 1))

end

end A325666.P3671493047364480954

/-! ## A325666.P8480629470615201568

`A325664(n+1)+A325665(n+1)-A325667(n+1)`
-/

namespace A325666.P8480629470615201568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325667 (n + 1))

end

end A325666.P8480629470615201568

/-! ## A325666.P15007690691660407133

`A325668(n+1)+A325669(n+1)-A325667(n+1)`
-/

namespace A325666.P15007690691660407133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325667 (n + 1))

end

end A325666.P15007690691660407133

/-! ## A325666.P15403858297417310432

`A325670(n+1)+A325671(n+1)-A325667(n+1)`
-/

namespace A325666.P15403858297417310432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325667 (n + 1))

end

end A325666.P15403858297417310432

/-! ## A325666.P7305850935816772812

`A325672(n+1)+A325673(n+1)-A325667(n+1)`
-/

namespace A325666.P7305850935816772812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325667 (n + 1))

end

end A325666.P7305850935816772812

/-! ## A325666.P13920249570662380390

`A325674(n+1)+A325675(n+1)-A325667(n+1)`
-/

namespace A325666.P13920249570662380390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325674 (n + 1) + (A325675 (n + 1) - A325667 (n + 1))

end

end A325666.P13920249570662380390

/-! ## A325666.P2943669194282031083

`A325745(n+1)+A325746(n+1)-A325667(n+1)`
-/

namespace A325666.P2943669194282031083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + (A325746 (n + 1) - A325667 (n + 1))

end

end A325666.P2943669194282031083

/-!
# A325667: First term of n-th difference sequence of (floor(k*r)), r = -sqrt(3), k >= 0.

The programs for A325667, there is no canonical definition to state claims against.
-/

/-! ## A325667.P13655968225744124040

`A033999(n+1)-A325666(n+1)`
-/

namespace A325667.P13655968225744124040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325666 (n + 1)

end

end A325667.P13655968225744124040

/-! ## A325667.P14601576690087015772

`A056594(2*(n+1))-A325666(n+1)`
-/

namespace A325667.P14601576690087015772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * (n + 1)) - A325666 (n + 1)

end

end A325667.P14601576690087015772

/-! ## A325667.P18432195048561779600

`A055975(A166519(n))-A325666(n+1)`
-/

namespace A325667.P18432195048561779600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325666 (n + 1)

end

end A325667.P18432195048561779600

/-! ## A325667.P6906965004335154700

`A325664(n+1)+A325665(n+1)-A325666(n+1)`
-/

namespace A325667.P6906965004335154700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325666 (n + 1))

end

end A325667.P6906965004335154700

/-! ## A325667.P16629595186245067774

`A325668(n+1)+A325669(n+1)-A325666(n+1)`
-/

namespace A325667.P16629595186245067774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325666 (n + 1))

end

end A325667.P16629595186245067774

/-! ## A325667.P6029499867262434781

`A325670(n+1)+A325671(n+1)-A325666(n+1)`
-/

namespace A325667.P6029499867262434781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325666 (n + 1))

end

end A325667.P6029499867262434781

/-! ## A325667.P2933528900405219157

`A325672(n+1)+A325673(n+1)-A325666(n+1)`
-/

namespace A325667.P2933528900405219157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325666 (n + 1))

end

end A325667.P2933528900405219157

/-! ## A325667.P9071820415605674139

`A325674(n+1)+A325675(n+1)-A325666(n+1)`
-/

namespace A325667.P9071820415605674139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325674 (n + 1) + (A325675 (n + 1) - A325666 (n + 1))

end

end A325667.P9071820415605674139

/-! ## A325667.P14052672429017725795

`A325745(n+1)+A325746(n+1)-A325666(n+1)`
-/

namespace A325667.P14052672429017725795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + (A325746 (n + 1) - A325666 (n + 1))

end

end A325667.P14052672429017725795

/-!
# A325668: First term of n-th difference sequence of (floor(k*r)), r = sqrt(5), k >= 0.

The programs for A325668, there is no canonical definition to state claims against.
-/

/-! ## A325668.P1162818469778545818

`A033999(n+1)-A325669(n+1)`
-/

namespace A325668.P1162818469778545818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325669 (n + 1)

end

end A325668.P1162818469778545818

/-! ## A325668.P1938510472109369176

`A062157(n+2)-A325669(n+1)`
-/

namespace A325668.P1938510472109369176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) - A325669 (n + 1)

end

end A325668.P1938510472109369176

/-! ## A325668.P5646278471755713075

`A055975(A166519(n))-A325669(n+1)`
-/

namespace A325668.P5646278471755713075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325669 (n + 1)

end

end A325668.P5646278471755713075

/-! ## A325668.P7597055171005224631

`A325664(n+1)+A325665(n+1)-A325669(n+1)`
-/

namespace A325668.P7597055171005224631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325669 (n + 1))

end

end A325668.P7597055171005224631

/-! ## A325668.P968413960720987395

`A325666(n+1)+A325667(n+1)-A325669(n+1)`
-/

namespace A325668.P968413960720987395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325669 (n + 1))

end

end A325668.P968413960720987395

/-! ## A325668.P16125413336766440373

`A325670(n+1)+A325671(n+1)-A325669(n+1)`
-/

namespace A325668.P16125413336766440373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325669 (n + 1))

end

end A325668.P16125413336766440373

/-!
# A325669: First term of n-th difference sequence of (floor(k*r)), r = -sqrt(5), k >= 0.

The programs for A325669, there is no canonical definition to state claims against.
-/

/-! ## A325669.P13286113797997346060

`A033999(n+1)-A325668(n+1)`
-/

namespace A325669.P13286113797997346060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325668 (n + 1)

end

end A325669.P13286113797997346060

/-! ## A325669.P3197097815615198003

`n-(A325668(n+1)+A004442(n))`
-/

namespace A325669.P3197097815615198003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A325668 (n + 1) + A004442 n)

end

end A325669.P3197097815615198003

/-! ## A325669.P10521013745802641222

`A055975(A166519(n))-A325668(n+1)`
-/

namespace A325669.P10521013745802641222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325668 (n + 1)

end

end A325669.P10521013745802641222

/-! ## A325669.P3524699607590721064

`A325664(n+1)+A325665(n+1)-A325668(n+1)`
-/

namespace A325669.P3524699607590721064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325668 (n + 1))

end

end A325669.P3524699607590721064

/-! ## A325669.P11085711248660889743

`A325666(n+1)+A325667(n+1)-A325668(n+1)`
-/

namespace A325669.P11085711248660889743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325668 (n + 1))

end

end A325669.P11085711248660889743

/-! ## A325669.P17651461919015530506

`A325670(n+1)+A325671(n+1)-A325668(n+1)`
-/

namespace A325669.P17651461919015530506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325668 (n + 1))

end

end A325669.P17651461919015530506

/-! ## A325669.P8976999874557807822

`A325672(n+1)+A325673(n+1)-A325668(n+1)`
-/

namespace A325669.P8976999874557807822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325668 (n + 1))

end

end A325669.P8976999874557807822

/-! ## A325669.P17064017359088694373

`A325674(n+1)+A325675(n+1)-A325668(n+1)`
-/

namespace A325669.P17064017359088694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325674 (n + 1) + (A325675 (n + 1) - A325668 (n + 1))

end

end A325669.P17064017359088694373

/-!
# A325670: First term of n-th difference sequence of (floor(k*r)), r = sqrt(6), k >= 0.

The programs for A325670, there is no canonical definition to state claims against.
-/

/-! ## A325670.P4943018125499459481

`A033999(n+1)-A325671(n+1)`
-/

namespace A325670.P4943018125499459481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325671 (n + 1)

end

end A325670.P4943018125499459481

/-! ## A325670.P9411294085845878287

`A055975(A166519(n))-A325671(n+1)`
-/

namespace A325670.P9411294085845878287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325671 (n + 1)

end

end A325670.P9411294085845878287

/-! ## A325670.P18002329237270538605

`A325664(n+1)+A325665(n+1)-A325671(n+1)`
-/

namespace A325670.P18002329237270538605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325671 (n + 1))

end

end A325670.P18002329237270538605

/-! ## A325670.P14746873873562560445

`A325666(n+1)+A325667(n+1)-A325671(n+1)`
-/

namespace A325670.P14746873873562560445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325671 (n + 1))

end

end A325670.P14746873873562560445

/-! ## A325670.P12789117004098037393

`A325668(n+1)+A325669(n+1)-A325671(n+1)`
-/

namespace A325670.P12789117004098037393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325671 (n + 1))

end

end A325670.P12789117004098037393

/-!
# A325671: First term of n-th difference sequence of (floor(k*r)), r = -sqrt(6), k >= 0.

The programs for A325671, there is no canonical definition to state claims against.
-/

/-! ## A325671.P13042900673587989288

`A033999(n+1)-A325670(n+1)`
-/

namespace A325671.P13042900673587989288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325670 (n + 1)

end

end A325671.P13042900673587989288

/-! ## A325671.P8747904233536895170

`A157128(A016789(n))-A325670(n+1)`
-/

namespace A325671.P8747904233536895170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A016789 n).toNat - A325670 (n + 1)

end

end A325671.P8747904233536895170

/-! ## A325671.P9504646810553197002

`A055975(A166519(n))-A325670(n+1)`
-/

namespace A325671.P9504646810553197002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325670 (n + 1)

end

end A325671.P9504646810553197002

/-! ## A325671.P12554520648804841769

`A000217(n)-(A325670(n+1)+A125577(n))`
-/

namespace A325671.P12554520648804841769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A325670 (n + 1) + A125577 n)

end

end A325671.P12554520648804841769

/-! ## A325671.P15504139838768922533

`A325664(n+1)+A325665(n+1)-A325670(n+1)`
-/

namespace A325671.P15504139838768922533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325670 (n + 1))

end

end A325671.P15504139838768922533

/-! ## A325671.P3267158679947188127

`A325666(n+1)+A325667(n+1)-A325670(n+1)`
-/

namespace A325671.P3267158679947188127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325670 (n + 1))

end

end A325671.P3267158679947188127

/-! ## A325671.P17768672562510350249

`A325668(n+1)+A325669(n+1)-A325670(n+1)`
-/

namespace A325671.P17768672562510350249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325670 (n + 1))

end

end A325671.P17768672562510350249

/-! ## A325671.P17149608825819361917

`A325672(n+1)+A325673(n+1)-A325670(n+1)`
-/

namespace A325671.P17149608825819361917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325670 (n + 1))

end

end A325671.P17149608825819361917

/-!
# A325672: First term of n-th difference sequence of (floor(k*r)), r = sqrt(7), k >= 0.

The programs for A325672, there is no canonical definition to state claims against.
-/

/-! ## A325672.P2205182660914961402

`A033999(n+1)-A325673(n+1)`
-/

namespace A325672.P2205182660914961402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325673 (n + 1)

end

end A325672.P2205182660914961402

/-! ## A325672.P2112661108197159815

`A055975(A166519(n))-A325673(n+1)`
-/

namespace A325672.P2112661108197159815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325673 (n + 1)

end

end A325672.P2112661108197159815

/-! ## A325672.P16262564886287778527

`A158388(A007814(n+1))-A325673(n+1)`
-/

namespace A325672.P16262564886287778527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A007814 (n + 1)).toNat - A325673 (n + 1)

end

end A325672.P16262564886287778527

/-! ## A325672.P4093836532711134542

`A325664(n+1)+A325665(n+1)-A325673(n+1)`
-/

namespace A325672.P4093836532711134542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325673 (n + 1))

end

end A325672.P4093836532711134542

/-! ## A325672.P4399088282065096889

`A325666(n+1)+A325667(n+1)-A325673(n+1)`
-/

namespace A325672.P4399088282065096889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325673 (n + 1))

end

end A325672.P4399088282065096889

/-! ## A325672.P9423721928424199041

`A325668(n+1)+A325669(n+1)-A325673(n+1)`
-/

namespace A325672.P9423721928424199041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325673 (n + 1))

end

end A325672.P9423721928424199041

/-! ## A325672.P4671327684344188951

`A325670(n+1)+A325671(n+1)-A325673(n+1)`
-/

namespace A325672.P4671327684344188951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325673 (n + 1))

end

end A325672.P4671327684344188951

/-!
# A325673: First term of n-th difference sequence of (floor(k*r)), r = -sqrt(7), k >= 0.

The programs for A325673, there is no canonical definition to state claims against.
-/

/-! ## A325673.P2161719126931406919

`n-(A325672(n+1)+A004442(n))`
-/

namespace A325673.P2161719126931406919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A325672 (n + 1) + A004442 n)

end

end A325673.P2161719126931406919

/-! ## A325673.P11065540770213874481

`A143431(4*(n+1))-A325672(n+1)`
-/

namespace A325673.P11065540770213874481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 (4 * (n + 1)) - A325672 (n + 1)

end

end A325673.P11065540770213874481

/-! ## A325673.P4305633896636976938

`A157128(A016789(n))-A325672(n+1)`
-/

namespace A325673.P4305633896636976938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A016789 n).toNat - A325672 (n + 1)

end

end A325673.P4305633896636976938

/-! ## A325673.P7290962256743668454

`A055975(A166519(n))-A325672(n+1)`
-/

namespace A325673.P7290962256743668454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325672 (n + 1)

end

end A325673.P7290962256743668454

/-! ## A325673.P14841442446089204261

`A325664(n+1)+A325665(n+1)-A325672(n+1)`
-/

namespace A325673.P14841442446089204261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325672 (n + 1))

end

end A325673.P14841442446089204261

/-! ## A325673.P9200265652395606492

`A325666(n+1)+A325667(n+1)-A325672(n+1)`
-/

namespace A325673.P9200265652395606492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325672 (n + 1))

end

end A325673.P9200265652395606492

/-! ## A325673.P2445509496155482592

`A325668(n+1)+A325669(n+1)-A325672(n+1)`
-/

namespace A325673.P2445509496155482592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325672 (n + 1))

end

end A325673.P2445509496155482592

/-! ## A325673.P1842049986119199298

`A325670(n+1)+A325671(n+1)-A325672(n+1)`
-/

namespace A325673.P1842049986119199298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325672 (n + 1))

end

end A325673.P1842049986119199298

/-!
# A325674: First term of n-th difference sequence of (floor(k*r)), r = sqrt(8), k >= 0.

The programs for A325674, there is no canonical definition to state claims against.
-/

/-! ## A325674.P15068942077141115218

`A325840(n+1)+A325664(n+1)`
-/

namespace A325674.P15068942077141115218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325840 (n + 1) + A325664 (n + 1)

end

end A325674.P15068942077141115218

/-! ## A325674.P1977979301437767650

`A033999(n+1)-A325675(n+1)`
-/

namespace A325674.P1977979301437767650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325675 (n + 1)

end

end A325674.P1977979301437767650

/-! ## A325674.P8680507391795155375

`Δ[A042948(n)]-(A325675(n+1)+2)`
-/

namespace A325674.P8680507391795155375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A325675 (n + 1) + 2)

end

end A325674.P8680507391795155375

/-! ## A325674.P13861961925505569186

`A157128(A016789(n))-A325675(n+1)`
-/

namespace A325674.P13861961925505569186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A016789 n).toNat - A325675 (n + 1)

end

end A325674.P13861961925505569186

/-! ## A325674.P10785976206778296657

`A055975(A166519(n))-A325675(n+1)`
-/

namespace A325674.P10785976206778296657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325675 (n + 1)

end

end A325674.P10785976206778296657

/-! ## A325674.P1722563469648585162

`A325664(n+1)+A325665(n+1)-A325675(n+1)`
-/

namespace A325674.P1722563469648585162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325675 (n + 1))

end

end A325674.P1722563469648585162

/-! ## A325674.P15953413393476062906

`A325666(n+1)+A325667(n+1)-A325675(n+1)`
-/

namespace A325674.P15953413393476062906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325675 (n + 1))

end

end A325674.P15953413393476062906

/-! ## A325674.P8499873093637899161

`A325668(n+1)+A325669(n+1)-A325675(n+1)`
-/

namespace A325674.P8499873093637899161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325675 (n + 1))

end

end A325674.P8499873093637899161

/-! ## A325674.P2984265207515390837

`A325672(n+1)+A325673(n+1)-A325675(n+1)`
-/

namespace A325674.P2984265207515390837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325675 (n + 1))

end

end A325674.P2984265207515390837

/-!
# A325675: First term of n-th difference sequence of (floor(k*r)), r = -sqrt(8), k >= 0.

The programs for A325675, there is no canonical definition to state claims against.
-/

/-! ## A325675.P4345961777263131851

`A033999(n+1)-A325674(n+1)`
-/

namespace A325675.P4345961777263131851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325674 (n + 1)

end

end A325675.P4345961777263131851

/-! ## A325675.P8932000781049113990

`A325665(n+1)-A325840(n+1)`
-/

namespace A325675.P8932000781049113990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325665 (n + 1) - A325840 (n + 1)

end

end A325675.P8932000781049113990

/-! ## A325675.P8279689332768441849

`A055975(A166519(n))-A325674(n+1)`
-/

namespace A325675.P8279689332768441849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A166519 n).toNat - A325674 (n + 1)

end

end A325675.P8279689332768441849

/-! ## A325675.P11845589138227600829

`A325664(n+1)+A325665(n+1)-A325674(n+1)`
-/

namespace A325675.P11845589138227600829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325674 (n + 1))

end

end A325675.P11845589138227600829

/-! ## A325675.P16561813986076205042

`A325666(n+1)+A325667(n+1)-A325674(n+1)`
-/

namespace A325675.P16561813986076205042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325674 (n + 1))

end

end A325675.P16561813986076205042

/-! ## A325675.P5328772836202871297

`A325668(n+1)+A325669(n+1)-A325674(n+1)`
-/

namespace A325675.P5328772836202871297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325674 (n + 1))

end

end A325675.P5328772836202871297

/-! ## A325675.P7501491174395571541

`A325672(n+1)+A325673(n+1)-A325674(n+1)`
-/

namespace A325675.P7501491174395571541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325674 (n + 1))

end

end A325675.P7501491174395571541

/-!
# A325677: Irregular triangle read by rows where T(n,k) is the number of Golomb rulers of length n with k + 1 marks, k > 0.

The programs for A325677, there is no canonical definition to state claims against.
-/

/-! ## A325677.P7610152172706968088

`and(A139559(A139586(n+1)), A216652(n+1))`
-/

namespace A325677.P7610152172706968088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139559 (A139586 (n + 1)).toNat) (A216652 (n + 1))

end

end A325677.P7610152172706968088

/-! ## A325677.P1279690191782866717

`gcd(A318191(3*n+2), A329739(A000009(n)))`
-/

namespace A325677.P1279690191782866717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318191 (3 * n + 2)) (A329739 (A000009 n).toNat)

end

end A325677.P1279690191782866717

/-! ## A325677.P11994419013343552821

`gcd(A216652(n+1), A270906(n))`
-/

namespace A325677.P11994419013343552821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216652 (n + 1)) (A270906 n)

end

end A325677.P11994419013343552821

/-! ## A325677.P5921079371914989639

`A216652(n+1)-A184955(A003188(n))`
-/

namespace A325677.P5921079371914989639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216652 (n + 1) - A184955 (A003188 n).toNat

end

end A325677.P5921079371914989639

/-! ## A325677.P9862118928134547475

`A216652(n+1)/A309913(A059590(n))`
-/

namespace A325677.P9862118928134547475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216652 (n + 1) : ℚ) / (A309913 (A059590 n).toNat : ℚ)

end

end A325677.P9862118928134547475

/-!
# A325678: Maximum length of a composition of n such that every restriction to a subinterval has a different sum.

The programs for A325678, there is no canonical definition to state claims against.
-/

/-! ## A325678.P2619650281534980404

`A143824(n+1)-1`
-/

namespace A325678.P2619650281534980404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (n + 1) - 1

end

end A325678.P2619650281534980404

/-! ## A325678.P17515729717153202403

`Δ[∑[A143824(n)]-n]`
-/

namespace A325678.P17515729717153202403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325678.P17515729717153202403

/-! ## A325678.P4395817665129701040

`floor(sqrt(comp[A285509(3*n+5)]))`
-/

namespace A325678.P4395817665129701040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285509 (3 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325678.P4395817665129701040

/-! ## A325678.P135439710689145099

`comp[A003022(n+2)+n]-n`
-/

namespace A325678.P135439710689145099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A325678.P135439710689145099

/-! ## A325678.P13877722859837816824

`comp[A227590(n+2)-1+n]-n`
-/

namespace A325678.P13877722859837816824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 2) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A325678.P13877722859837816824

/-! ## A325678.P368888883931355232

`comp[A106683(C(n+3, 2))+n]-n`
-/

namespace A325678.P368888883931355232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (Nat.choose (n + 3) 2) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A325678.P368888883931355232

/-! ## A325678.P11808848812156484008

`A000401(A143824(n+1))`
-/

namespace A325678.P11808848812156484008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A143824 (n + 1)).toNat

end

end A325678.P11808848812156484008

/-! ## A325678.P9980324486485563885

`A086520(A143824(n+1)²)`
-/

namespace A325678.P9980324486485563885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A143824 (n + 1) ^ 2).toNat

end

end A325678.P9980324486485563885

/-! ## A325678.P4870113256724946794

`∑[Δ[A143824(n)]%A003485(n)]`
-/

namespace A325678.P4870113256724946794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A003485 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325678.P4870113256724946794

/-!
# A325679: Number of compositions of n such that every restriction to a circular subinterval has a different sum.

The programs for A325679, there is no canonical definition to state claims against.
-/

/-! ## A325679.P15225846075199144961

`A325680(n)-∑{d}[n, floor(atan(#))]`
-/

namespace A325679.P15225846075199144961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 n - ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A325679.P15225846075199144961

/-! ## A325679.P15589969034641284443

`A325680(n)-A032741(n)`
-/

namespace A325679.P15589969034641284443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 n - A032741 n

end

end A325679.P15589969034641284443

/-! ## A325679.P10609272257151834676

`A325680(n)-A086520(A048785(n))`
-/

namespace A325679.P10609272257151834676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 n - A086520 (A048785 n).toNat

end

end A325679.P10609272257151834676

/-! ## A325679.P14617440888913772048

`A325680(n)-A305611(A028310(n))`
-/

namespace A325679.P14617440888913772048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 n - A305611 (A028310 n).toNat

end

end A325679.P14617440888913772048

/-! ## A325679.P11779289524520683268

`A325680(n)-A338117(A004277(n))`
-/

namespace A325679.P11779289524520683268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 n - A338117 (A004277 n).toNat

end

end A325679.P11779289524520683268

/-!
# A325680: Number of compositions of n such that every distinct circular subsequence has a different sum.

The programs for A325680, there is no canonical definition to state claims against.
-/

/-! ## A325680.P5017593734764037216

`A325679(n)+A032741(n)`
-/

namespace A325680.P5017593734764037216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325679 n + A032741 n

end

end A325680.P5017593734764037216

/-! ## A325680.P16326040478824374467

`∏{e}[n, #+1]+A325679(n)-C(A000010(n+1), n)!`
-/

namespace A325680.P16326040478824374467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (A325679 n - (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ))

end

end A325680.P16326040478824374467

/-! ## A325680.P15680721535061756350

`A325679(n)+A305611(A028310(n))`
-/

namespace A325680.P15680721535061756350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325679 n + A305611 (A028310 n).toNat

end

end A325680.P15680721535061756350

/-! ## A325680.P3944375020173680530

`A325679(n)+A001222(∏{d}[n, A006530(#)])`
-/

namespace A325680.P3944375020173680530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325679 n + A001222 (∏ d ∈ Nat.divisors (f1 n), A006530 d).toNat

end

end A325680.P3944375020173680530

/-! ## A325680.P2670422710748794325

`A032741(n)+A335357(n)%A128335(n+1)`
-/

namespace A325680.P2670422710748794325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + Int.tmod (A335357 n) (A128335 (n + 1))

end

end A325680.P2670422710748794325

/-!
# A325681: Number of necklace compositions of n such that every restriction to a circular subinterval has a different sum.

The programs for A325681, there is no canonical definition to state claims against.
-/

/-! ## A325681.P7895462809106982256

`(A382399(n+1)-1)/(n+1)`
-/

namespace A325681.P7895462809106982256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382399 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A325681.P7895462809106982256

/-! ## A325681.P8667196296430372617

`A325682(n+1)+1-∏{e}[n+1, #+1]`
-/

namespace A325681.P8667196296430372617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325682 (n + 1) + 1 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A325681.P8667196296430372617

/-! ## A325681.P18141753840587291903

`A325682(n+1)-A032741(n+1)`
-/

namespace A325681.P18141753840587291903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325682 (n + 1) - A032741 (n + 1)

end

end A325681.P18141753840587291903

/-! ## A325681.P17807984569892616084

`A325682(n+1)-A305611(n+1)`
-/

namespace A325681.P17807984569892616084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325682 (n + 1) - A305611 (n + 1)

end

end A325681.P17807984569892616084

/-! ## A325681.P14012535351809438545

`A325682(n+1)-A325770(n+1)`
-/

namespace A325681.P14012535351809438545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325682 (n + 1) - A325770 (n + 1)

end

end A325681.P14012535351809438545

/-!
# A325682: Number of necklace compositions of n such that every distinct circular subsequence has a different sum.

The programs for A325682, there is no canonical definition to state claims against.
-/

/-! ## A325682.P13756712128656546668

`A325681(n+1)+A032741(n+1)`
-/

namespace A325682.P13756712128656546668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325681 (n + 1) + A032741 (n + 1)

end

end A325682.P13756712128656546668

/-! ## A325682.P9189875017174136805

`A325681(n+1)+A305611(n+1)`
-/

namespace A325682.P9189875017174136805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325681 (n + 1) + A305611 (n + 1)

end

end A325682.P9189875017174136805

/-! ## A325682.P13841805515176660568

`A325770(n+1)+A325681(n+1)`
-/

namespace A325682.P13841805515176660568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1) + A325681 (n + 1)

end

end A325682.P13841805515176660568

/-! ## A325682.P4140883540339352709

`A383159(n+1)+A325681(n+1)`
-/

namespace A325682.P4140883540339352709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383159 (n + 1) + A325681 (n + 1)

end

end A325682.P4140883540339352709

/-! ## A325682.P13839861255448638483

`A000005(n+1)+A325681(n+1)-1`
-/

namespace A325682.P13839861255448638483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A325681 (n + 1) - 1)

end

end A325682.P13839861255448638483

/-!
# A325684: Number of minimal complete rulers of length n.

The programs for A325684, there is no canonical definition to state claims against.
-/

/-! ## A325684.P11045493188210891778

`A263392(2*n+3)%A228644(n)+1`
-/

namespace A325684.P11045493188210891778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263392 (2 * n + 3)) (A228644 n) + 1

end

end A325684.P11045493188210891778

/-! ## A325684.P17536446078381729040

`A000119(A059840(n+1)+A048888(n))`
-/

namespace A325684.P17536446078381729040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A059840 (n + 1) + A048888 n).toNat

end

end A325684.P17536446078381729040

/-!
# A325685: Number of compositions of n whose distinct consecutive subsequences have different sums, and such that these sums cover an initial interval of positive integers.

The programs for A325685, there is no canonical definition to state claims against.
-/

/-! ## A325685.P13083496107378974661

`A046933(A352589(n)+A000041(n))`
-/

namespace A325685.P13083496107378974661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A352589 n + A000041 n).toNat

end

end A325685.P13083496107378974661

/-! ## A325685.P17898170067893876367

`gcd(record[A123244(n)], A134665(n+1))`
-/

namespace A325685.P17898170067893876367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A134665 (n + 1))

end

end A325685.P17898170067893876367

/-! ## A325685.P5405088165246076622

`A002322(2*(n+2))-A088530(A125588(n))`
-/

namespace A325685.P5405088165246076622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (2 * (n + 2)) - A088530 (A125588 n).toNat

end

end A325685.P5405088165246076622

/-! ## A325685.P11510776490430419157

`A002322(2*(n+2))-A322435(A157211(n))`
-/

namespace A325685.P11510776490430419157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (2 * (n + 2)) - A322435 (A157211 n).toNat

end

end A325685.P11510776490430419157

/-! ## A325685.P12171526139548665687

`A085013(A084979(n+1))%A085003(2*(n+1))`
-/

namespace A325685.P12171526139548665687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085013 (A084979 (n + 1)).toNat) (A085003 (2 * (n + 1)))

end

end A325685.P12171526139548665687

/-!
# A325687: Triangle read by rows where T(n,k) is the number of length-k compositions of n such that every distinct consecutive subsequence has a different sum.

The programs for A325687, there is no canonical definition to state claims against.
-/

/-! ## A325687.P7670797793435623006

`A061896(n)^A026729(A111594(n))`
-/

namespace A325687.P7670797793435623006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061896 n : ℚ) ^ (A026729 (A111594 n).toNat : ℤ)

end

end A325687.P7670797793435623006

/-! ## A325687.P11016245263835763209

`A318274(n)%A313622(A331567(n))`
-/

namespace A325687.P11016245263835763209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318274 n) (A313622 (A331567 n).toNat)

end

end A325687.P11016245263835763209

/-! ## A325687.P8323385960734866412

`A001222(2^A061896(n)^A082858(n))`
-/

namespace A325687.P8323385960734866412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A061896 n : ℚ) ^ (A082858 n : ℤ) : ℝ))).toNat

end

end A325687.P8323385960734866412

/-! ## A325687.P7378629428758885045

`A000005(2^A061896(n)^A082858(n))-1`
-/

namespace A325687.P7378629428758885045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A061896 n : ℚ) ^ (A082858 n : ℤ) : ℝ))).toNat - 1

end

end A325687.P7378629428758885045

/-! ## A325687.P8971678133320732646

`and(A052509(n), A256473(A039649(3*(n+1))))`
-/

namespace A325687.P8971678133320732646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052509 n) (A256473 (A039649 (3 * (n + 1))).toNat)

end

end A325687.P8971678133320732646

/-!
# A325688: Number of length-3 compositions of n such that every distinct consecutive subsequence has a different sum.

The programs for A325688, the canonical program `A325688.P8274183406138109401` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325688 has offset 0).

The definition of A325688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325688.P8274183406138109401

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=4, a(6)=5, a(7)=12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325688

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P8274183406138109401.Spec : Prop :=
  ∀ n, P8274183406138109401.a n = A325688 n

theorem P8274183406138109401.correct : P8274183406138109401.Spec := by
  intro n
  simp only [A325688]

end A325688

/-!
# A325689: Number of length-3 compositions of n such that no part is the sum of the other two.

The programs for A325689, the canonical program `A325689.P14183200293584798041` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325689 has offset 0).

The definition of A325689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325689.P14183200293584798041

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325689

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P14183200293584798041.Spec : Prop :=
  ∀ n, P14183200293584798041.a n = A325689 n

theorem P14183200293584798041.correct : P14183200293584798041.Spec := by
  intro n
  simp only [A325689]

end A325689

/-! ## A325689.P3092031400577495309

`xor(1, n-3)*floor(∑[n]/(n+2))`
-/

namespace A325689.P3092031400577495309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 3) * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A325689.P3092031400577495309

namespace A325689

/-- `xor(1, n-3)*floor(∑[n]/(n+2))` -/
def P3092031400577495309.Spec : Prop :=
  ∀ n, P3092031400577495309.a n = A325689 n

end A325689

/-! ## A325689.P871770378886128463

`(n-2)*n%∑[1-a(n-1)]` with `a(0)=2`
-/

namespace A325689.P871770378886128463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * Int.tmod (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325689.P871770378886128463

namespace A325689

/-- `(n-2)*n%∑[1-a(n-1)]` -/
def P871770378886128463.Spec : Prop :=
  ∀ n, P871770378886128463.a n = A325689 n

end A325689

/-! ## A325689.P3385921944230694528

`(n-2)*(2*n+1)%(floor(n/2)+1)`
-/

namespace A325689.P3385921944230694528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * Int.tmod (2 * n + 1 : ℤ) (⌊(n : ℚ) / 2⌋ + 1)

end

end A325689.P3385921944230694528

namespace A325689

/-- `(n-2)*(2*n+1)%(floor(n/2)+1)` -/
def P3385921944230694528.Spec : Prop :=
  ∀ n, P3385921944230694528.a n = A325689 n

end A325689

/-! ## A325689.P14551658754778456986

`∑[4%n-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A325689.P14551658754778456986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ((4 % n : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A325689.P14551658754778456986

namespace A325689

/-- `∑[4%n-a(n-1)]+a(n-2)` -/
def P14551658754778456986.Spec : Prop :=
  ∀ n, P14551658754778456986.a n = A325689 n

end A325689

/-! ## A325689.P17990750188254528761

`A266594(n)-A184418(n)`
-/

namespace A325689.P17990750188254528761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266594 n - A184418 n

end

end A325689.P17990750188254528761

namespace A325689

/-- `A266594(n)-A184418(n)` -/
def P17990750188254528761.Spec : Prop :=
  ∀ n, P17990750188254528761.a n = A325689 n

end A325689

/-! ## A325689.P2406005680430746944

`A182455(n)-A298028(n)`
-/

namespace A325689.P2406005680430746944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 n - A298028 n

end

end A325689.P2406005680430746944

namespace A325689

/-- `A182455(n)-A298028(n)` -/
def P2406005680430746944.Spec : Prop :=
  ∀ n, P2406005680430746944.a n = A325689 n

end A325689

/-! ## A325689.P14750656396538331628

`(n-2)*A289207(A030451(n))`
-/

namespace A325689.P14750656396538331628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A289207 (A030451 n).toNat

end

end A325689.P14750656396538331628

namespace A325689

/-- `(n-2)*A289207(A030451(n))` -/
def P14750656396538331628.Spec : Prop :=
  ∀ n, P14750656396538331628.a n = A325689 n

end A325689

/-! ## A325689.P13346180819261171339

`A289207(A030451(n))*A289207(n)`
-/

namespace A325689.P13346180819261171339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A030451 n).toNat * A289207 n

end

end A325689.P13346180819261171339

namespace A325689

/-- `A289207(A030451(n))*A289207(n)` -/
def P13346180819261171339.Spec : Prop :=
  ∀ n, P13346180819261171339.a n = A325689 n

end A325689

/-! ## A325689.P11367282741973581002

`A289207(A052938(n)-1)*A289207(n)`
-/

namespace A325689.P11367282741973581002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A052938 n - 1).toNat * A289207 n

end

end A325689.P11367282741973581002

namespace A325689

/-- `A289207(A052938(n)-1)*A289207(n)` -/
def P11367282741973581002.Spec : Prop :=
  ∀ n, P11367282741973581002.a n = A325689 n

end A325689

/-! ## A325689.P5516754848210856339

`(A097141(n)-A097140(n))*A097141(n)`
-/

namespace A325689.P5516754848210856339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097141 n - A097140 n) * A097141 n

end

end A325689.P5516754848210856339

namespace A325689

/-- `(A097141(n)-A097140(n))*A097141(n)` -/
def P5516754848210856339.Spec : Prop :=
  ∀ n, P5516754848210856339.a n = A325689 n

end A325689

/-! ## A325689.P9243220116944443862

`(A099570(n)-∑[A099570(n)])*A099570(n)`
-/

namespace A325689.P9243220116944443862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099570 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A099570 n

end

end A325689.P9243220116944443862

namespace A325689

/-- `(A099570(n)-∑[A099570(n)])*A099570(n)` -/
def P9243220116944443862.Spec : Prop :=
  ∀ n, P9243220116944443862.a n = A325689 n

end A325689

/-! ## A325689.P17417221024096900803

`(abs(1-n)-1)*abs(2-A028242(n+1))`
-/

namespace A325689.P17417221024096900803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| - 1) * |2 - A028242 (n + 1)|

end

end A325689.P17417221024096900803

namespace A325689

/-- `(abs(1-n)-1)*abs(2-A028242(n+1))` -/
def P17417221024096900803.Spec : Prop :=
  ∀ n, P17417221024096900803.a n = A325689 n

end A325689

/-! ## A325689.P18040464000883817198

`A289207(A028242(n+1))*A289207(n)`
-/

namespace A325689.P18040464000883817198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A028242 (n + 1)).toNat * A289207 n

end

end A325689.P18040464000883817198

namespace A325689

/-- `A289207(A028242(n+1))*A289207(n)` -/
def P18040464000883817198.Spec : Prop :=
  ∀ n, P18040464000883817198.a n = A325689 n

end A325689

/-! ## A325689.P13417017275665394643

`(n-2)*log2(A076736(n+1))`
-/

namespace A325689.P13417017275665394643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℝ) * Real.logb 2 (A076736 (n + 1) : ℝ)

end

end A325689.P13417017275665394643

namespace A325689

/-- `(n-2)*log2(A076736(n+1))` -/
def P13417017275665394643.Spec : Prop :=
  ∀ n, P13417017275665394643.a n = (A325689 n : ℝ)

end A325689

/-!
# A325690: Number of length-3 integer partitions of n whose largest part is not the sum of the other two.

The programs for A325690, the canonical program `A325690.P8837899180845504934` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325690 has offset 0).

The definition of A325690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325690.P8837899180845504934

`A054925(n)-A211541(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A325690

/-- `A054925(n)-A211541(n)` -/
def P8837899180845504934.Spec : Prop :=
  ∀ n, P8837899180845504934.a n = A325690 n

theorem P8837899180845504934.correct : P8837899180845504934.Spec := by
  intro n
  simp only [A325690]

end A325690

/-! ## A325690.P9725036596343739424

`A069905(n)-A002265(A003815(n))`
-/

namespace A325690.P9725036596343739424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n - A002265 (A003815 n).toNat

end

end A325690.P9725036596343739424

namespace A325690

/-- `A069905(n)-A002265(A003815(n))` -/
def P9725036596343739424.Spec : Prop :=
  ∀ n, P9725036596343739424.a n = A325690 n

end A325690

/-! ## A325690.P6805643827702551666

`A069905(n)-A002265(A141310(n))`
-/

namespace A325690.P6805643827702551666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n - A002265 (A141310 n).toNat

end

end A325690.P6805643827702551666

namespace A325690

/-- `A069905(n)-A002265(A141310(n))` -/
def P6805643827702551666.Spec : Prop :=
  ∀ n, P6805643827702551666.a n = A325690 n

end A325690

/-! ## A325690.P16595599597178186357

`A069905(n)-A004526(A142150(n))`
-/

namespace A325690.P16595599597178186357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n - A004526 (A142150 n).toNat

end

end A325690.P16595599597178186357

namespace A325690

/-- `A069905(n)-A004526(A142150(n))` -/
def P16595599597178186357.Spec : Prop :=
  ∀ n, P16595599597178186357.a n = A325690 n

end A325690

/-! ## A325690.P3700763138584489114

`A005044(n)+A069905(n)-A325691(n)`
-/

namespace A325690.P3700763138584489114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n + (A069905 n - A325691 n)

end

end A325690.P3700763138584489114

namespace A325690

/-- `A005044(n)+A069905(n)-A325691(n)` -/
def P3700763138584489114.Spec : Prop :=
  ∀ n, P3700763138584489114.a n = A325690 n

end A325690

/-! ## A325690.P8763248191425708662

`A211521(n+1)-A001840(n)`
-/

namespace A325690.P8763248191425708662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 (n + 1) - A001840 n

end

end A325690.P8763248191425708662

namespace A325690

/-- `A211521(n+1)-A001840(n)` -/
def P8763248191425708662.Spec : Prop :=
  ∀ n, P8763248191425708662.a n = A325690 n

end A325690

/-! ## A325690.P7984064417080232339

`A005044(2*n)-A000035(n+1)*A002265(n+1)`
-/

namespace A325690.P7984064417080232339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n) - A000035 (n + 1) * A002265 (n + 1)

end

end A325690.P7984064417080232339

namespace A325690

/-- `A005044(2*n)-A000035(n+1)*A002265(n+1)` -/
def P7984064417080232339.Spec : Prop :=
  ∀ n, P7984064417080232339.a n = A325690 n

end A325690

/-! ## A325690.P10980498419284342563

`A001971(n)-A004526(A008796(n))`
-/

namespace A325690.P10980498419284342563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n - A004526 (A008796 n).toNat

end

end A325690.P10980498419284342563

namespace A325690

/-- `A001971(n)-A004526(A008796(n))` -/
def P10980498419284342563.Spec : Prop :=
  ∀ n, P10980498419284342563.a n = A325690 n

end A325690

/-! ## A325690.P8135871340690199743

`A069905(n)-A053616(A001971(n))`
-/

namespace A325690.P8135871340690199743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n - A053616 (A001971 n).toNat

end

end A325690.P8135871340690199743

namespace A325690

/-- `A069905(n)-A053616(A001971(n))` -/
def P8135871340690199743.Spec : Prop :=
  ∀ n, P8135871340690199743.a n = A325690 n

end A325690

/-! ## A325690.P15262432559013151460

`A001971(n)-A002264(A008795(n))`
-/

namespace A325690.P15262432559013151460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n - A002264 (A008795 n).toNat

end

end A325690.P15262432559013151460

namespace A325690

/-- `A001971(n)-A002264(A008795(n))` -/
def P15262432559013151460.Spec : Prop :=
  ∀ n, P15262432559013151460.a n = A325690 n

end A325690

/-! ## A325690.P5144121460006892650

`A002265(A093178(n)+A000212(n))-A002265(n)`
-/

namespace A325690.P5144121460006892650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A093178 n + A000212 n).toNat - A002265 n

end

end A325690.P5144121460006892650

namespace A325690

/-- `A002265(A093178(n)+A000212(n))-A002265(n)` -/
def P5144121460006892650.Spec : Prop :=
  ∀ n, P5144121460006892650.a n = A325690 n

end A325690

/-! ## A325690.P9697248195437224677

`A008615(A053439(n)-A022998(n))`
-/

namespace A325690.P9697248195437224677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A053439 n - A022998 n).toNat

end

end A325690.P9697248195437224677

namespace A325690

/-- `A008615(A053439(n)-A022998(n))` -/
def P9697248195437224677.Spec : Prop :=
  ∀ n, P9697248195437224677.a n = A325690 n

end A325690

/-!
# A325691: Number of length-3 integer partitions of n whose largest part is not greater than the sum of the other two.

The programs for A325691, the canonical program `A325691.P1920078443294648485` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325691 has offset 0).

The definition of A325691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325691.P1920078443294648485

`A005044(n+3)-A000035(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A325691

/-- `A005044(n+3)-A000035(n+3)` -/
def P1920078443294648485.Spec : Prop :=
  ∀ n, P1920078443294648485.a n = A325691 n

theorem P1920078443294648485.correct : P1920078443294648485.Spec := by
  intro n
  simp only [A325691]

end A325691

/-! ## A325691.P10509045499759615049

`∑[floor(floor(n/3)+1-n/4)]-a(n-1)-1` with `a(0)=0`
-/

namespace A325691.P10509045499759615049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 3⌋ : ℚ) + (1 - (n : ℚ) / 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - 1

end

end A325691.P10509045499759615049

namespace A325691

/-- `∑[floor(floor(n/3)+1-n/4)]-a(n-1)-1` -/
def P10509045499759615049.Spec : Prop :=
  ∀ n, P10509045499759615049.a n = A325691 n

end A325691

/-! ## A325691.P9906111635952562173

`A266755(n)-log2(gcd(2, n))`
-/

namespace A325691.P9906111635952562173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A266755 n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A325691.P9906111635952562173

namespace A325691

/-- `A266755(n)-log2(gcd(2, n))` -/
def P9906111635952562173.Spec : Prop :=
  ∀ n, P9906111635952562173.a n = (A325691 n : ℝ)

end A325691

/-! ## A325691.P10570777169574552560

`A008679(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A325691.P10570777169574552560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A008679 n + a (n - 2)

end

end A325691.P10570777169574552560

namespace A325691

/-- `A008679(n)+a(n-2)` -/
def P10570777169574552560.Spec : Prop :=
  ∀ n, P10570777169574552560.a n = A325691 n

end A325691

/-! ## A325691.P10661689950288184170

`A001399(n)-A173151(n)`
-/

namespace A325691.P10661689950288184170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A173151 n

end

end A325691.P10661689950288184170

namespace A325691

/-- `A001399(n)-A173151(n)` -/
def P10661689950288184170.Spec : Prop :=
  ∀ n, P10661689950288184170.a n = A325691 n

end A325691

/-! ## A325691.P14987460640249816364

`A266755(n)-A059841(n)`
-/

namespace A325691.P14987460640249816364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A059841 n

end

end A325691.P14987460640249816364

namespace A325691

/-- `A266755(n)-A059841(n)` -/
def P14987460640249816364.Spec : Prop :=
  ∀ n, P14987460640249816364.a n = A325691 n

end A325691

/-! ## A325691.P16853149828579362446

`∑[A103221(n)]-A173151(n)`
-/

namespace A325691.P16853149828579362446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173151 n

end

end A325691.P16853149828579362446

namespace A325691

/-- `∑[A103221(n)]-A173151(n)` -/
def P16853149828579362446.Spec : Prop :=
  ∀ n, P16853149828579362446.a n = A325691 n

end A325691

/-! ## A325691.P14283640998390725182

`A266755(n)-∑[A033999(n)]`
-/

namespace A325691.P14283640998390725182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325691.P14283640998390725182

namespace A325691

/-- `A266755(n)-∑[A033999(n)]` -/
def P14283640998390725182.Spec : Prop :=
  ∀ n, P14283640998390725182.a n = A325691 n

end A325691

/-! ## A325691.P10387372017709135642

`A266755(n)-∑[A106400(n)]²`
-/

namespace A325691.P10387372017709135642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A325691.P10387372017709135642

namespace A325691

/-- `A266755(n)-∑[A106400(n)]²` -/
def P10387372017709135642.Spec : Prop :=
  ∀ n, P10387372017709135642.a n = A325691 n

end A325691

/-! ## A325691.P13007438481474385956

`∑[A004523(n)-A226107(n+1)]`
-/

namespace A325691.P13007438481474385956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n - A226107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325691.P13007438481474385956

namespace A325691

/-- `∑[A004523(n)-A226107(n+1)]` -/
def P13007438481474385956.Spec : Prop :=
  ∀ n, P13007438481474385956.a n = A325691 n

end A325691

/-! ## A325691.P3711743070458120390

`A266755(((n+1)%2)^n)+A266755(n)-1`
-/

namespace A325691.P3711743070458120390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (((n + 1) % 2) ^ n) + A266755 n - 1

end

end A325691.P3711743070458120390

namespace A325691

/-- `A266755(((n+1)%2)^n)+A266755(n)-1` -/
def P3711743070458120390.Spec : Prop :=
  ∀ n, P3711743070458120390.a n = A325691 n

end A325691

/-! ## A325691.P6121139208894966109

`A005044(n)+A069905(n)-A325690(n)`
-/

namespace A325691.P6121139208894966109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n + (A069905 n - A325690 n)

end

end A325691.P6121139208894966109

namespace A325691

/-- `A005044(n)+A069905(n)-A325690(n)` -/
def P6121139208894966109.Spec : Prop :=
  ∀ n, P6121139208894966109.a n = A325691 n

end A325691

/-! ## A325691.P2848154394001586459

`A397972(n)-(A210977(n)+A129819(n))`
-/

namespace A325691.P2848154394001586459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n - (A210977 n + A129819 n)

end

end A325691.P2848154394001586459

namespace A325691

/-- `A397972(n)-(A210977(n)+A129819(n))` -/
def P2848154394001586459.Spec : Prop :=
  ∀ n, P2848154394001586459.a n = A325691 n

end A325691

/-! ## A325691.P427293265410349650

`A266755(gcd(1-n, A266258(n)))+A266755(n)-1`
-/

namespace A325691.P427293265410349650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (Int.gcd (1 - (n : ℤ)) (A266258 n)) + A266755 n - 1

end

end A325691.P427293265410349650

namespace A325691

/-- `A266755(gcd(1-n, A266258(n)))+A266755(n)-1` -/
def P427293265410349650.Spec : Prop :=
  ∀ n, P427293265410349650.a n = A325691 n

end A325691

/-! ## A325691.P3145187950646938081

`A005044(n)+A000035(n+1)*A002265(n)`
-/

namespace A325691.P3145187950646938081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n + A000035 (n + 1) * A002265 n

end

end A325691.P3145187950646938081

namespace A325691

/-- `A005044(n)+A000035(n+1)*A002265(n)` -/
def P3145187950646938081.Spec : Prop :=
  ∀ n, P3145187950646938081.a n = A325691 n

end A325691

/-! ## A325691.P16299562346672601998

`A005044(n)+A000035(n+1)*A130722(n)`
-/

namespace A325691.P16299562346672601998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n + A000035 (n + 1) * A130722 n

end

end A325691.P16299562346672601998

namespace A325691

/-- `A005044(n)+A000035(n+1)*A130722(n)` -/
def P16299562346672601998.Spec : Prop :=
  ∀ n, P16299562346672601998.a n = A325691 n

end A325691

/-! ## A325691.P14129908902904332197

`A002265(n+1)+A005044(n+1)-A008615(n)`
-/

namespace A325691.P14129908902904332197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (A005044 (n + 1) - A008615 n)

end

end A325691.P14129908902904332197

namespace A325691

/-- `A002265(n+1)+A005044(n+1)-A008615(n)` -/
def P14129908902904332197.Spec : Prop :=
  ∀ n, P14129908902904332197.a n = A325691 n

end A325691

/-! ## A325691.P2743448158401560621

`Δ[A055104(n+1)]-1`
-/

namespace A325691.P2743448158401560621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A325691.P2743448158401560621

namespace A325691

/-- `Δ[A055104(n+1)]-1` -/
def P2743448158401560621.Spec : Prop :=
  ∀ n, P2743448158401560621.a n = A325691 n

end A325691

/-! ## A325691.P16539323021327574752

`Δ[A026810(n+3)]-char[2*n]`
-/

namespace A325691.P16539323021327574752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325691.P16539323021327574752

namespace A325691

/-- `Δ[A026810(n+3)]-char[2*n]` -/
def P16539323021327574752.Spec : Prop :=
  ∀ n, P16539323021327574752.a n = A325691 n

end A325691

/-! ## A325691.P4141781677116412054

`record[A005044(n)]%A173151(n)`
-/

namespace A325691.P4141781677116412054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A173151 n)

end

end A325691.P4141781677116412054

namespace A325691

/-- `record[A005044(n)]%A173151(n)` -/
def P4141781677116412054.Spec : Prop :=
  ∀ n, P4141781677116412054.a n = A325691 n

end A325691

/-!
# A325692: "Sloping senary numbers": write numbers in senary (that is, base 6) under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A325692, there is no canonical definition to state claims against.
-/

/-! ## A325692.P10160386510624967286

`A187794(Δ[A005945(n)])+n`
-/

namespace A325692.P10160386510624967286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A325692.P10160386510624967286

/-! ## A325692.P17096386079441690439

`n-(A185246(n)-A187794(Δ[A005945(n)]))`
-/

namespace A325692.P17096386079441690439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A185246 n - A187794 (f1 (n + 1) - f1 n).toNat)

end

end A325692.P17096386079441690439

/-! ## A325692.P2354827147359875984

`A187794(A062319(n))+n`
-/

namespace A325692.P2354827147359875984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (A062319 n).toNat + (n : ℤ)

end

end A325692.P2354827147359875984

/-! ## A325692.P17338619360429710451

`A241462(A086152(n+1))+n`
-/

namespace A325692.P17338619360429710451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241462 (A086152 (n + 1)).toNat + (n : ℤ)

end

end A325692.P17338619360429710451

/-! ## A325692.P12065114261178962424

`A120034(Δ[A133794(n+1)])+n`
-/

namespace A325692.P12065114261178962424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120034 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A325692.P12065114261178962424

/-!
# A325693: "Sloping septenary numbers": write numbers in septenary under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A325693, there is no canonical definition to state claims against.
-/

/-! ## A325693.P4160546940613839432

`A088842(A101425(2*n+1))+n-1`
-/

namespace A325693.P4160546940613839432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088842 (A101425 (2 * n + 1)).toNat + ((n : ℤ) - 1)

end

end A325693.P4160546940613839432

/-! ## A325693.P17940173029919589299

`A127093(A034856(4*n+2)+9)+n`
-/

namespace A325693.P17940173029919589299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A034856 (4 * n + 2) + 9).toNat + (n : ℤ)

end

end A325693.P17940173029919589299

/-! ## A325693.P10198652966347925762

`A088842(n+1)-A088842(A073523(n+1))+n`
-/

namespace A325693.P10198652966347925762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088842 (n + 1) - A088842 (A073523 (n + 1)).toNat + (n : ℤ)

end

end A325693.P10198652966347925762

/-! ## A325693.P9812912213915526931

`A273812(n+1)%A088842(n+1)+n`
-/

namespace A325693.P9812912213915526931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273812 (n + 1)) (A088842 (n + 1)) + (n : ℤ)

end

end A325693.P9812912213915526931

/-! ## A325693.P764713509880226397

`A257541(A001248(n+1))+A088842(n+1)`
-/

namespace A325693.P764713509880226397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A001248 (n + 1)).toNat + A088842 (n + 1)

end

end A325693.P764713509880226397

/-!
# A325694: Numbers with one fewer divisors than the sum of their prime indices.

The programs for A325694, there is no canonical definition to state claims against.
-/

/-! ## A325694.P10892662296874544473

`eq[1-4/2, A325794(n+2)]+2`
-/

namespace A325694.P10892662296874544473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 2

end

end A325694.P10892662296874544473

/-! ## A325694.P13727273111942059710

`eq[1, -A325794(A028310(n))]`
-/

namespace A325694.P13727273111942059710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325694.P13727273111942059710

/-! ## A325694.P4470655435146257493

`A020725(eq[1, A325794(n+1)+2])`
-/

namespace A325694.P4470655435146257493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325694.P4470655435146257493

/-! ## A325694.P12330929999250274036

`A065475(eq[1, A325794(n+1)+2])`
-/

namespace A325694.P12330929999250274036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325694.P12330929999250274036

/-! ## A325694.P1912211056536325897

`eq[A057428(n), A325794(A028310(n))]`
-/

namespace A325694.P1912211056536325897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325694.P1912211056536325897

/-! ## A325694.P3994474928578392257

`A020725(eq[A057428(n), A325794(n+1)])`
-/

namespace A325694.P3994474928578392257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325694.P3994474928578392257

/-! ## A325694.P16146134214453344984

`eq[A032741(n)+2, A056239(A028310(n))]`
-/

namespace A325694.P16146134214453344984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325694.P16146134214453344984

/-! ## A325694.P9352556968470658392

`eq[2, A054977(n)-A325794(A028310(n))]`
-/

namespace A325694.P9352556968470658392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325694.P9352556968470658392

/-! ## A325694.P16013475768700510025

`eq[2, A057427(n)-A325794(A028310(n))]`
-/

namespace A325694.P16013475768700510025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325694.P16013475768700510025

/-!
# A325695: Number of length-3 strict integer partitions of n such that the largest part is not the sum of the other two.

The programs for A325695, there is no canonical definition to state claims against.
-/

/-! ## A325695.P13753886214829021609

`A325696(n)/6`
-/

namespace A325695.P13753886214829021609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325696 n : ℚ) / 6

end

end A325695.P13753886214829021609

/-! ## A325695.P15199042034836461852

`A008615(A325696(n))`
-/

namespace A325695.P15199042034836461852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A325696 n).toNat

end

end A325695.P15199042034836461852

/-!
# A325696: Number of length-3 strict compositions of n such that no part is the sum of the other two.

The programs for A325696, there is no canonical definition to state claims against.
-/

/-! ## A325696.P12256235586262443375

`6*A325695(n)`
-/

namespace A325696.P12256235586262443375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A325695 n

end

end A325696.P12256235586262443375

/-! ## A325696.P14818199638950646455

`A008588(A325695(n))`
-/

namespace A325696.P14818199638950646455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A325695 n).toNat

end

end A325696.P14818199638950646455

/-! ## A325696.P13903236398581494284

`A008458(A325695(n)+n)-A008458(n)`
-/

namespace A325696.P13903236398581494284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A325695 n + (n : ℤ)).toNat - A008458 n

end

end A325696.P13903236398581494284

/-! ## A325696.P10110936168692340968

`and(A000918(n+1), A008458(A325695(n)))`
-/

namespace A325696.P10110936168692340968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 (n + 1)) (A008458 (A325695 n).toNat)

end

end A325696.P10110936168692340968

/-! ## A325696.P2733185196273478979

`A341885(3^A325695(n))`
-/

namespace A325696.P2733185196273478979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341885 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A325695 n : ℤ))).toNat

end

end A325696.P2733185196273478979

/-!
# A325698: Numbers with as many even as odd prime indices, counted with multiplicity.

The programs for A325698, the canonical program `A325698.P12350898067219436297` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325698 has offset 1).

The definition of A325698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325698.P12350898067219436297

`eq[0, A195017(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A325698

/-- `eq[0, A195017(n+1)]+1` -/
def P12350898067219436297.Spec : Prop :=
  ∀ n, (P12350898067219436297.a n : ℤ) = A325698 (n + 1)

theorem P12350898067219436297.correct : P12350898067219436297.Spec := by
  intro n
  simp only [A325698, Nat.add_sub_cancel]

end A325698

/-! ## A325698.P2413966737181777099

`lt[0, A353373(n+1)]+1`
-/

namespace A325698.P2413966737181777099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325698.P2413966737181777099

namespace A325698

/-- `lt[0, A353373(n+1)]+1` -/
def P2413966737181777099.Spec : Prop :=
  ∀ n, (P2413966737181777099.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P15940373541591909923

`filter[A320911(n+1), A391747(#)]`
-/

namespace A325698.P15940373541591909923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A325698.P15940373541591909923

namespace A325698

/-- `filter[A320911(n+1), A391747(#)]` -/
def P15940373541591909923.Spec : Prop :=
  ∀ n, P15940373541591909923.a n = A325698 (n + 1)

end A325698

/-! ## A325698.P9985383194946184689

`filter[A028260(n+1), A391747(#)]`
-/

namespace A325698.P9985383194946184689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A325698.P9985383194946184689

namespace A325698

/-- `filter[A028260(n+1), A391747(#)]` -/
def P9985383194946184689.Spec : Prop :=
  ∀ n, P9985383194946184689.a n = A325698 (n + 1)

end A325698

/-! ## A325698.P1508688096358752318

`eq[A257991(n+1), A257992(n+1)]+1`
-/

namespace A325698.P1508688096358752318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325698.P1508688096358752318

namespace A325698

/-- `eq[A257991(n+1), A257992(n+1)]+1` -/
def P1508688096358752318.Spec : Prop :=
  ∀ n, (P1508688096358752318.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P11230729436285441055

`filter[A391909(n+1), A065043(#)]`
-/

namespace A325698.P11230729436285441055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A325698.P11230729436285441055

namespace A325698

/-- `filter[A391909(n+1), A065043(#)]` -/
def P11230729436285441055.Spec : Prop :=
  ∀ n, P11230729436285441055.a n = A325698 (n + 1)

end A325698

/-! ## A325698.P13562706877620576160

`filter[A391909(n+1), A353350(#)]`
-/

namespace A325698.P13562706877620576160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353350 (f1 j).toNat = 1) n)

end

end A325698.P13562706877620576160

namespace A325698

/-- `filter[A391909(n+1), A353350(#)]` -/
def P13562706877620576160.Spec : Prop :=
  ∀ n, P13562706877620576160.a n = A325698 (n + 1)

end A325698

/-! ## A325698.P252054955468746047

`∩[A028260(n+1), A391909(n+1)]`
-/

namespace A325698.P252054955468746047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325698.P252054955468746047

namespace A325698

/-- `∩[A028260(n+1), A391909(n+1)]` -/
def P252054955468746047.Spec : Prop :=
  ∀ n, (P252054955468746047.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P2181568931706335524

`∩[A320911(n+1), A391909(n+1)]`
-/

namespace A325698.P2181568931706335524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325698.P2181568931706335524

namespace A325698

/-- `∩[A320911(n+1), A391909(n+1)]` -/
def P2181568931706335524.Spec : Prop :=
  ∀ n, (P2181568931706335524.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P14925086065958993020

`filter[A143691(2*n+1), A391747(#)]`
-/

namespace A325698.P14925086065958993020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A325698.P14925086065958993020

namespace A325698

/-- `filter[A143691(2*n+1), A391747(#)]` -/
def P14925086065958993020.Spec : Prop :=
  ∀ n, P14925086065958993020.a n = A325698 (n + 1)

end A325698

/-! ## A325698.P14797701991786031437

`filter[n+1, A353370(#)]`
-/

namespace A325698.P14797701991786031437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353370 (f1 j) = 1) n)

end

end A325698.P14797701991786031437

namespace A325698

/-- `filter[n+1, A353370(#)]` -/
def P14797701991786031437.Spec : Prop :=
  ∀ n, (P14797701991786031437.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P5555864980807738396

`eq[1, A353370(n+1)]+1`
-/

namespace A325698.P5555864980807738396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325698.P5555864980807738396

namespace A325698

/-- `eq[1, A353370(n+1)]+1` -/
def P5555864980807738396.Spec : Prop :=
  ∀ n, (P5555864980807738396.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P7636038306590582264

`eq[1, A195017(A008706(n))]`
-/

namespace A325698.P7636038306590582264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325698.P7636038306590582264

namespace A325698

/-- `eq[1, A195017(A008706(n))]` -/
def P7636038306590582264.Spec : Prop :=
  ∀ n, (P7636038306590582264.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P13152249899781643070

`eq[2, A195017(A008574(n))]`
-/

namespace A325698.P13152249899781643070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325698.P13152249899781643070

namespace A325698

/-- `eq[2, A195017(A008574(n))]` -/
def P13152249899781643070.Spec : Prop :=
  ∀ n, (P13152249899781643070.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P11081821697478778126

`eq[1, A195017(A008458(n)-n)]`
-/

namespace A325698.P11081821697478778126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A008458 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325698.P11081821697478778126

namespace A325698

/-- `eq[1, A195017(A008458(n)-n)]` -/
def P11081821697478778126.Spec : Prop :=
  ∀ n, (P11081821697478778126.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P1483547220949964161

`lt[0, ∑{p}[A000010(n+1)*A353370(n+1)+1, #]]+1`
-/

namespace A325698.P1483547220949964161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A353370 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325698.P1483547220949964161

namespace A325698

/-- `lt[0, ∑{p}[A000010(n+1)*A353370(n+1)+1, #]]+1` -/
def P1483547220949964161.Spec : Prop :=
  ∀ n, (P1483547220949964161.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P17677019929784515790

`eq[A000038(n), A195017(A008458(n))]`
-/

namespace A325698.P17677019929784515790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325698.P17677019929784515790

namespace A325698

/-- `eq[A000038(n), A195017(A008458(n))]` -/
def P17677019929784515790.Spec : Prop :=
  ∀ n, (P17677019929784515790.a n : ℤ) = A325698 (n + 1)

end A325698

/-! ## A325698.P5618343205510805722

`eq[A059841(n), A195017(A257088(n))]`
-/

namespace A325698.P5618343205510805722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325698.P5618343205510805722

namespace A325698

/-- `eq[A059841(n), A195017(A257088(n))]` -/
def P5618343205510805722.Spec : Prop :=
  ∀ n, (P5618343205510805722.a n : ℤ) = A325698 (n + 1)

end A325698

/-!
# A325699: Number of distinct even prime indices of n minus the number of distinct odd prime indices of n.

The programs for A325699, there is no canonical definition to state claims against.
-/

/-! ## A325699.P4062215936851688606

`∑{p}[n+1, A065357(#)]`
-/

namespace A325699.P4062215936851688606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A065357 p

end

end A325699.P4062215936851688606

/-! ## A325699.P7670024963544071048

`∑{p}[n+1, A353454(#)]`
-/

namespace A325699.P7670024963544071048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A353454 p

end

end A325699.P7670024963544071048

/-! ## A325699.P4636941084478006006

`∑{p}[n+1, A353457(#)]`
-/

namespace A325699.P4636941084478006006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A353457 p

end

end A325699.P4636941084478006006

/-! ## A325699.P16099115063874531801

`∑{p}[n+1, A353467(#)]`
-/

namespace A325699.P16099115063874531801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A353467 p

end

end A325699.P16099115063874531801

/-! ## A325699.P8665563288814219566

`-A195017(∏{p}[n+1, #])`
-/

namespace A325699.P8665563288814219566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A195017 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325699.P8665563288814219566

/-! ## A325699.P10287082198673245935

`A195017(A328915(n+1))`
-/

namespace A325699.P10287082198673245935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A328915 (n + 1)).toNat

end

end A325699.P10287082198673245935

/-! ## A325699.P2074379812819044736

`∑{p}[n+1, A008683(A247503(#))]`
-/

namespace A325699.P2074379812819044736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 (A247503 p).toNat

end

end A325699.P2074379812819044736

/-! ## A325699.P1049645984554266816

`A324967(n+1)-A324966(n+1)`
-/

namespace A325699.P1049645984554266816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324967 (n + 1) - A324966 (n + 1)

end

end A325699.P1049645984554266816

/-! ## A325699.P9009645408119021388

`2*A324967(n+1)-A001221(n+1)`
-/

namespace A325699.P9009645408119021388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324967 (n + 1) - A001221 (n + 1)

end

end A325699.P9009645408119021388

/-! ## A325699.P10108869790390387866

`A001221(n+1)-2*A324966(n+1)`
-/

namespace A325699.P10108869790390387866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 2 * A324966 (n + 1)

end

end A325699.P10108869790390387866

