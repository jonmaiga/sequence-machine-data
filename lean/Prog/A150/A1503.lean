import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A150300: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, 0, 0), (1, 1, 0)}.

The programs for A150300, there is no canonical definition to state claims against.
-/

/-! ## A150300.P5571734632213045555

`∑[A104309(A148748(n))]`
-/

namespace A150300.P5571734632213045555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104309 (A148748 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150300.P5571734632213045555

/-! ## A150300.P16808450968409429362

`∑[A104309(A148749(n))]`
-/

namespace A150300.P16808450968409429362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104309 (A148749 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150300.P16808450968409429362

/-!
# A150301: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 0, 1), (1, 0, 1)}.

The programs for A150301, there is no canonical definition to state claims against.
-/

/-! ## A150301.P6352686216873865272

`A150302(A001096(n))`
-/

namespace A150301.P6352686216873865272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150302 (A001096 n).toNat

end

end A150301.P6352686216873865272

/-! ## A150301.P4064896594629691558

`∑[A023193(A091914(n))]`
-/

namespace A150301.P4064896594629691558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A091914 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150301.P4064896594629691558

/-!
# A150303: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, 0), (1, 1, 0)}.

The programs for A150303, there is no canonical definition to state claims against.
-/

/-! ## A150303.P8838746223319327266

`A302301(16*A150379(n))`
-/

namespace A150303.P8838746223319327266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (16 * A150379 n).toNat

end

end A150303.P8838746223319327266

/-! ## A150303.P13893648956614054012

`A344296(A297618(n+1))+floor(n/2)`
-/

namespace A150303.P13893648956614054012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A297618 (n + 1)).toNat + ⌊(n : ℚ) / 2⌋

end

end A150303.P13893648956614054012

/-!
# A150304: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150304, there is no canonical definition to state claims against.
-/

/-! ## A150304.P15499475237638231488

`∏{p}[A150305(n)², #]`
-/

namespace A150304.P15499475237638231488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150305 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150304.P15499475237638231488

/-! ## A150304.P18229778212495204263

`A150305(A001096(n))`
-/

namespace A150304.P18229778212495204263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150305 (A001096 n).toNat

end

end A150304.P18229778212495204263

/-!
# A150306: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150306, there is no canonical definition to state claims against.
-/

/-! ## A150306.P4786066410812201911

`A150307(n)-A108497(A000988(n))`
-/

namespace A150306.P4786066410812201911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150307 n - A108497 (A000988 n).toNat

end

end A150306.P4786066410812201911

/-! ## A150306.P17112066243269257928

`A150307(n)-A304184(A304197(n+2))`
-/

namespace A150306.P17112066243269257928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150307 n - A304184 (A304197 (n + 2)).toNat

end

end A150306.P17112066243269257928

/-!
# A150307: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150307, there is no canonical definition to state claims against.
-/

/-! ## A150307.P15360524270442933370

`A150306(n)+A108497(A000988(n))`
-/

namespace A150307.P15360524270442933370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150306 n + A108497 (A000988 n).toNat

end

end A150307.P15360524270442933370

/-!
# A150308: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150308, there is no canonical definition to state claims against.
-/

/-! ## A150308.P15860404109485002811

`A122977(A004643(n))`
-/

namespace A150308.P15860404109485002811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122977 (A004643 n).toNat

end

end A150308.P15860404109485002811

/-! ## A150308.P4140781254804791157

`A122977(A026549(n))`
-/

namespace A150308.P4140781254804791157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122977 (A026549 n).toNat

end

end A150308.P4140781254804791157

/-!
# A150309: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150309, there is no canonical definition to state claims against.
-/

/-! ## A150309.P15458306769882385167

`A150310(n)-A108497(A000988(n))`
-/

namespace A150309.P15458306769882385167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150310 n - A108497 (A000988 n).toNat

end

end A150309.P15458306769882385167

/-! ## A150309.P11994931484424438869

`A150310(A001096(n))`
-/

namespace A150309.P11994931484424438869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150310 (A001096 n).toNat

end

end A150309.P11994931484424438869

/-!
# A150310: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150310, there is no canonical definition to state claims against.
-/

/-! ## A150310.P6065083405623014436

`A150309(n)+A108497(A000988(n))`
-/

namespace A150310.P6065083405623014436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150309 n + A108497 (A000988 n).toNat

end

end A150310.P6065083405623014436

/-!
# A150311: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150311, there is no canonical definition to state claims against.
-/

/-! ## A150311.P13477035921334935487

`A150312(A001096(n))`
-/

namespace A150311.P13477035921334935487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150312 (A001096 n).toNat

end

end A150311.P13477035921334935487

/-! ## A150311.P7623880539598090911

`A059995(10*A150312(n))`
-/

namespace A150311.P7623880539598090911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (10 * A150312 n).toNat

end

end A150311.P7623880539598090911

/-!
# A150313: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150313, there is no canonical definition to state claims against.
-/

/-! ## A150313.P5146147169988392688

`∏{p}[A360293(2*n), A003987(#)]`
-/

namespace A150313.P5146147169988392688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360293 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003987 p

end

end A150313.P5146147169988392688

/-! ## A150313.P10607977696258777771

`∑[A003963(n!*A046732(n+1)+1)]-1`
-/

namespace A150313.P10607977696258777771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ((Nat.factorial n : ℤ) * A046732 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A150313.P10607977696258777771

/-!
# A150314: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150314, there is no canonical definition to state claims against.
-/

/-! ## A150314.P13352136998977659548

`xor(A150315(n), A185284(n²))`
-/

namespace A150314.P13352136998977659548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150315 n) (A185284 (n ^ 2))

end

end A150314.P13352136998977659548

/-! ## A150314.P6265475565869638856

`xor(A150316(n), A185284(n²))`
-/

namespace A150314.P6265475565869638856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150316 n) (A185284 (n ^ 2))

end

end A150314.P6265475565869638856

/-!
# A150315: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150315, there is no canonical definition to state claims against.
-/

/-! ## A150315.P10988227844072045544

`A004151(A150316(n))`
-/

namespace A150315.P10988227844072045544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150316 n).toNat

end

end A150315.P10988227844072045544

/-! ## A150315.P7324126372185344615

`A150316(A073789(n))`
-/

namespace A150315.P7324126372185344615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150316 (A073789 n).toNat

end

end A150315.P7324126372185344615

/-! ## A150315.P9087472176021158056

`A150316(A171644(n))`
-/

namespace A150315.P9087472176021158056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150316 (A171644 n).toNat

end

end A150315.P9087472176021158056

/-! ## A150315.P17373189320719581210

`A150316(A004869(n+1))`
-/

namespace A150315.P17373189320719581210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150316 (A004869 (n + 1)).toNat

end

end A150315.P17373189320719581210

/-!
# A150317: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150317, there is no canonical definition to state claims against.
-/

/-! ## A150317.P14595406582184075909

`A271866(A150333(n))`
-/

namespace A150317.P14595406582184075909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271866 (A150333 n).toNat

end

end A150317.P14595406582184075909

/-! ## A150317.P5766786243813190380

`A194640(A150902(n))+A194640(n)`
-/

namespace A150317.P5766786243813190380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A150902 n).toNat + A194640 n

end

end A150317.P5766786243813190380

/-!
# A150318: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A150318, there is no canonical definition to state claims against.
-/

/-! ## A150318.P8719747783950544259

`∏{p}[A150319(n)², #]`
-/

namespace A150318.P8719747783950544259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150319 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150318.P8719747783950544259

/-! ## A150318.P5580575949421912672

`A150319(A001096(n))`
-/

namespace A150318.P5580575949421912672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150319 (A001096 n).toNat

end

end A150318.P5580575949421912672

/-!
# A150320: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150320, there is no canonical definition to state claims against.
-/

/-! ## A150320.P11816759505926245163

`A150321(n)-A348613(A112375(n+1))`
-/

namespace A150320.P11816759505926245163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150321 n - A348613 (A112375 (n + 1)).toNat

end

end A150320.P11816759505926245163

/-! ## A150320.P16752211648382509387

`A150321(n)-A304184(A304197(n+2))`
-/

namespace A150320.P16752211648382509387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150321 n - A304184 (A304197 (n + 2)).toNat

end

end A150320.P16752211648382509387

/-!
# A150321: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150321, there is no canonical definition to state claims against.
-/

/-! ## A150321.P2268272897337094067

`or(A150320(n), A163352(A056297(n+1)))`
-/

namespace A150321.P2268272897337094067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150320 n) (A163352 (A056297 (n + 1)).toNat)

end

end A150321.P2268272897337094067

/-!
# A150322: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150322, there is no canonical definition to state claims against.
-/

/-! ## A150322.P17760353492417896710

`A165190(A195499(n+2))`
-/

namespace A150322.P17760353492417896710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A195499 (n + 2)).toNat

end

end A150322.P17760353492417896710

/-! ## A150322.P10701054723872537552

`A008617(3*A148894(n+2))`
-/

namespace A150322.P10701054723872537552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (3 * A148894 (n + 2)).toNat

end

end A150322.P10701054723872537552

/-!
# A150323: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150323, there is no canonical definition to state claims against.
-/

/-! ## A150323.P6946679018357882728

`A233780(2^n-1)+round(lcm(2, n+3)/6)`
-/

namespace A150323.P6946679018357882728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (2 ^ n - 1) + SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)

end

end A150323.P6946679018357882728

/-! ## A150323.P10782901883415405332

`∑[A290426(A000932(n))]`
-/

namespace A150323.P10782901883415405332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290426 (A000932 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150323.P10782901883415405332

/-!
# A150324: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150324, there is no canonical definition to state claims against.
-/

/-! ## A150324.P15488283455623642516

`A214701(A150327(n))`
-/

namespace A150324.P15488283455623642516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150327 n).toNat

end

end A150324.P15488283455623642516

/-! ## A150324.P3602185797777143671

`A000006(∏[A347693(n)])`
-/

namespace A150324.P3602185797777143671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150324.P3602185797777143671

/-!
# A150325: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A150325, there is no canonical definition to state claims against.
-/

/-! ## A150325.P7043809413814353995

`A075249(A112566(n+2))`
-/

namespace A150325.P7043809413814353995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A112566 (n + 2)).toNat

end

end A150325.P7043809413814353995

/-! ## A150325.P1732689075507697506

`A108954(∑[A060138(3^n)]+1)`
-/

namespace A150325.P1732689075507697506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060138 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A150325.P1732689075507697506

/-!
# A150326: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150326, there is no canonical definition to state claims against.
-/

/-! ## A150326.P12289404563080698383

`A226638(n)+A161906(A006125(n))`
-/

namespace A150326.P12289404563080698383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226638 n + A161906 (A006125 n).toNat

end

end A150326.P12289404563080698383

/-! ## A150326.P11277287468865221685

`A007306(A081018(n)-A219843(n))`
-/

namespace A150326.P11277287468865221685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A081018 n - A219843 n).toNat

end

end A150326.P11277287468865221685

/-!
# A150327: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150327, there is no canonical definition to state claims against.
-/

/-! ## A150327.P10764514192513523314

`∏{p}[A150328(n)², #]`
-/

namespace A150327.P10764514192513523314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150328 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150327.P10764514192513523314

/-! ## A150327.P15651204472348259969

`A150328(A001096(n))`
-/

namespace A150327.P15651204472348259969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150328 (A001096 n).toNat

end

end A150327.P15651204472348259969

/-!
# A150329: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150329, there is no canonical definition to state claims against.
-/

/-! ## A150329.P2001486402217667395

`∏{p}[∑[A323793(n)]², #]`
-/

namespace A150329.P2001486402217667395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150329.P2001486402217667395

/-! ## A150329.P4767246431935436015

`or(n+1, A064731(2*(n+1)))`
-/

namespace A150329.P4767246431935436015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A064731 (2 * (n + 1)))

end

end A150329.P4767246431935436015

/-!
# A150330: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150330, there is no canonical definition to state claims against.
-/

/-! ## A150330.P17424126015567448550

`A214701(A150332(n))`
-/

namespace A150330.P17424126015567448550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150332 n).toNat

end

end A150330.P17424126015567448550

/-! ## A150330.P16568048095091695547

`A069570(A325337(∑[(1-n)²+n]))`
-/

namespace A150330.P16568048095091695547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (A325337 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A150330.P16568048095091695547

/-!
# A150331: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150331, there is no canonical definition to state claims against.
-/

/-! ## A150331.P2099515853754301753

`A202358(n)+A193592(A073405(n))`
-/

namespace A150331.P2099515853754301753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202358 n + A193592 (A073405 n).toNat

end

end A150331.P2099515853754301753

/-! ## A150331.P5120875126706333143

`A305258(A211216(n))+A190910(n)`
-/

namespace A150331.P5120875126706333143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A211216 n).toNat + A190910 n

end

end A150331.P5120875126706333143

/-!
# A150332: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150332, there is no canonical definition to state claims against.
-/

/-! ## A150332.P7438016932447402234

`A348526(A008147(n)+1)`
-/

namespace A150332.P7438016932447402234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348526 (A008147 n + 1).toNat

end

end A150332.P7438016932447402234

/-! ## A150332.P12696653315160241022

`A165190(17*A150670(n))`
-/

namespace A150332.P12696653315160241022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (17 * A150670 n).toNat

end

end A150332.P12696653315160241022

/-!
# A150333: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150333, there is no canonical definition to state claims against.
-/

/-! ## A150333.P17664697727483845263

`(4^n+5)/3-A136093(∑[2^n])`
-/

namespace A150333.P17664697727483845263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 5 : ℚ) / 3 - (A136093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A150333.P17664697727483845263

/-! ## A150333.P15827812478728261391

`A271865(A150317(n))`
-/

namespace A150333.P15827812478728261391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271865 (A150317 n).toNat

end

end A150333.P15827812478728261391

/-!
# A150334: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150334, there is no canonical definition to state claims against.
-/

/-! ## A150334.P15388449019952050148

`A103221(A131090(2*(n+2)))+ceil(2^(n-1))`
-/

namespace A150334.P15388449019952050148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A131090 (2 * (n + 2))).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A150334.P15388449019952050148

/-! ## A150334.P14314690638758563279

`A195174(A002446(n))+A001006(n)`
-/

namespace A150334.P14314690638758563279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A002446 n).toNat + A001006 n

end

end A150334.P14314690638758563279

/-! ## A150334.P12346205597310713230

`A103221(A037597(n+1)+A007283(n))`
-/

namespace A150334.P12346205597310713230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A037597 (n + 1) + A007283 n).toNat

end

end A150334.P12346205597310713230

/-!
# A150335: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 0, 1), (1, 0, 1)}.

The programs for A150335, there is no canonical definition to state claims against.
-/

/-! ## A150335.P14401944426392839317

`A150336(A073788(n))`
-/

namespace A150335.P14401944426392839317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150336 (A073788 n).toNat

end

end A150335.P14401944426392839317

/-! ## A150335.P16310973579202671933

`A154470(A150336(n))`
-/

namespace A150335.P16310973579202671933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A150336 n).toNat

end

end A150335.P16310973579202671933

/-! ## A150335.P10425884484823247247

`A150336(A171596(n))`
-/

namespace A150335.P10425884484823247247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150336 (A171596 n).toNat

end

end A150335.P10425884484823247247

/-!
# A150337: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150337, there is no canonical definition to state claims against.
-/

/-! ## A150337.P16630388899762534288

`A150339(n)%p?[∑[2^n]]`
-/

namespace A150337.P16630388899762534288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150339 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A150337.P16630388899762534288

/-! ## A150337.P7421560157139870671

`A150338(A073788(n))`
-/

namespace A150337.P7421560157139870671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150338 (A073788 n).toNat

end

end A150337.P7421560157139870671

/-! ## A150337.P3639480764789745017

`A154470(A150338(n))`
-/

namespace A150337.P3639480764789745017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A150338 n).toNat

end

end A150337.P3639480764789745017

/-!
# A150338: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 0, 1), (1, 0, 1)}.

The programs for A150338, there is no canonical definition to state claims against.
-/

/-! ## A150338.P2807226535834121760

`A004151(A150339(n))`
-/

namespace A150338.P2807226535834121760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150339 n).toNat

end

end A150338.P2807226535834121760

/-! ## A150338.P15207648457275080968

`A150339(A073789(n))`
-/

namespace A150338.P15207648457275080968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150339 (A073789 n).toNat

end

end A150338.P15207648457275080968

/-! ## A150338.P10812636042488970393

`A150339(A171644(n))`
-/

namespace A150338.P10812636042488970393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150339 (A171644 n).toNat

end

end A150338.P10812636042488970393

/-! ## A150338.P3885607872128816717

`A150339(A004869(n+1))`
-/

namespace A150338.P3885607872128816717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150339 (A004869 (n + 1)).toNat

end

end A150338.P3885607872128816717

/-!
# A150340: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A150340, there is no canonical definition to state claims against.
-/

/-! ## A150340.P11798851035892605760

`char[2]+A233970(2^n)-∑[n]-char[4]`
-/

namespace A150340.P11798851035892605760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A233970 (2 ^ n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150340.P11798851035892605760

/-! ## A150340.P14030633786125843795

`A052374(A271017(n))`
-/

namespace A150340.P14030633786125843795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 (A271017 n).toNat

end

end A150340.P14030633786125843795

/-!
# A150341: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150341, there is no canonical definition to state claims against.
-/

/-! ## A150341.P4439756860244934121

`∑[∑[A191981(2^n)-n]]+1`
-/

namespace A150341.P4439756860244934121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191981 (2 ^ n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A150341.P4439756860244934121

/-! ## A150341.P14967867595953117663

`A247832(A150173(n))`
-/

namespace A150341.P14967867595953117663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A150173 n).toNat

end

end A150341.P14967867595953117663

/-!
# A150342: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A150342, there is no canonical definition to state claims against.
-/

/-! ## A150342.P15232196226432360586

`A276797(A307443(n)+A225826(n+1))`
-/

namespace A150342.P15232196226432360586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A307443 n + A225826 (n + 1)).toNat

end

end A150342.P15232196226432360586

/-! ## A150342.P1028820402812778278

`char[2]+A233970(2^n)-∑[n]`
-/

namespace A150342.P1028820402812778278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A233970 (2 ^ n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A150342.P1028820402812778278

/-!
# A150343: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150343, there is no canonical definition to state claims against.
-/

/-! ## A150343.P6987247276489524829

`A001462(∑[A006342(n)²])`
-/

namespace A150343.P6987247276489524829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150343.P6987247276489524829

/-! ## A150343.P11640440955621994653

`A333769(A195145(n))+A002450(n)`
-/

namespace A150343.P11640440955621994653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A195145 n).toNat + A002450 n

end

end A150343.P11640440955621994653

/-!
# A150344: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150344, there is no canonical definition to state claims against.
-/

/-! ## A150344.P15606733982085252905

`A262293(n+2)+A020908(n)`
-/

namespace A150344.P15606733982085252905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262293 (n + 2) + A020908 n

end

end A150344.P15606733982085252905

/-! ## A150344.P3342494759531702975

`A262293(n+2)+A249026(n)`
-/

namespace A150344.P3342494759531702975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262293 (n + 2) + A249026 n

end

end A150344.P3342494759531702975

/-!
# A150345: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150345, there is no canonical definition to state claims against.
-/

/-! ## A150345.P18304734019000150859

`A138311(A150355(n))`
-/

namespace A150345.P18304734019000150859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A150355 n).toNat

end

end A150345.P18304734019000150859

/-! ## A150345.P14290258398569762327

`A036043(A188676(n))+A002450(n)`
-/

namespace A150345.P14290258398569762327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (A188676 n).toNat + A002450 n

end

end A150345.P14290258398569762327

/-!
# A150346: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A150346, there is no canonical definition to state claims against.
-/

/-! ## A150346.P6666499595113742342

`A065033(A150347(n)+A150345(n))`
-/

namespace A150346.P6666499595113742342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150347 n + A150345 n).toNat

end

end A150346.P6666499595113742342

/-! ## A150346.P5609857481424630539

`A004526(A026671(n))+A000010(n+1)`
-/

namespace A150346.P5609857481424630539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026671 n).toNat + A000010 (n + 1)

end

end A150346.P5609857481424630539

/-! ## A150346.P8846079422102475955

`A057979(A026671(n))+A002322(n+1)`
-/

namespace A150346.P8846079422102475955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A026671 n).toNat + A002322 (n + 1)

end

end A150346.P8846079422102475955

/-!
# A150347: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150347, there is no canonical definition to state claims against.
-/

/-! ## A150347.P6212880477186656961

`A005378(or(1, A151052(n)))`
-/

namespace A150347.P6212880477186656961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (Int.lor 1 (A151052 n)).toNat

end

end A150347.P6212880477186656961

/-! ## A150347.P8836504635104449558

`A019446(or(1, A151052(n)))`
-/

namespace A150347.P8836504635104449558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (Int.lor 1 (A151052 n)).toNat

end

end A150347.P8836504635104449558

/-! ## A150347.P12609058170676054998

`A005378(xor(A008618(n), A151052(n)))`
-/

namespace A150347.P12609058170676054998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (Int.xor (A008618 n) (A151052 n)).toNat

end

end A150347.P12609058170676054998

/-!
# A150348: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150348, there is no canonical definition to state claims against.
-/

/-! ## A150348.P445881161516688105

`A105518(A055145(n+2))`
-/

namespace A150348.P445881161516688105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A055145 (n + 2)).toNat

end

end A150348.P445881161516688105

/-! ## A150348.P10699989364489040108

`A332086(A030534(n+5))`
-/

namespace A150348.P10699989364489040108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A030534 (n + 5)).toNat

end

end A150348.P10699989364489040108

/-!
# A150349: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150349, there is no canonical definition to state claims against.
-/

/-! ## A150349.P2501531245781913299

`A150350(n)-A191928(A000129(n))`
-/

namespace A150349.P2501531245781913299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150350 n - A191928 (A000129 n).toNat

end

end A150349.P2501531245781913299

/-! ## A150349.P11038169150096332295

`A150350(A001096(n))`
-/

namespace A150349.P11038169150096332295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150350 (A001096 n).toNat

end

end A150349.P11038169150096332295

/-!
# A150350: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150350, there is no canonical definition to state claims against.
-/

/-! ## A150350.P8861612814479155961

`or(A123262(2^n-1), A150349(n))`
-/

namespace A150350.P8861612814479155961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123262 (2 ^ n - 1)) (A150349 n)

end

end A150350.P8861612814479155961

/-! ## A150350.P15559136638598511717

`A191928(A000129(n))+A150349(n)`
-/

namespace A150350.P15559136638598511717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191928 (A000129 n).toNat + A150349 n

end

end A150350.P15559136638598511717

/-! ## A150350.P7521564373252161034

`(n%2)!*or(A123262(A000225(n)), A150349(n))`
-/

namespace A150350.P7521564373252161034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * Int.lor (A123262 (A000225 n).toNat) (A150349 n)

end

end A150350.P7521564373252161034

/-!
# A150351: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150351, there is no canonical definition to state claims against.
-/

/-! ## A150351.P15638309087333945975

`A150350(n)+2*A191928(A000129(n))`
-/

namespace A150351.P15638309087333945975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150350 n + 2 * A191928 (A000129 n).toNat

end

end A150351.P15638309087333945975

/-!
# A150352: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150352, there is no canonical definition to state claims against.
-/

/-! ## A150352.P12755433662428262414

`A332086(A026748(n+1))`
-/

namespace A150352.P12755433662428262414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A026748 (n + 1)).toNat

end

end A150352.P12755433662428262414

/-! ## A150352.P5463164446992730472

`Δ[A008612(Δ[A304781(n)])]`
-/

namespace A150352.P5463164446992730472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304781 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A150352.P5463164446992730472

/-!
# A150353: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150353, there is no canonical definition to state claims against.
-/

/-! ## A150353.P6845572090870727850

`A000026(A150354(n))`
-/

namespace A150353.P6845572090870727850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A150354 n).toNat

end

end A150353.P6845572090870727850

/-! ## A150353.P15561224789229306170

`A150354(A073789(n))`
-/

namespace A150353.P15561224789229306170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150354 (A073789 n).toNat

end

end A150353.P15561224789229306170

/-! ## A150353.P13875045820535719242

`A150354(A171644(n))`
-/

namespace A150353.P13875045820535719242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150354 (A171644 n).toNat

end

end A150353.P13875045820535719242

/-! ## A150353.P15390755635124460878

`A150354(A004869(n+1))`
-/

namespace A150353.P15390755635124460878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150354 (A004869 (n + 1)).toNat

end

end A150353.P15390755635124460878

/-!
# A150355: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, -1), (0, 0, 1), (1, 1, 1)}.

The programs for A150355, there is no canonical definition to state claims against.
-/

/-! ## A150355.P2983914817545252461

`A004181(A150356(n))`
-/

namespace A150355.P2983914817545252461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A150356 n).toNat

end

end A150355.P2983914817545252461

/-! ## A150355.P14642342734200410278

`A150356(A073789(n))`
-/

namespace A150355.P14642342734200410278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150356 (A073789 n).toNat

end

end A150355.P14642342734200410278

/-! ## A150355.P4631394276739239678

`A150356(A171644(n))`
-/

namespace A150355.P4631394276739239678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150356 (A171644 n).toNat

end

end A150355.P4631394276739239678

/-! ## A150355.P5802217233415860172

`A150356(A004869(n+1))`
-/

namespace A150355.P5802217233415860172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150356 (A004869 (n + 1)).toNat

end

end A150355.P5802217233415860172

/-!
# A150359: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, -1), (1, 1, 1)}.

The programs for A150359, there is no canonical definition to state claims against.
-/

/-! ## A150359.P2669321442252226071

`A150362(n)-A057945(A185136(2*n))`
-/

namespace A150359.P2669321442252226071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150362 n - A057945 (A185136 (2 * n)).toNat

end

end A150359.P2669321442252226071

/-! ## A150359.P4604300580464202319

`A150360(n)%p?[or(abs(1-n), 2^n)]`
-/

namespace A150359.P4604300580464202319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - (n : ℤ)| (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150360 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150359.P4604300580464202319

/-!
# A150361: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150361, there is no canonical definition to state claims against.
-/

/-! ## A150361.P8908310547998615244

`A350348(A150359(n))`
-/

namespace A150361.P8908310547998615244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A150359 n).toNat

end

end A150361.P8908310547998615244

/-! ## A150361.P5219986165016260237

`A260734(A026526(n+1))`
-/

namespace A150361.P5219986165016260237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A026526 (n + 1)).toNat

end

end A150361.P5219986165016260237

/-!
# A150362: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150362, there is no canonical definition to state claims against.
-/

/-! ## A150362.P17858966431204937112

`A337586(A150353(n))+A150361(n)-1`
-/

namespace A150362.P17858966431204937112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337586 (A150353 n).toNat + (A150361 n - 1)

end

end A150362.P17858966431204937112

/-! ## A150362.P11284041007492861009

`A150359(n)+A057945(A185136(2*n))`
-/

namespace A150362.P11284041007492861009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150359 n + A057945 (A185136 (2 * n)).toNat

end

end A150362.P11284041007492861009

/-!
# A150363: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150363, there is no canonical definition to state claims against.
-/

/-! ## A150363.P3169664407639036984

`A150364(A073788(n))`
-/

namespace A150363.P3169664407639036984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150364 (A073788 n).toNat

end

end A150363.P3169664407639036984

/-! ## A150363.P17712451445125181483

`A127287(A150364(n))`
-/

namespace A150363.P17712451445125181483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A150364 n).toNat

end

end A150363.P17712451445125181483

/-! ## A150363.P2215501055762673290

`A150364(A171596(n))`
-/

namespace A150363.P2215501055762673290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150364 (A171596 n).toNat

end

end A150363.P2215501055762673290

/-!
# A150365: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150365, there is no canonical definition to state claims against.
-/

/-! ## A150365.P4219208291942901946

`A306677(A099846(n+1))`
-/

namespace A150365.P4219208291942901946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306677 (A099846 (n + 1)).toNat

end

end A150365.P4219208291942901946

/-! ## A150365.P4542431102408050634

`∑[A113215(A025235(n)²)]`
-/

namespace A150365.P4542431102408050634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A025235 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150365.P4542431102408050634

/-!
# A150366: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150366, there is no canonical definition to state claims against.
-/

/-! ## A150366.P8921989756971072814

`A262293(n+2)+A195441(n)`
-/

namespace A150366.P8921989756971072814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262293 (n + 2) + A195441 n

end

end A150366.P8921989756971072814

/-! ## A150366.P6830344986499643728

`A289497(∑[∑[A289529(2*n)]])`
-/

namespace A150366.P6830344986499643728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289529 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150366.P6830344986499643728

/-!
# A150367: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, 1), (1, 1, 0)}.

The programs for A150367, there is no canonical definition to state claims against.
-/

/-! ## A150367.P6888136147854625080

`∏{p}[A150368(n)², #]`
-/

namespace A150367.P6888136147854625080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150368 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150367.P6888136147854625080

/-! ## A150367.P6831285043356361048

`A150368(A001096(n))`
-/

namespace A150367.P6831285043356361048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150368 (A001096 n).toNat

end

end A150367.P6831285043356361048

/-!
# A150368: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150368, there is no canonical definition to state claims against.
-/

/-! ## A150368.P1241397473240653990

`or(A025428(A080951(n)), A150367(n))`
-/

namespace A150368.P1241397473240653990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025428 (A080951 n).toNat) (A150367 n)

end

end A150368.P1241397473240653990

/-! ## A150368.P13345966107091256459

`or(A116864(A154778(2*(n+2))), A150367(n))`
-/

namespace A150368.P13345966107091256459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116864 (A154778 (2 * (n + 2))).toNat) (A150367 n)

end

end A150368.P13345966107091256459

/-!
# A150369: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150369, there is no canonical definition to state claims against.
-/

/-! ## A150369.P11080904038524532538

`A008619(A026380(n)*A027306(n))`
-/

namespace A150369.P11080904038524532538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026380 n * A027306 n).toNat

end

end A150369.P11080904038524532538

/-! ## A150369.P16965524738640374605

`A008619((A011782(n+1)-A058622(n))*A026380(n))`
-/

namespace A150369.P16965524738640374605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((A011782 (n + 1) - A058622 n) * A026380 n).toNat

end

end A150369.P16965524738640374605

/-! ## A150369.P13946898049861936829

`A008619((A058622(n+1)-A294175(n))*A026380(n))`
-/

namespace A150369.P13946898049861936829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((A058622 (n + 1) - A294175 n) * A026380 n).toNat

end

end A150369.P13946898049861936829

/-!
# A150370: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150370, there is no canonical definition to state claims against.
-/

/-! ## A150370.P5085488161649908370

`or(A150263(n), A200370(3^n))`
-/

namespace A150370.P5085488161649908370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150263 n) (A200370 (3 ^ n))

end

end A150370.P5085488161649908370

/-! ## A150370.P5740881768831076931

`∏{p}[(A003602(n+1)-A216597(n))², #]`
-/

namespace A150370.P5740881768831076931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) - A216597 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150370.P5740881768831076931

/-!
# A150371: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150371, there is no canonical definition to state claims against.
-/

/-! ## A150371.P14576775108817831947

`char[4]+∑[∏{p}[A149701(n)², #]]-char[3]`
-/

namespace A150371.P14576775108817831947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149701 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150371.P14576775108817831947

/-! ## A150371.P9348254223345707859

`A002330(A154828(n))`
-/

namespace A150371.P9348254223345707859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A154828 n).toNat

end

end A150371.P9348254223345707859

/-!
# A150372: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150372, there is no canonical definition to state claims against.
-/

/-! ## A150372.P14884201195992150603

`A350844(∑[A096507(n+1)])`
-/

namespace A150372.P14884201195992150603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150372.P14884201195992150603

/-! ## A150372.P4113749484900469960

`A217438(Δ[A217312(2*n)])`
-/

namespace A150372.P4113749484900469960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217312 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217438 (f1 (n + 1) - f1 n).toNat

end

end A150372.P4113749484900469960

/-!
# A150373: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150373, there is no canonical definition to state claims against.
-/

/-! ## A150373.P3391626401130291487

`A137285(A261681(n))`
-/

namespace A150373.P3391626401130291487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137285 (A261681 n).toNat

end

end A150373.P3391626401130291487

/-! ## A150373.P7874120359318309165

`A137285(∑[A339006(n)])`
-/

namespace A150373.P7874120359318309165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137285 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150373.P7874120359318309165

/-!
# A150374: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A150374, there is no canonical definition to state claims against.
-/

/-! ## A150374.P16281053181768223805

`or(A150261(n), A220431(A150261(n+1)))`
-/

namespace A150374.P16281053181768223805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150261 n) (A220431 (A150261 (n + 1)).toNat)

end

end A150374.P16281053181768223805

/-! ## A150374.P6161708723366378976

`A037918(A150159(n))`
-/

namespace A150374.P6161708723366378976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A150159 n).toNat

end

end A150374.P6161708723366378976

/-!
# A150375: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150375, there is no canonical definition to state claims against.
-/

/-! ## A150375.P6077125220593225418

`A194819(A248748(n+2))`
-/

namespace A150375.P6077125220593225418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194819 (A248748 (n + 2)).toNat

end

end A150375.P6077125220593225418

/-! ## A150375.P15695549919330871197

`A150376(A001096(n))`
-/

namespace A150375.P15695549919330871197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150376 (A001096 n).toNat

end

end A150375.P15695549919330871197

/-!
# A150377: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150377, there is no canonical definition to state claims against.
-/

/-! ## A150377.P2108492579298939307

`A150379(n)%p?[or(abs(1-n), 2^n)]`
-/

namespace A150377.P2108492579298939307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - (n : ℤ)| (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150379 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150377.P2108492579298939307

/-! ## A150377.P12312598401839673120

`A150378(n^3^∑{p}[n+1, (#%3)%2])`
-/

namespace A150377.P12312598401839673120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150378 (n ^ 3 ^ (∑ p ∈ Nat.primeFactors (f1 n), p % 3 % 2))

end

end A150377.P12312598401839673120

/-!
# A150381: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150381, there is no canonical definition to state claims against.
-/

/-! ## A150381.P11535170877694976080

`∏{p}[A150382(n)², #]`
-/

namespace A150381.P11535170877694976080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150382 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150381.P11535170877694976080

/-! ## A150381.P14932356199681032113

`A150382((n-5)*n*((n-1-(2-n)²)²-1)+n)`
-/

namespace A150381.P14932356199681032113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150382 (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1)) + (n : ℤ)).toNat

end

end A150381.P14932356199681032113

/-!
# A150383: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150383, there is no canonical definition to state claims against.
-/

/-! ## A150383.P18007392006239734240

`A264749(∑[A018011(n)²])`
-/

namespace A150383.P18007392006239734240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018011 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150383.P18007392006239734240

/-! ## A150383.P13358319976587023399

`A110656(round(ratio[A300336(n+1)]))`
-/

namespace A150383.P13358319976587023399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A150383.P13358319976587023399

/-!
# A150384: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150384, there is no canonical definition to state claims against.
-/

/-! ## A150384.P10389896416265915045

`A150385(A001096(n))`
-/

namespace A150384.P10389896416265915045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150385 (A001096 n).toNat

end

end A150384.P10389896416265915045

/-! ## A150384.P8124578940335258935

`A157271(2*A150385(n))`
-/

namespace A150384.P8124578940335258935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A150385 n).toNat

end

end A150384.P8124578940335258935

/-!
# A150386: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150386, there is no canonical definition to state claims against.
-/

/-! ## A150386.P10646871935934827179

`A150387(n)%p?[or(abs(1-n), 2^n)]`
-/

namespace A150386.P10646871935934827179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - (n : ℤ)| (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150387 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150386.P10646871935934827179

/-! ## A150386.P654861792162856441

`A150387(A001096(n))`
-/

namespace A150386.P654861792162856441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150387 (A001096 n).toNat

end

end A150386.P654861792162856441

/-!
# A150388: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150388, there is no canonical definition to state claims against.
-/

/-! ## A150388.P14876893568450726386

`A225645(A359068(n+2))`
-/

namespace A150388.P14876893568450726386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (A359068 (n + 2)).toNat

end

end A150388.P14876893568450726386

/-! ## A150388.P6564695432447863348

`A326846(A195242(n))+A254788(n+1)`
-/

namespace A150388.P6564695432447863348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A195242 n).toNat + A254788 (n + 1)

end

end A150388.P6564695432447863348

/-!
# A150389: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150389, there is no canonical definition to state claims against.
-/

/-! ## A150389.P10143958444147400185

`A226369(2*n+1)+A142727(A360267(n))`
-/

namespace A150389.P10143958444147400185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226369 (2 * n + 1) + A142727 (A360267 n).toNat

end

end A150389.P10143958444147400185

/-! ## A150389.P16147671400237326453

`A226369(2*n+1)+A142727(A360291(n))`
-/

namespace A150389.P16147671400237326453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226369 (2 * n + 1) + A142727 (A360291 n).toNat

end

end A150389.P16147671400237326453

/-!
# A150390: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150390, there is no canonical definition to state claims against.
-/

/-! ## A150390.P9568817763401307375

`A194204(A007853(n+2))`
-/

namespace A150390.P9568817763401307375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (A007853 (n + 2)).toNat

end

end A150390.P9568817763401307375

/-! ## A150390.P11359698358412609543

`A215008(n)+A181935(A181920(n+2))`
-/

namespace A150390.P11359698358412609543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n + A181935 (A181920 (n + 2)).toNat

end

end A150390.P11359698358412609543

/-!
# A150391: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150391, there is no canonical definition to state claims against.
-/

/-! ## A150391.P10480097517630418077

`A342518(A038402(n))`
-/

namespace A150391.P10480097517630418077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (A038402 n).toNat

end

end A150391.P10480097517630418077

/-! ## A150391.P1937795960369315403

`A342518(A254874(n))`
-/

namespace A150391.P1937795960369315403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (A254874 n).toNat

end

end A150391.P1937795960369315403

/-!
# A150392: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150392, there is no canonical definition to state claims against.
-/

/-! ## A150392.P6729625151068014899

`A288156(A150011(n+1))`
-/

namespace A150392.P6729625151068014899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (A150011 (n + 1)).toNat

end

end A150392.P6729625151068014899

/-! ## A150392.P8335460644369641022

`A101402(A020515(n))+n`
-/

namespace A150392.P8335460644369641022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A020515 n).toNat + (n : ℤ)

end

end A150392.P8335460644369641022

/-! ## A150392.P17345728237106208394

`A091972(A135593(n+2)+A003982(n))`
-/

namespace A150392.P17345728237106208394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A135593 (n + 2) + A003982 n).toNat

end

end A150392.P17345728237106208394

/-!
# A150393: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150393, there is no canonical definition to state claims against.
-/

/-! ## A150393.P9134608634653416759

`A150394(A001096(n))`
-/

namespace A150393.P9134608634653416759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150394 (A001096 n).toNat

end

end A150393.P9134608634653416759

/-! ## A150393.P5387514046009933438

`filter[A150394(n), A122261(#)]`
-/

namespace A150393.P5387514046009933438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A150393.P5387514046009933438

/-!
# A150394: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150394, there is no canonical definition to state claims against.
-/

/-! ## A150394.P16226739541767289956

`A004525(A091613(n+1)+A026559(n+1))`
-/

namespace A150394.P16226739541767289956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091613 (n + 1) + A026559 (n + 1)).toNat

end

end A150394.P16226739541767289956

/-! ## A150394.P9585201743454010963

`A065033(A091613(n+1)+A026559(n+1))`
-/

namespace A150394.P9585201743454010963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A091613 (n + 1) + A026559 (n + 1)).toNat

end

end A150394.P9585201743454010963

/-! ## A150394.P13631985085592721841

`A194161(A026559(n+1))+A000189(n+1)`
-/

namespace A150394.P13631985085592721841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194161 (A026559 (n + 1)).toNat + A000189 (n + 1)

end

end A150394.P13631985085592721841

/-!
# A150395: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150395, there is no canonical definition to state claims against.
-/

/-! ## A150395.P5145288001071614471

`Δ[Δ[A337522(n)]]-A006478(n)`
-/

namespace A150395.P5145288001071614471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006478 n

end

end A150395.P5145288001071614471

/-! ## A150395.P5724850448819909382

`A214701(A150400(n))`
-/

namespace A150395.P5724850448819909382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150400 n).toNat

end

end A150395.P5724850448819909382

/-!
# A150396: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150396, there is no canonical definition to state claims against.
-/

/-! ## A150396.P16989067236253436134

`A004525(A026559(n+1)+A019474(n))`
-/

namespace A150396.P16989067236253436134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026559 (n + 1) + A019474 n).toNat

end

end A150396.P16989067236253436134

/-! ## A150396.P1737884633758074114

`A129100(n)+A004526(A026559(n+1))`
-/

namespace A150396.P1737884633758074114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 n + A004526 (A026559 (n + 1)).toNat

end

end A150396.P1737884633758074114

/-! ## A150396.P5414833326082794551

`A030520(n+2)+A003056(A001586(n))`
-/

namespace A150396.P5414833326082794551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030520 (n + 2) + A003056 (A001586 n).toNat

end

end A150396.P5414833326082794551

/-!
# A150398: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150398, there is no canonical definition to state claims against.
-/

/-! ## A150398.P17691223210998129526

`∑[A127757(A092467(n))]`
-/

namespace A150398.P17691223210998129526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A092467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150398.P17691223210998129526

/-! ## A150398.P2830341965338879357

`A008621(A150848(n))+A001353(n)`
-/

namespace A150398.P2830341965338879357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150848 n).toNat + A001353 n

end

end A150398.P2830341965338879357

/-! ## A150398.P14394578669254585160

`A291147(A049332(n))+A151295(n)`
-/

namespace A150398.P14394578669254585160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291147 (A049332 n).toNat + A151295 n

end

end A150398.P14394578669254585160

/-!
# A150399: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150399, there is no canonical definition to state claims against.
-/

/-! ## A150399.P11019453281042809110

`A210357(A151043(n))`
-/

namespace A150399.P11019453281042809110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A151043 n).toNat

end

end A150399.P11019453281042809110

/-! ## A150399.P1084765438030729107

`A194640(A055841(n)+1)`
-/

namespace A150399.P1084765438030729107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A055841 n + 1).toNat

end

end A150399.P1084765438030729107

