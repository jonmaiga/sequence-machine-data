import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A046600: First numerator and then denominator of each element of the 1/4-Pascal triangle (by row), excluding 1's and 4's.

The programs for A046600, there is no canonical definition to state claims against.
-/

/-! ## A046600.P8889255669659086022

`A046581(lt[1, A046581(n+1)]+1)`
-/

namespace A046600.P8889255669659086022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046600.P8889255669659086022

/-! ## A046600.P126147816918298624

`A046581(eq[1, ceil(2/A046581(n+1))]+1)`
-/

namespace A046600.P126147816918298624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A046581 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046600.P126147816918298624

/-! ## A046600.P6817048406938219373

`A064553(p?[A008578(A046581(n+1))])`
-/

namespace A046600.P6817048406938219373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046600.P6817048406938219373

/-! ## A046600.P15961005032266115001

`filter[A046565(n+1), A165556(#)]`
-/

namespace A046600.P15961005032266115001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A046600.P15961005032266115001

/-!
# A046601: First numerator and then denominator of the 1/5-Pascal triangle (by row). To get a 1/5-Pascal triangle, replace "2" in the third row of the Pascal triangle with "1/5" and calculate all other rows as in the Pascal triangle.

The programs for A046601, there is no canonical definition to state claims against.
-/

/-! ## A046601.P2595627113785623448

`A046602(xor(1, n)+1)`
-/

namespace A046601.P2595627113785623448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (Nat.xor 1 n + 1)

end

end A046601.P2595627113785623448

/-! ## A046601.P12538302512128507885

`A046602(n+2-2*and(1, n))`
-/

namespace A046601.P12538302512128507885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (n + 2 - 2 * Nat.land 1 n)

end

end A046601.P12538302512128507885

/-! ## A046601.P12050236418987951276

`A046602(A004442(n)+1)`
-/

namespace A046601.P12050236418987951276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A004442 n + 1).toNat

end

end A046601.P12050236418987951276

/-! ## A046601.P23859282207853802

`A046602(A014681(n+1))`
-/

namespace A046601.P23859282207853802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A014681 (n + 1)).toNat

end

end A046601.P23859282207853802

/-! ## A046601.P336313065175060557

`A046602(A103889(n+1))`
-/

namespace A046601.P336313065175060557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A103889 (n + 1)).toNat

end

end A046601.P336313065175060557

/-! ## A046601.P14812951562533385662

`A046602(A114112(n+1))`
-/

namespace A046601.P14812951562533385662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A114112 (n + 1)).toNat

end

end A046601.P14812951562533385662

/-! ## A046601.P10293183757957703788

`A046602(xor(1, A165754(n)))`
-/

namespace A046601.P10293183757957703788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (Int.xor 1 (A165754 n)).toNat

end

end A046601.P10293183757957703788

/-! ## A046601.P18011510514160991632

`A046602(abs(Δ[A014682(n)]))`
-/

namespace A046601.P18011510514160991632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 |f1 (n + 1) - f1 n|.toNat

end

end A046601.P18011510514160991632

/-! ## A046601.P16057482648019564441

`A046602((A166519(n)+1)/2)`
-/

namespace A046601.P16057482648019564441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (SequenceMachineLib.roundAway ((A166519 n + 1 : ℚ) / 2)).toNat

end

end A046601.P16057482648019564441

/-! ## A046601.P2297808760204399762

`A046602(2*A059841(n)+n)`
-/

namespace A046601.P2297808760204399762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (2 * A059841 n + (n : ℤ)).toNat

end

end A046601.P2297808760204399762

/-! ## A046601.P2701437560515499756

`A046602(2*A109613(n)-n)`
-/

namespace A046601.P2701437560515499756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (2 * A109613 n - (n : ℤ)).toNat

end

end A046601.P2701437560515499756

/-! ## A046601.P9945130630368430266

`A046602(or(2, A004277(n))-n)`
-/

namespace A046601.P9945130630368430266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (Int.lor 2 (A004277 n) - (n : ℤ)).toNat

end

end A046601.P9945130630368430266

/-! ## A046601.P1944188930269294772

`A046602(Δ[n²]-A014681(n))`
-/

namespace A046601.P1944188930269294772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A014681 n).toNat

end

end A046601.P1944188930269294772

/-! ## A046601.P15173869063483292084

`A046602(A109613(n)+A059841(n))`
-/

namespace A046601.P15173869063483292084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A109613 n + A059841 n).toNat

end

end A046601.P15173869063483292084

/-! ## A046601.P8169740255992587520

`A046602(A059841(n)+A059841(n)+n)`
-/

namespace A046601.P8169740255992587520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A059841 n + (A059841 n + (n : ℤ))).toNat

end

end A046601.P8169740255992587520

/-! ## A046601.P2599380421041545828

`A046602(A109613(n)+A109613(n)-n)`
-/

namespace A046601.P2599380421041545828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A109613 n + (A109613 n - (n : ℤ))).toNat

end

end A046601.P2599380421041545828

/-! ## A046601.P725877895220494374

`A046602(A109613(n)-(n-A109613(n)))`
-/

namespace A046601.P725877895220494374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A109613 n - ((n : ℤ) - A109613 n)).toNat

end

end A046601.P725877895220494374

/-! ## A046601.P645954625846883353

`A046602(Δ[A236453(n)])`
-/

namespace A046601.P645954625846883353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (f1 (n + 1) - f1 n).toNat

end

end A046601.P645954625846883353

/-!
# A046602: First denominator and then numerator of each element of the 1/5-Pascal triangle (by row).

The programs for A046602, there is no canonical definition to state claims against.
-/

/-! ## A046602.P8389144965743376363

`A046601(xor(1, n)+1)`
-/

namespace A046602.P8389144965743376363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (Nat.xor 1 n + 1)

end

end A046602.P8389144965743376363

/-! ## A046602.P3559651288444844136

`A046601(abs(xor(n, -2)))`
-/

namespace A046602.P3559651288444844136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 |Int.xor (n : ℤ) (-2)|.toNat

end

end A046602.P3559651288444844136

/-! ## A046602.P9455765735902762411

`A046601(2-xor(1, 1-n))`
-/

namespace A046602.P9455765735902762411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A046602.P9455765735902762411

/-! ## A046602.P7904795414269798220

`A046601(A004442(n)+1)`
-/

namespace A046602.P7904795414269798220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A004442 n + 1).toNat

end

end A046602.P7904795414269798220

/-! ## A046602.P17073163759394068782

`A046601(A014681(n+1))`
-/

namespace A046602.P17073163759394068782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A014681 (n + 1)).toNat

end

end A046602.P17073163759394068782

/-! ## A046602.P8450736677090894814

`A046601(A103889(n+1))`
-/

namespace A046602.P8450736677090894814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A103889 (n + 1)).toNat

end

end A046602.P8450736677090894814

/-! ## A046602.P8371369627652017484

`A046601(A114112(n+1))`
-/

namespace A046602.P8371369627652017484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A114112 (n + 1)).toNat

end

end A046602.P8371369627652017484

/-! ## A046602.P2298314940829419751

`A046601(abs(Δ[A014682(n)]))`
-/

namespace A046602.P2298314940829419751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 |f1 (n + 1) - f1 n|.toNat

end

end A046602.P2298314940829419751

/-! ## A046602.P11005564997871035499

`A046601(A033999(n)+1+n)`
-/

namespace A046602.P11005564997871035499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A033999 n + 1 + (n : ℤ)).toNat

end

end A046602.P11005564997871035499

/-! ## A046602.P3865259838193117272

`A046601(A005408(n)-(n-A033999(n)))`
-/

namespace A046602.P3865259838193117272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A005408 n - ((n : ℤ) - A033999 n)).toNat

end

end A046602.P3865259838193117272

/-! ## A046602.P14348150543276810447

`A046601(Δ[A236453(n)])`
-/

namespace A046602.P14348150543276810447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (f1 (n + 1) - f1 n).toNat

end

end A046602.P14348150543276810447

/-! ## A046602.P11693891715538331020

`A046601(A236453(n+1)-A236453(n))`
-/

namespace A046602.P11693891715538331020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A236453 (n + 1) - A236453 n).toNat

end

end A046602.P11693891715538331020

/-! ## A046602.P16178989511829271553

`A046601(sqrt(A000027(xor(n, -2)²)))`
-/

namespace A046602.P16178989511829271553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.roundAway (Real.sqrt (A000027 (Int.xor (n : ℤ) (-2) ^ 2).toNat : ℝ))).toNat

end

end A046602.P16178989511829271553

/-!
# A046603: First numerator and then denominator of each element of the 1/5-Pascal triangle (by row), excluding 1's.

The programs for A046603, there is no canonical definition to state claims against.
-/

/-! ## A046603.P13210506729992805636

`A046601(lt[1, A046601(n+1)]+1)`
-/

namespace A046603.P13210506729992805636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046603.P13210506729992805636

/-! ## A046603.P14816935779759504174

`A046601(eq[2, 2%A046601(n+1)]+1)`
-/

namespace A046603.P14816935779759504174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A046601 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046603.P14816935779759504174

/-! ## A046603.P10031727146766841101

`A238690(p?[A008578(A046601(n+1))])`
-/

namespace A046603.P10031727146766841101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046603.P10031727146766841101

/-! ## A046603.P15544158088823184093

`A046604(n+2)^A034497(n+1)!`
-/

namespace A046603.P15544158088823184093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (n + 2) ^ Nat.factorial (A034497 (n + 1)).toNat

end

end A046603.P15544158088823184093

/-! ## A046603.P411814378503888359

`A046604(n+2)+A008683(A230136(n+2))`
-/

namespace A046603.P411814378503888359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (n + 2) + A008683 (A230136 (n + 2)).toNat

end

end A046603.P411814378503888359

/-!
# A046604: First denominator and then numerator of the 1/5-Pascal triangle (by row), excluding 1's.

The programs for A046604, there is no canonical definition to state claims against.
-/

/-! ## A046604.P15981411840295964874

`A046602(lt[1, A046602(n+1)]+1)`
-/

namespace A046604.P15981411840295964874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046604.P15981411840295964874

/-! ## A046604.P15004615883198771096

`A046603(A028310(n))+A000007(A050039(n+1))`
-/

namespace A046604.P15004615883198771096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046603 (A028310 n).toNat + A000007 (A050039 (n + 1)).toNat

end

end A046604.P15004615883198771096

/-! ## A046604.P7461490152603403467

`A046603(A028310(n))+A000007(A050059(n+1))`
-/

namespace A046604.P7461490152603403467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046603 (A028310 n).toNat + A000007 (A050059 (n + 1)).toNat

end

end A046604.P7461490152603403467

/-! ## A046604.P6242482965973455303

`A001222(A335325(n+1))*A046603(A028310(n))`
-/

namespace A046604.P6242482965973455303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A335325 (n + 1)).toNat * A046603 (A028310 n).toNat

end

end A046604.P6242482965973455303

/-!
# A046605: First denominator and then numerator of the 1/5-Pascal triangle (by row), excluding 1's and 5's.

The programs for A046605, there is no canonical definition to state claims against.
-/

/-! ## A046605.P410575880260374775

`A046606(lt[1, A046606(n+1)]+1)`
-/

namespace A046605.P410575880260374775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046605.P410575880260374775

/-! ## A046605.P2548333034515255919

`A046604(lt[5, A046604(n+1)]+1)`
-/

namespace A046605.P2548333034515255919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046605.P2548333034515255919

/-! ## A046605.P16950002512084005067

`A046620(lt[1, A046620(n+1)]+1)`
-/

namespace A046605.P16950002512084005067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046605.P16950002512084005067

/-! ## A046605.P9171481999431910263

`A046601(lt[3, A046535(n+1)])`
-/

namespace A046605.P9171481999431910263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046605.P9171481999431910263

/-! ## A046605.P5928119298979518457

`A046601(lt[4, A046564(n+1)])`
-/

namespace A046605.P5928119298979518457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046605.P5928119298979518457

/-! ## A046605.P12517369648998700494

`A046601(lt[5, A046602(n+1)])`
-/

namespace A046605.P12517369648998700494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046605.P12517369648998700494

/-! ## A046605.P14319740714525288431

`filter[A046603(n+1), A023532(#)]`
-/

namespace A046605.P14319740714525288431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046605.P14319740714525288431

/-! ## A046605.P8237612693417549278

`filter[A046604(n+1), A023532(#)]`
-/

namespace A046605.P8237612693417549278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046605.P8237612693417549278

/-! ## A046605.P301203186223938405

`filter[A046603(n+1), A276398(#)]`
-/

namespace A046605.P301203186223938405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A046605.P301203186223938405

/-! ## A046605.P3044245305220469866

`filter[A046604(n+1), A276398(#)]`
-/

namespace A046605.P3044245305220469866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A046605.P3044245305220469866

/-!
# A046606: Numerators of the 1/5-Pascal triangle (by row).

The programs for A046606, there is no canonical definition to state claims against.
-/

/-! ## A046606.P6381698479454134320

`A046601(Δ[n²])`
-/

namespace A046606.P6381698479454134320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046606.P6381698479454134320

/-! ## A046606.P16191144510324680681

`A046602(2*(n+1))`
-/

namespace A046606.P16191144510324680681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (2 * (n + 1))

end

end A046606.P16191144510324680681

/-! ## A046606.P4418219688884744894

`xor(1, xor(1, A046601(2*n+1)))`
-/

namespace A046606.P4418219688884744894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A046601 (2 * n + 1)))

end

end A046606.P4418219688884744894

/-! ## A046606.P4958879883488591945

`A046601(A005408(n))^C(2, n)!`
-/

namespace A046606.P4958879883488591945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A005408 n).toNat ^ Nat.factorial (Nat.choose 2 n)

end

end A046606.P4958879883488591945

/-! ## A046606.P2526527685657822715

`lcm(A033999(n), A046601(2*n+1))`
-/

namespace A046606.P2526527685657822715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A046601 (2 * n + 1))

end

end A046606.P2526527685657822715

/-! ## A046606.P16043325683939133707

`or(A000007(n), A046601(2*n+1))`
-/

namespace A046606.P16043325683939133707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046601 (2 * n + 1))

end

end A046606.P16043325683939133707

/-! ## A046606.P190902116872631011

`A046601(2*n+1)+A000007(n+1)`
-/

namespace A046606.P190902116872631011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * n + 1) + A000007 (n + 1)

end

end A046606.P190902116872631011

/-! ## A046606.P10662853208759582656

`A046601(2*n+1)+A000035(2*n)`
-/

namespace A046606.P10662853208759582656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * n + 1) + A000035 (2 * n)

end

end A046606.P10662853208759582656

/-! ## A046606.P17416568079768978390

`A000034(2*n)*A046601(2*n+1)`
-/

namespace A046606.P17416568079768978390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A046601 (2 * n + 1)

end

end A046606.P17416568079768978390

/-! ## A046606.P2472733404133509157

`A033999(2*n)*A046601(2*n+1)`
-/

namespace A046606.P2472733404133509157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A046601 (2 * n + 1)

end

end A046606.P2472733404133509157

/-! ## A046606.P2320256859942784419

`A046601(2*n+1)+C(2, A005408(n+1))`
-/

namespace A046606.P2320256859942784419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * n + 1) + (Nat.choose 2 (A005408 (n + 1)).toNat : ℤ)

end

end A046606.P2320256859942784419

/-! ## A046606.P5682467506354164970

`(A028310(n+1)-n)*A046601(2*n+1)`
-/

namespace A046606.P5682467506354164970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) - (n : ℤ)) * A046601 (2 * n + 1)

end

end A046606.P5682467506354164970

/-! ## A046606.P10898996995251590457

`A046601(2*n+1)+A014682(2*n)-n`
-/

namespace A046606.P10898996995251590457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * n + 1) + (A014682 (2 * n) - (n : ℤ))

end

end A046606.P10898996995251590457

/-! ## A046606.P2974417531109087275

`(A080513(2*n)-n)*A046601(2*n+1)`
-/

namespace A046606.P2974417531109087275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080513 (2 * n) - (n : ℤ)) * A046601 (2 * n + 1)

end

end A046606.P2974417531109087275

/-! ## A046606.P18404120004719872587

`gcd(2, A046601(2*(n+1)))*A046601(2*n+1)`
-/

namespace A046606.P18404120004719872587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A046601 (2 * (n + 1))) : ℤ) * A046601 (2 * n + 1)

end

end A046606.P18404120004719872587

/-! ## A046606.P6068706954826923209

`A046601(A005408(n))^A035214(n)`
-/

namespace A046606.P6068706954826923209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046601 (A005408 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A046606.P6068706954826923209

/-! ## A046606.P15683442095207716942

`A046601(A005408(n))/A033999(n)²`
-/

namespace A046606.P15683442095207716942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046601 (A005408 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A046606.P15683442095207716942

/-! ## A046606.P2620101554895508154

`A046601(2*n+1)*A046601(A014963(2*(n+1)))`
-/

namespace A046606.P2620101554895508154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * n + 1) * A046601 (A014963 (2 * (n + 1))).toNat

end

end A046606.P2620101554895508154

/-! ## A046606.P8612665118812106991

`A046535(A046535(2*n+1))*A046601(2*n+1)`
-/

namespace A046606.P8612665118812106991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046535 (A046535 (2 * n + 1)).toNat * A046601 (2 * n + 1)

end

end A046606.P8612665118812106991

/-! ## A046606.P6294771824334459628

`A046601(A046564(2*n+1))*A046601(2*n+1)`
-/

namespace A046606.P6294771824334459628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A046564 (2 * n + 1)).toNat * A046601 (2 * n + 1)

end

end A046606.P6294771824334459628

/-!
# A046607: Denominators of the 1/5-Pascal triangle (by row).

The programs for A046607, there is no canonical definition to state claims against.
-/

/-! ## A046607.P18170231009990678874

`A046602(Δ[n²])`
-/

namespace A046607.P18170231009990678874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046607.P18170231009990678874

/-! ## A046607.P16465342145685297391

`A046601(2*(n+1))`
-/

namespace A046607.P16465342145685297391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * (n + 1))

end

end A046607.P16465342145685297391

/-! ## A046607.P493499655301755046

`dr(A046602(2*n+1))`
-/

namespace A046607.P493499655301755046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046602 (2 * n + 1))

end

end A046607.P493499655301755046

/-! ## A046607.P14424598132883675214

`gcd(5, A046602(n+1+n))`
-/

namespace A046607.P14424598132883675214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A046602 (n + 1 + n))

end

end A046607.P14424598132883675214

/-! ## A046607.P5530157989201493116

`dr(A046601(A103517(n)))`
-/

namespace A046607.P5530157989201493116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046601 (A103517 n).toNat)

end

end A046607.P5530157989201493116

/-! ## A046607.P13966462382881666374

`or(1, A046602(A005408(n)))`
-/

namespace A046607.P13966462382881666374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046602 (A005408 n).toNat)

end

end A046607.P13966462382881666374

/-! ## A046607.P13041950314042868523

`or(1, A046602(A004277(n)+1))`
-/

namespace A046607.P13041950314042868523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046602 (A004277 n + 1).toNat)

end

end A046607.P13041950314042868523

/-! ## A046607.P5059870718023767509

`or(1, A046601(A005408(n)+1))`
-/

namespace A046607.P5059870718023767509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046601 (A005408 n + 1).toNat)

end

end A046607.P5059870718023767509

/-! ## A046607.P11408116615521749292

`or(1, A046602(or(1, A004277(n))))`
-/

namespace A046607.P11408116615521749292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046602 (Int.lor 1 (A004277 n)).toNat)

end

end A046607.P11408116615521749292

/-! ## A046607.P9294141064332200556

`A046611(A046601(n+2+n))`
-/

namespace A046607.P9294141064332200556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (A046601 (n + 2 + n)).toNat

end

end A046607.P9294141064332200556

/-! ## A046607.P10693575676203419340

`A006530(A046602(2*n+1)!)`
-/

namespace A046607.P10693575676203419340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A046602 (2 * n + 1)).toNat)

end

end A046607.P10693575676203419340

/-! ## A046607.P8537590091538562053

`A014681(A046602(2*n+1)+1)`
-/

namespace A046607.P8537590091538562053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A046602 (2 * n + 1) + 1).toNat

end

end A046607.P8537590091538562053

/-! ## A046607.P6652423649000004766

`A046610(A046602(2*n+1)+1)`
-/

namespace A046607.P6652423649000004766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A046602 (2 * n + 1) + 1).toNat

end

end A046607.P6652423649000004766

/-! ## A046607.P17812054838471354364

`A103889(A046602(2*n+1)+1)`
-/

namespace A046607.P17812054838471354364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A046602 (2 * n + 1) + 1).toNat

end

end A046607.P17812054838471354364

/-! ## A046607.P11952692854724413781

`A004442(A046602(2*n+1)-1)`
-/

namespace A046607.P11952692854724413781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A046602 (2 * n + 1) - 1).toNat

end

end A046607.P11952692854724413781

/-! ## A046607.P6318631677698626303

`A109613(A046602(2*n+1)-1)`
-/

namespace A046607.P6318631677698626303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A046602 (2 * n + 1) - 1).toNat

end

end A046607.P6318631677698626303

/-! ## A046607.P7997923497626294986

`A001222(2^A046601(n+2+n))`
-/

namespace A046607.P7997923497626294986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046601 (n + 2 + n) : ℤ))).toNat

end

end A046607.P7997923497626294986

/-! ## A046607.P4334038975952187025

`A014963(or(1, A046601(n+2+n)))`
-/

namespace A046607.P4334038975952187025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 (A046601 (n + 2 + n))).toNat

end

end A046607.P4334038975952187025

/-! ## A046607.P18081440688052889646

`filter[A046602(2*n+1), A000035(#)]`
-/

namespace A046607.P18081440688052889646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046607.P18081440688052889646

/-! ## A046607.P12965392538076445885

`filter[A046602(2*n+1), A004547(#)]`
-/

namespace A046607.P12965392538076445885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004547 (f1 j).toNat = 1) n)

end

end A046607.P12965392538076445885

/-!
# A046609: Odd numbers in the numerators of the 1/5-Pascal triangle (by row).

The programs for A046609, there is no canonical definition to state claims against.
-/

/-! ## A046609.P15436579218843276005

`filter[A046606(n+1), A374134(#)]`
-/

namespace A046609.P15436579218843276005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A046609.P15436579218843276005

/-! ## A046609.P16375537912676127670

`filter[A046602(2*(n+1)), A374134(#)]`
-/

namespace A046609.P16375537912676127670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A046609.P16375537912676127670

/-! ## A046609.P3519204609275566581

`filter[A046601(2*n+1), A374134(#)]`
-/

namespace A046609.P3519204609275566581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A046609.P3519204609275566581

/-! ## A046609.P15842359731233767555

`filter[A046606(n+1), A000035(#)]`
-/

namespace A046609.P15842359731233767555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046609.P15842359731233767555

/-! ## A046609.P9327885488202526578

`filter[A046602(2*(n+1)), A000035(#)]`
-/

namespace A046609.P9327885488202526578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046609.P9327885488202526578

/-! ## A046609.P11008591277812035589

`filter[A046601(2*n+1), A000035(#)]`
-/

namespace A046609.P11008591277812035589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046609.P11008591277812035589

/-!
# A046610: First numerator and then denominator of the central elements of the 1/5-Pascal triangle (by row).

The programs for A046610, there is no canonical definition to state claims against.
-/

/-! ## A046610.P2991927346018426688

`A046611(xor(1, n)+1)`
-/

namespace A046610.P2991927346018426688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (Nat.xor 1 n + 1)

end

end A046610.P2991927346018426688

/-! ## A046610.P10213546030650738747

`A046611((-1)^n+n+1)`
-/

namespace A046610.P10213546030650738747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046610.P10213546030650738747

/-! ## A046610.P2647194533521537511

`A046601(A081346(n))`
-/

namespace A046610.P2647194533521537511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A081346 n).toNat

end

end A046610.P2647194533521537511

/-! ## A046610.P1330536242165065494

`A046601(n*A103889(n+1)+1)`
-/

namespace A046610.P1330536242165065494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046610.P1330536242165065494

/-! ## A046610.P1487652852037630792

`A046601(n*A114112(n+1)+1)`
-/

namespace A046610.P1487652852037630792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046610.P1487652852037630792

/-! ## A046610.P15163673891419196622

`A046602(A059841(n)+A109613(n)²)`
-/

namespace A046610.P15163673891419196622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A059841 n + A109613 n ^ 2).toNat

end

end A046610.P15163673891419196622

/-!
# A046611: First denominator and then numerator of the central elements of the 1/5-Pascal triangle (by row).

The programs for A046611, there is no canonical definition to state claims against.
-/

/-! ## A046611.P11006022716456258400

`A046610(xor(1, n)+1)`
-/

namespace A046611.P11006022716456258400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (Nat.xor 1 n + 1)

end

end A046611.P11006022716456258400

/-! ## A046611.P6740513113069542636

`A046610(Δ[A236453(n)])`
-/

namespace A046611.P6740513113069542636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (f1 (n + 1) - f1 n).toNat

end

end A046611.P6740513113069542636

/-! ## A046611.P5588425370124859958

`A046610(A004442(n)+1)`
-/

namespace A046611.P5588425370124859958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A004442 n + 1).toNat

end

end A046611.P5588425370124859958

/-! ## A046611.P4376017968790004581

`A046610(A014681(n+1))`
-/

namespace A046611.P4376017968790004581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A014681 (n + 1)).toNat

end

end A046611.P4376017968790004581

/-! ## A046611.P8198172780872393521

`A046610(A103889(n+1))`
-/

namespace A046611.P8198172780872393521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A103889 (n + 1)).toNat

end

end A046611.P8198172780872393521

/-! ## A046611.P14189412163098551261

`A046610(A114112(n+1))`
-/

namespace A046611.P14189412163098551261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A114112 (n + 1)).toNat

end

end A046611.P14189412163098551261

/-! ## A046611.P4139434923947470662

`A046610(A033999(n)+1+n)`
-/

namespace A046611.P4139434923947470662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A033999 n + 1 + (n : ℤ)).toNat

end

end A046611.P4139434923947470662

/-! ## A046611.P16487518310831102013

`A046610(A236453(n+1)-A236453(n))`
-/

namespace A046611.P16487518310831102013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A236453 (n + 1) - A236453 n).toNat

end

end A046611.P16487518310831102013

/-! ## A046611.P8961074178849886000

`A046602(A081346(n))`
-/

namespace A046611.P8961074178849886000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (A081346 n).toNat

end

end A046611.P8961074178849886000

/-! ## A046611.P183701370354048615

`A046602(n*A103889(n+1)+1)`
-/

namespace A046611.P183701370354048615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046611.P183701370354048615

/-! ## A046611.P9374254313375341737

`A046602(n*A114112(n+1)+1)`
-/

namespace A046611.P9374254313375341737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046611.P9374254313375341737

/-!
# A046612: Distinct numbers in writing first numerator and then denominator of the central elements of the 1/5-Pascal triangle (by row).

The programs for A046612, there is no canonical definition to state claims against.
-/

/-! ## A046612.P3323282916686395866

`A046610(A223134(n))`
-/

namespace A046612.P3323282916686395866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A223134 n).toNat

end

end A046612.P3323282916686395866

/-! ## A046612.P3110425421628818760

`A046611(A316571(n+2))`
-/

namespace A046612.P3110425421628818760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (A316571 (n + 2)).toNat

end

end A046612.P3110425421628818760

/-! ## A046612.P16706718132062678885

`A046610(A004275(n)+3)`
-/

namespace A046612.P16706718132062678885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A004275 n + 3).toNat

end

end A046612.P16706718132062678885

/-! ## A046612.P7717046945333756753

`A046611(A004275(n)+4)`
-/

namespace A046612.P7717046945333756753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (A004275 n + 4).toNat

end

end A046612.P7717046945333756753

/-! ## A046612.P2284007833068732007

`A046611(A254667(n)+2+n)`
-/

namespace A046612.P2284007833068732007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (A254667 n + 2 + (n : ℤ)).toNat

end

end A046612.P2284007833068732007

/-! ## A046612.P15708067151912158700

`A046611(comp[lt[n, A046611(n+1)]])`
-/

namespace A046612.P15708067151912158700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A046612.P15708067151912158700

/-! ## A046612.P10204109124352586054

`A046610(A233583(n+1)+1+n)`
-/

namespace A046612.P10204109124352586054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A233583 (n + 1) + 1 + (n : ℤ)).toNat

end

end A046612.P10204109124352586054

/-! ## A046612.P12136164057535000757

`A046611(lt[A046611(n+1), n+1])`
-/

namespace A046612.P12136164057535000757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A046612.P12136164057535000757

/-! ## A046612.P3600801954995239210

`A046610(lt[n, A046610(n+1)]+1)`
-/

namespace A046612.P3600801954995239210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046612.P3600801954995239210

/-! ## A046612.P914719606230261465

`A046611(Δ[A004275(∑[n])])`
-/

namespace A046612.P914719606230261465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (f1 (n + 1) - f1 n).toNat

end

end A046612.P914719606230261465

/-!
# A046613: First numerator and then denominator of the elements to the right of the central elements of the 1/5-Pascal triangle.

The programs for A046613, there is no canonical definition to state claims against.
-/

/-! ## A046613.P18045998201484611197

`A046614(xor(1, n)+1)`
-/

namespace A046613.P18045998201484611197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (Nat.xor 1 n + 1)

end

end A046613.P18045998201484611197

/-! ## A046613.P1508847901909311517

`A046614(n+2-2*and(1, n))`
-/

namespace A046613.P1508847901909311517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (n + 2 - 2 * Nat.land 1 n)

end

end A046613.P1508847901909311517

/-! ## A046613.P14951864019779236778

`A046614(A004442(n)+1)`
-/

namespace A046613.P14951864019779236778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (A004442 n + 1).toNat

end

end A046613.P14951864019779236778

/-! ## A046613.P11226942521282570912

`A046614(A014681(n+1))`
-/

namespace A046613.P11226942521282570912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (A014681 (n + 1)).toNat

end

end A046613.P11226942521282570912

/-! ## A046613.P1085373494478099782

`A046614(A103889(n+1))`
-/

namespace A046613.P1085373494478099782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (A103889 (n + 1)).toNat

end

end A046613.P1085373494478099782

/-! ## A046613.P10765397333223029684

`A046614(A114112(n+1))`
-/

namespace A046613.P10765397333223029684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (A114112 (n + 1)).toNat

end

end A046613.P10765397333223029684

/-! ## A046613.P6299656814075635829

`A046614(abs(Δ[A014682(n)]))`
-/

namespace A046613.P6299656814075635829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 |f1 (n + 1) - f1 n|.toNat

end

end A046613.P6299656814075635829

/-! ## A046613.P1686569607346198802

`A046614(Δ[n²]-A014681(n))`
-/

namespace A046613.P1686569607346198802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A014681 n).toNat

end

end A046613.P1686569607346198802

/-! ## A046613.P15677011826034196559

`A046614(Δ[A236453(n)])`
-/

namespace A046613.P15677011826034196559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (f1 (n + 1) - f1 n).toNat

end

end A046613.P15677011826034196559

/-! ## A046613.P6472770014976310580

`A046614(A236453(n+1)-A236453(n))`
-/

namespace A046613.P6472770014976310580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (A236453 (n + 1) - A236453 n).toNat

end

end A046613.P6472770014976310580

/-!
# A046614: First denominator and then numerator of the elements to the right of the central elements of the 1/5-Pascal triangle.

The programs for A046614, there is no canonical definition to state claims against.
-/

/-! ## A046614.P5575349711863976241

`A046613(xor(1, n)+1)`
-/

namespace A046614.P5575349711863976241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (Nat.xor 1 n + 1)

end

end A046614.P5575349711863976241

/-! ## A046614.P11756290234010011809

`A046613((-1)^n+n+1)`
-/

namespace A046614.P11756290234010011809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A046614.P11756290234010011809

/-! ## A046614.P14261605566698433750

`lcm(log2(1/2), A046613(A114112(n+1)))`
-/

namespace A046614.P14261605566698433750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A046613 (A114112 (n + 1)).toNat)

end

end A046614.P14261605566698433750

/-! ## A046614.P17888985718417232

`or(A000007(n), A046613(A114112(n+1)))`
-/

namespace A046614.P17888985718417232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046613 (A114112 (n + 1)).toNat)

end

end A046614.P17888985718417232

/-! ## A046614.P3681786976928928688

`or(A046613(A114112(n+1)), A059841(n))`
-/

namespace A046614.P3681786976928928688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046613 (A114112 (n + 1)).toNat) (A059841 n)

end

end A046614.P3681786976928928688

/-! ## A046614.P8298555601243938849

`lcm(A008836(n+1), A046613(A014681(n+1)))`
-/

namespace A046614.P8298555601243938849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A046613 (A014681 (n + 1)).toNat)

end

end A046614.P8298555601243938849

/-! ## A046614.P4451646722260004506

`or(A000035(n+1), A046613(A114112(n+1)))`
-/

namespace A046614.P4451646722260004506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A046613 (A114112 (n + 1)).toNat)

end

end A046614.P4451646722260004506

/-! ## A046614.P4701625101320862071

`A046613(A114112(n+1))+A000035(2*n)`
-/

namespace A046614.P4701625101320862071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (A114112 (n + 1)).toNat + A000035 (2 * n)

end

end A046614.P4701625101320862071

/-! ## A046614.P9850321975743117653

`A046613(A114112(n+1))^A001221(A048883(n))`
-/

namespace A046614.P9850321975743117653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046613 (A114112 (n + 1)).toNat : ℚ) ^ (A001221 (A048883 n).toNat : ℤ)

end

end A046614.P9850321975743117653

/-! ## A046614.P16989014539124944162

`A046613(A114112(n+1))%A000051(n)`
-/

namespace A046614.P16989014539124944162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046613 (A114112 (n + 1)).toNat) (A000051 n)

end

end A046614.P16989014539124944162

/-!
# A046615: First numerator and then denominator of the elements to the right of the central elements of the 1/5-Pascal triangle (by row), excluding 1's.

The programs for A046615, there is no canonical definition to state claims against.
-/

/-! ## A046615.P998463950682066863

`A046613(lt[1, A046613(n+1)]+1)`
-/

namespace A046615.P998463950682066863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046615.P998463950682066863

/-! ## A046615.P8607033879760318258

`A046604(lt[A324587(2*n+3), A153518(2*(n+1))])`
-/

namespace A046615.P8607033879760318258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324587 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153518 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046615.P8607033879760318258

/-!
# A046616: First numerator and then denominator of the elements to the right of the central elements of the 1/5-Pascal triangle (by row), excluding 1's and 5's.

The programs for A046616, there is no canonical definition to state claims against.
-/

/-! ## A046616.P6695076537635688632

`A046618(comp[∑[ceil(n/2)]])`
-/

namespace A046616.P6695076537635688632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046616.P6695076537635688632

/-! ## A046616.P1292038884115986623

`A046613(lt[4, A046576(n+1)])`
-/

namespace A046616.P1292038884115986623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046616.P1292038884115986623

/-! ## A046616.P9001543961557240108

`A046613(lt[5, A046614(n+1)])`
-/

namespace A046616.P9001543961557240108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046616.P9001543961557240108

/-! ## A046616.P588220866083510020

`A046605(eq[0, A144299(n)])`
-/

namespace A046616.P588220866083510020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046616.P588220866083510020

/-! ## A046616.P10408891212666365182

`filter[A046615(n+1), A023532(#)]`
-/

namespace A046616.P10408891212666365182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046616.P10408891212666365182

/-!
# A046617: First numerator and then denominator of the elements to the right of the central elements of the 1/5-Pascal triangle (by row), excluding 5's.

The programs for A046617, there is no canonical definition to state claims against.
-/

/-! ## A046617.P8766849573172372223

`filter[A046613(n+1), A023532(#)]`
-/

namespace A046617.P8766849573172372223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046617.P8766849573172372223

/-! ## A046617.P6350204654508514482

`filter[A046613(n+1), A276398(#)]`
-/

namespace A046617.P6350204654508514482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A046617.P6350204654508514482

/-! ## A046617.P13124056330701015311

`A046621(∑[A115568(A005491(n))])`
-/

namespace A046617.P13124056330701015311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115568 (A005491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046617.P13124056330701015311

/-! ## A046617.P16917073425927173569

`A046621(comp[A184946(2^n)])`
-/

namespace A046617.P16917073425927173569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 (2 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046621 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046617.P16917073425927173569

/-! ## A046617.P16111023898653101776

`gcd(∑{e}[A037124(3*(n+1))+1, #-1], A046621(n+1))`
-/

namespace A046617.P16111023898653101776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (3 * (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)) (A046621 (n + 1))

end

end A046617.P16111023898653101776

/-!
# A046618: Numerators of the elements to the right of the central elements of the 1/5-Pascal triangle (by row).

The programs for A046618, there is no canonical definition to state claims against.
-/

/-! ## A046618.P4550531451614302950

`A046613(Δ[n²])`
-/

namespace A046618.P4550531451614302950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046618.P4550531451614302950

/-! ## A046618.P7305651266559875741

`A046614(2*(n+1))`
-/

namespace A046618.P7305651266559875741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (2 * (n + 1))

end

end A046618.P7305651266559875741

/-! ## A046618.P12426045593393530885

`A106400(n)²*A046613(A005408(n))`
-/

namespace A046618.P12426045593393530885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A046613 (A005408 n).toNat

end

end A046618.P12426045593393530885

/-! ## A046618.P9554507104411162432

`(1-A010673(n))²*A046613(A005408(n))`
-/

namespace A046618.P9554507104411162432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) ^ 2 * A046613 (A005408 n).toNat

end

end A046618.P9554507104411162432

/-! ## A046618.P17000456886602644646

`(A023531(3*n+1)+1)²*A046613(A005408(n))`
-/

namespace A046618.P17000456886602644646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023531 (3 * n + 1) + 1) ^ 2 * A046613 (A005408 n).toNat

end

end A046618.P17000456886602644646

/-! ## A046618.P1348113809380474012

`A046606(A274428(n+1))`
-/

namespace A046618.P1348113809380474012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046606 (A274428 (n + 1)).toNat

end

end A046618.P1348113809380474012

/-! ## A046618.P9279372254251707008

`A046613(A005408(n))%A007283(n)`
-/

namespace A046618.P9279372254251707008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046613 (A005408 n).toNat) (A007283 n)

end

end A046618.P9279372254251707008

/-! ## A046618.P6958686909394395596

`A046614(Δ[A002378(n)])%A173396(n)`
-/

namespace A046618.P6958686909394395596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046614 (f1 (n + 1) - f1 n).toNat) (A173396 n)

end

end A046618.P6958686909394395596

/-! ## A046618.P869552291359082802

`filter[A046613(2*n+1), A023532(#)]`
-/

namespace A046618.P869552291359082802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046618.P869552291359082802

/-! ## A046618.P6674984085433153139

`filter[A046613(2*n+1), A168184(#)]`
-/

namespace A046618.P6674984085433153139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046618.P6674984085433153139

/-!
# A046619: First numerator and then denominator of each element of the 1/5-Pascal triangle (by row), excluding 5's.

The programs for A046619, there is no canonical definition to state claims against.
-/

/-! ## A046619.P14908275586990074144

`filter[A046601(n+1), A023532(#)]`
-/

namespace A046619.P14908275586990074144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046619.P14908275586990074144

/-! ## A046619.P14262301703459348504

`filter[A046601(n+1), A276398(#)]`
-/

namespace A046619.P14262301703459348504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A046619.P14262301703459348504

/-! ## A046619.P16259212487451672998

`A046620(n+1)%A210207(n+1)`
-/

namespace A046619.P16259212487451672998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046620 (n + 1)) (A210207 (n + 1))

end

end A046619.P16259212487451672998

/-! ## A046619.P2920618803527877079

`and(A046620(n+1), A387415(n+1))`
-/

namespace A046619.P2920618803527877079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046620 (n + 1)) (A387415 (n + 1))

end

end A046619.P2920618803527877079

/-! ## A046619.P8343425025114428661

`and(A046620(n+1), A387418(n+1))`
-/

namespace A046619.P8343425025114428661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046620 (n + 1)) (A387418 (n + 1))

end

end A046619.P8343425025114428661

/-!
# A046620: First denominator and then numerator of each element of the 1/5-Pascal triangle (by row), excluding 5's.

The programs for A046620, there is no canonical definition to state claims against.
-/

/-! ## A046620.P15735834141294497879

`filter[A046602(n+1), A023532(#)]`
-/

namespace A046620.P15735834141294497879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046620.P15735834141294497879

/-! ## A046620.P4157101767316995792

`filter[A046602(n+1), A276398(#)]`
-/

namespace A046620.P4157101767316995792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A046620.P4157101767316995792

/-! ## A046620.P1109942162437734641

`A046619(n+1)^(A000040(A090580(n+1))%2)`
-/

namespace A046620.P1109942162437734641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046619 (n + 1) : ℚ) ^ (Int.tmod (A000040 (A090580 (n + 1)).toNat) 2 : ℤ)

end

end A046620.P1109942162437734641

/-!
# A046621: First denominator and then numerator of each element to the right of the central elements of the 1/5-Pascal triangle (by row), excluding 5's.

The programs for A046621, there is no canonical definition to state claims against.
-/

/-! ## A046621.P6645283856580329450

`filter[A046614(n+1), A023532(#)]`
-/

namespace A046621.P6645283856580329450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A046621.P6645283856580329450

/-! ## A046621.P4272143901746519533

`filter[A046614(n+1), A276398(#)]`
-/

namespace A046621.P4272143901746519533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A046621.P4272143901746519533

/-!
# A046622: Odd numbers in writing first numerator and then denominator of each element of the 1/5-Pascal triangle (by row).

The programs for A046622, there is no canonical definition to state claims against.
-/

/-! ## A046622.P15752568401355573587

`A046601(eq[1, A046601(n+1)%2]+1)`
-/

namespace A046622.P15752568401355573587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046601 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046622.P15752568401355573587

/-! ## A046622.P9886376265505601187

`A046601(eq[1, gcd(2, A046601(n+1))]+1)`
-/

namespace A046622.P9886376265505601187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046601 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046622.P9886376265505601187

/-! ## A046622.P14318047300499855561

`A046601(eq[1, and(1, A046601(n+1))]+1)`
-/

namespace A046622.P14318047300499855561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046601 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046622.P14318047300499855561

/-! ## A046622.P445906649240192039

`filter[A046601(n+1), A374134(#)]`
-/

namespace A046622.P445906649240192039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A046622.P445906649240192039

/-! ## A046622.P16262965661147299510

`filter[A046601(n+1), A000035(#)]`
-/

namespace A046622.P16262965661147299510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046622.P16262965661147299510

/-!
# A046623: Odd numbers in writing first denominator and then numerator of each element of the 1/5-Pascal triangle (by row).

The programs for A046623, there is no canonical definition to state claims against.
-/

/-! ## A046623.P6169559121222558413

`filter[A046602(n+1), A374134(#)]`
-/

namespace A046623.P6169559121222558413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A046623.P6169559121222558413

/-! ## A046623.P11212203355845753452

`filter[A046602(n+1), A000035(#)]`
-/

namespace A046623.P11212203355845753452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046623.P11212203355845753452

/-! ## A046623.P15097063604107232048

`A079905(or(A046556(n+1), A097479(n)))`
-/

namespace A046623.P15097063604107232048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (Int.lor (A046556 (n + 1)) (A097479 n)).toNat

end

end A046623.P15097063604107232048

/-! ## A046623.P9903809042884094283

`A286905(or(A046556(n+1), A097479(n)))`
-/

namespace A046623.P9903809042884094283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (Int.lor (A046556 (n + 1)) (A097479 n)).toNat

end

end A046623.P9903809042884094283

/-! ## A046623.P12503034732624004995

`A079905(A046556(n+1)+n*A097479(n))`
-/

namespace A046623.P12503034732624004995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (A046556 (n + 1) + (n : ℤ) * A097479 n).toNat

end

end A046623.P12503034732624004995

/-!
# A046625: Even numbers in the numerators of the 1/5-Pascal triangle (by row).

The programs for A046625, there is no canonical definition to state claims against.
-/

/-! ## A046625.P1257464097025189733

`A046601(lt[A046601(n+1)%2, 1]+1)`
-/

namespace A046625.P1257464097025189733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046601 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A046625.P1257464097025189733

/-! ## A046625.P1616072536261315764

`A046601(lt[and(1, A046601(n+1)), 1]+1)`
-/

namespace A046625.P1616072536261315764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046601 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A046625.P1616072536261315764

/-! ## A046625.P5154054039594950825

`A046601(lt[val(A046601(n+1)+1, 2), 1]+1)`
-/

namespace A046625.P5154054039594950825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046601 (n + 1) + 1).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A046625.P5154054039594950825

/-! ## A046625.P4364700569964427279

`filter[A046603(n+1), A059841(#)]`
-/

namespace A046625.P4364700569964427279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046625.P4364700569964427279

/-! ## A046625.P13924382810574283854

`filter[A046604(n+1), A059841(#)]`
-/

namespace A046625.P13924382810574283854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046625.P13924382810574283854

/-!
# A046626: Distinct even numbers in the numerators of the 1/5-Pascal triangle (by row).

The programs for A046626, there is no canonical definition to state claims against.
-/

/-! ## A046626.P2651511867778877806

`A046608(eq[0, A046608(n+1)%2]+1)`
-/

namespace A046626.P2651511867778877806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046608 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046626.P2651511867778877806

/-! ## A046626.P13587253154487595633

`filter[A046608(n+1), A059841(#)]`
-/

namespace A046626.P13587253154487595633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046626.P13587253154487595633

/-! ## A046626.P8678986893734023737

`filter[A046608(n+1), A267043(#)]`
-/

namespace A046626.P8678986893734023737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A046626.P8678986893734023737

/-! ## A046626.P14349849603173991000

`filter[A046608(n+2), A135528(#)]`
-/

namespace A046626.P14349849603173991000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046626.P14349849603173991000

/-! ## A046626.P18239723092382238299

`filter[A046608(n+2), A266591(#)]`
-/

namespace A046626.P18239723092382238299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A046626.P18239723092382238299

/-!
# A046628: Distinct odd numbers in writing first numerator and then denominator of each element to the right of the central elements of the 1/5-Pascal triangle (by row).

The programs for A046628, there is no canonical definition to state claims against.
-/

/-! ## A046628.P1032143361171587620

`filter[A046627(n+1), A374134(#)]`
-/

namespace A046628.P1032143361171587620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A046628.P1032143361171587620

/-! ## A046628.P10673966319739595001

`filter[A046627(n+1), A000035(#)]`
-/

namespace A046628.P10673966319739595001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046628.P10673966319739595001

/-!
# A046629: Distinct even numbers in writing numerators of each element to the right of the central elements of the 1/5-Pascal triangle (by row).

The programs for A046629, there is no canonical definition to state claims against.
-/

/-! ## A046629.P3237878002556521917

`filter[A046615(n+1), A354034(#)]`
-/

namespace A046629.P3237878002556521917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A046629.P3237878002556521917

/-! ## A046629.P2420965928838051803

`filter[A046616(n+1), A354034(#)]`
-/

namespace A046629.P2420965928838051803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A046629.P2420965928838051803

/-! ## A046629.P13320981302402988702

`filter[A046627(n+2), A354034(#)]`
-/

namespace A046629.P13320981302402988702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A046629.P13320981302402988702

/-! ## A046629.P12342716080661496996

`filter[A046615(n+1), A059841(#)]`
-/

namespace A046629.P12342716080661496996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046629.P12342716080661496996

/-! ## A046629.P1446491692171010405

`filter[A046616(n+1), A059841(#)]`
-/

namespace A046629.P1446491692171010405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046629.P1446491692171010405

/-!
# A046630: Number of cubic residues mod 2^n.

The programs for A046630, the canonical program `A046630.P1687832883927382954` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046630 has offset 0).

The definition of A046630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046630.P1687832883927382954

`ceil(2^(n+2)/7)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046630

/-- `ceil(2^(n+2)/7)` -/
def P1687832883927382954.Spec : Prop :=
  ∀ n, P1687832883927382954.a n = A046630 n

theorem P1687832883927382954.correct : P1687832883927382954.Spec := by
  intro n
  simp only [A046630]

end A046630

/-! ## A046630.P17741247162048302624

`A046530(2^n)`
-/

namespace A046630.P17741247162048302624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (2 ^ n)

end

end A046630.P17741247162048302624

namespace A046630

/-- `A046530(2^n)` -/
def P17741247162048302624.Spec : Prop :=
  ∀ n, P17741247162048302624.a n = A046630 n

end A046630

/-! ## A046630.P2986140905792693238

`∑[ogf((-1+x^2+2x^3)/(-1+x+x^2+2x^3))]`
-/

namespace A046630.P2986140905792693238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, -1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046630.P2986140905792693238

namespace A046630

/-- `∑[ogf((-1+x^2+2x^3)/(-1+x+x^2+2x^3))]` -/
def P2986140905792693238.Spec : Prop :=
  ∀ n, P2986140905792693238.a n = A046630 n

end A046630

/-! ## A046630.P8360007984738282463

`ogf((-1+x^2+2x^3)/(-1+2x+x^3-2x^4))`
-/

namespace A046630.P8360007984738282463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, -2, 0, -1, 2] n

end

end A046630.P8360007984738282463

namespace A046630

/-- `ogf((-1+x^2+2x^3)/(-1+2x+x^3-2x^4))` -/
def P8360007984738282463.Spec : Prop :=
  ∀ n, P8360007984738282463.a n = A046630 n

end A046630

/-! ## A046630.P17360732362630650241

`a(n-3)+2^(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A046630.P17360732362630650241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A046630.P17360732362630650241

namespace A046630

/-- `a(n-3)+2^(n-1)` -/
def P17360732362630650241.Spec : Prop :=
  ∀ n, P17360732362630650241.a n = (A046630 n : ℚ)

end A046630

/-! ## A046630.P17269426124076484565

`or(2^(n-1), a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A046630.P17269426124076484565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 3))

end

end A046630.P17269426124076484565

namespace A046630

/-- `or(2^(n-1), a(n-3))` -/
def P17269426124076484565.Spec : Prop :=
  ∀ n, P17269426124076484565.a n = A046630 n

end A046630

/-! ## A046630.P11190491903106607674

`xor(2^(n-1), a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A046630.P11190491903106607674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 3))

end

end A046630.P11190491903106607674

namespace A046630

/-- `xor(2^(n-1), a(n-3))` -/
def P11190491903106607674.Spec : Prop :=
  ∀ n, P11190491903106607674.a n = A046630 n

end A046630

/-! ## A046630.P17246570119024872974

`4*a(n-2)+n%3-3` with `a(0)=1, a(1)=2`
-/

namespace A046630.P17246570119024872974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) + (((n % 3 : ℕ) : ℤ) - 3)

end

end A046630.P17246570119024872974

namespace A046630

/-- `4*a(n-2)+n%3-3` -/
def P17246570119024872974.Spec : Prop :=
  ∀ n, P17246570119024872974.a n = A046630 n

end A046630

/-! ## A046630.P8352251993375309729

`2*a(n-1)-floor(a(n-1)/2)%2` with `a(0)=1`
-/

namespace A046630.P8352251993375309729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - Int.tmod ⌊(a (n - 1) : ℚ) / 2⌋ 2

end

end A046630.P8352251993375309729

namespace A046630

/-- `2*a(n-1)-floor(a(n-1)/2)%2` -/
def P8352251993375309729.Spec : Prop :=
  ∀ n, P8352251993375309729.a n = A046630 n

end A046630

/-! ## A046630.P17167691814203467631

`2*a(n-1)-(a(n-1)-a(n-2))%2` with `a(0)=1, a(1)=2`
-/

namespace A046630.P17167691814203467631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - Int.tmod (a (n - 1) - a (n - 2)) 2

end

end A046630.P17167691814203467631

namespace A046630

/-- `2*a(n-1)-(a(n-1)-a(n-2))%2` -/
def P17167691814203467631.Spec : Prop :=
  ∀ n, P17167691814203467631.a n = A046630 n

end A046630

/-! ## A046630.P5802692617897522666

`2*a(n-2)+a(n-1)-gcd(2, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A046630.P5802692617897522666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) + (a (n - 1) - (Int.gcd 2 (a (n - 2)) : ℤ))

end

end A046630.P5802692617897522666

namespace A046630

/-- `2*a(n-2)+a(n-1)-gcd(2, a(n-2))` -/
def P5802692617897522666.Spec : Prop :=
  ∀ n, P5802692617897522666.a n = A046630 n

end A046630

/-! ## A046630.P17025943486217033340

`A155803(n+2)+1`
-/

namespace A046630.P17025943486217033340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (n + 2) + 1

end

end A046630.P17025943486217033340

namespace A046630

/-- `A155803(n+2)+1` -/
def P17025943486217033340.Spec : Prop :=
  ∀ n, P17025943486217033340.a n = A046630 n

end A046630

/-! ## A046630.P15603276725006554021

`∑[A077947(abs(1-n))]`
-/

namespace A046630.P15603276725006554021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046630.P15603276725006554021

namespace A046630

/-- `∑[A077947(abs(1-n))]` -/
def P15603276725006554021.Spec : Prop :=
  ∀ n, P15603276725006554021.a n = A046630 n

end A046630

/-! ## A046630.P3824957602054187024

`A294627(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A046630.P3824957602054187024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A294627 n + a (n - 2)

end

end A046630.P3824957602054187024

namespace A046630

/-- `A294627(n)+a(n-2)` -/
def P3824957602054187024.Spec : Prop :=
  ∀ n, P3824957602054187024.a n = A046630 n

end A046630

/-! ## A046630.P15032545693130652052

`A077947(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A046630.P15032545693130652052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077947 (n - 1) + a (n - 1)

end

end A046630.P15032545693130652052

namespace A046630

/-- `A077947(n-1)+a(n-1)` -/
def P15032545693130652052.Spec : Prop :=
  ∀ n, P15032545693130652052.a n = A046630 n

end A046630

/-! ## A046630.P9022479339277141351

`2*a(n-1)-and(1, A000032(n-1))` with `a(0)=1`
-/

namespace A046630.P9022479339277141351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - Int.land 1 (A000032 (n - 1))

end

end A046630.P9022479339277141351

namespace A046630

/-- `2*a(n-1)-and(1, A000032(n-1))` -/
def P9022479339277141351.Spec : Prop :=
  ∀ n, P9022479339277141351.a n = A046630 n

end A046630

/-! ## A046630.P17723034002045135260

`2*a(n-1)-and(1, A000045(n-1))` with `a(0)=1`
-/

namespace A046630.P17723034002045135260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - Int.land 1 (A000045 (n - 1))

end

end A046630.P17723034002045135260

namespace A046630

/-- `2*a(n-1)-and(1, A000045(n-1))` -/
def P17723034002045135260.Spec : Prop :=
  ∀ n, P17723034002045135260.a n = A046630 n

end A046630

/-! ## A046630.P9288547229034939801

`A077947(n)+A011655(n)`
-/

namespace A046630.P9288547229034939801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n + A011655 n

end

end A046630.P9288547229034939801

namespace A046630

/-- `A077947(n)+A011655(n)` -/
def P9288547229034939801.Spec : Prop :=
  ∀ n, P9288547229034939801.a n = A046630 n

end A046630

/-! ## A046630.P11303741366731349795

`A263366(n+1)+A095130(n)`
-/

namespace A046630.P11303741366731349795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263366 (n + 1) + A095130 n

end

end A046630.P11303741366731349795

namespace A046630

/-- `A263366(n+1)+A095130(n)` -/
def P11303741366731349795.Spec : Prop :=
  ∀ n, P11303741366731349795.a n = A046630 n

end A046630

/-! ## A046630.P9739334496868498545

`A077947(n)+1-A079978(n)`
-/

namespace A046630.P9739334496868498545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n + (1 - A079978 n)

end

end A046630.P9739334496868498545

namespace A046630

/-- `A077947(n)+1-A079978(n)` -/
def P9739334496868498545.Spec : Prop :=
  ∀ n, P9739334496868498545.a n = A046630 n

end A046630

/-!
# A046631: Number of cubic residues mod 3^n.

The programs for A046631, the canonical program `A046631.P15516087216477128106` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046631 has offset 0).

The definition of A046631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046631.P17313161595806788824

`A046530(3^n)`
-/

namespace A046631.P17313161595806788824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (3 ^ n)

end

end A046631.P17313161595806788824

namespace A046631

/-- `A046530(3^n)` -/
def P17313161595806788824.Spec : Prop :=
  ∀ n, P17313161595806788824.a n = A046631 n

end A046631

/-! ## A046631.P15516087216477128106

`3*a(n-1)-2*xor(1, n%3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046631

/-- `3*a(n-1)-2*xor(1, n%3)` -/
def P15516087216477128106.Spec : Prop :=
  ∀ n, P15516087216477128106.a n = A046631 n

theorem P15516087216477128106.correct : P15516087216477128106.Spec := by
  intro n
  simp only [A046631]

end A046631

/-! ## A046631.P18287435956426967994

`A152733(n+1)+and(3, A049347(n))`
-/

namespace A046631.P18287435956426967994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152733 (n + 1) + Int.land 3 (A049347 n)

end

end A046631.P18287435956426967994

namespace A046631

/-- `A152733(n+1)+and(3, A049347(n))` -/
def P18287435956426967994.Spec : Prop :=
  ∀ n, P18287435956426967994.a n = A046631 n

end A046631

/-! ## A046631.P7164547822278244996

`A152733(n+1)+A033139(n+1)%9`
-/

namespace A046631.P7164547822278244996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152733 (n + 1) + Int.tmod (A033139 (n + 1)) 9

end

end A046631.P7164547822278244996

namespace A046631

/-- `A152733(n+1)+A033139(n+1)%9` -/
def P7164547822278244996.Spec : Prop :=
  ∀ n, P7164547822278244996.a n = A046631 n

end A046631

/-! ## A046631.P1689855957399169746

`3*a(n-1)-A136412(n)%7` with `a(0)=1`
-/

namespace A046631.P1689855957399169746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - Int.tmod (A136412 n) 7

end

end A046631.P1689855957399169746

namespace A046631

/-- `3*a(n-1)-A136412(n)%7` -/
def P1689855957399169746.Spec : Prop :=
  ∀ n, P1689855957399169746.a n = A046631 n

end A046631

/-! ## A046631.P5709354765296102228

`A046634(n)/A046630(n)`
-/

namespace A046631.P5709354765296102228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046634 n : ℚ) / (A046630 n : ℚ)

end

end A046631.P5709354765296102228

namespace A046631

/-- `A046634(n)/A046630(n)` -/
def P5709354765296102228.Spec : Prop :=
  ∀ n, P5709354765296102228.a n = (A046631 n : ℚ)

end A046631

/-!
# A046632: Number of cubic residues mod 4^n.

The programs for A046632, the canonical program `A046632.P832116891129333838` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046632 has offset 0).

The definition of A046632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046632.P832116891129333838

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=37`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046632

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P832116891129333838.Spec : Prop :=
  ∀ n, P832116891129333838.a n = A046632 n

theorem P832116891129333838.correct : P832116891129333838.Spec := by
  intro n
  simp only [A046632]

end A046632

/-! ## A046632.P9612696234828665757

`A046630(2*n)`
-/

namespace A046632.P9612696234828665757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (2 * n)

end

end A046632.P9612696234828665757

namespace A046632

/-- `A046630(2*n)` -/
def P9612696234828665757.Spec : Prop :=
  ∀ n, P9612696234828665757.a n = A046632 n

end A046632

/-! ## A046632.P13044162812218066960

`A046530(4^n)`
-/

namespace A046632.P13044162812218066960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (4 ^ n)

end

end A046632.P13044162812218066960

namespace A046632

/-- `A046530(4^n)` -/
def P13044162812218066960.Spec : Prop :=
  ∀ n, P13044162812218066960.a n = A046632 n

end A046632

/-! ## A046632.P1290014084226572919

`ceil(4*4^n/7)`
-/

namespace A046632.P1290014084226572919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((4 ^ n : ℚ) / 7)⌉

end

end A046632.P1290014084226572919

namespace A046632

/-- `ceil(4*4^n/7)` -/
def P1290014084226572919.Spec : Prop :=
  ∀ n, P1290014084226572919.a n = A046632 n

end A046632

/-! ## A046632.P18009109030352677469

`ogf((-1+x+2x^2+4x^3)/(-1+4x+x^3-4x^4))`
-/

namespace A046632.P18009109030352677469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, -4] [1, -4, 0, -1, 4] n

end

end A046632.P18009109030352677469

namespace A046632

/-- `ogf((-1+x+2x^2+4x^3)/(-1+4x+x^3-4x^4))` -/
def P18009109030352677469.Spec : Prop :=
  ∀ n, P18009109030352677469.a n = A046632 n

end A046632

/-! ## A046632.P18283805665856566129

`∑[A294627(2*n)]+1`
-/

namespace A046632.P18283805665856566129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046632.P18283805665856566129

namespace A046632

/-- `∑[A294627(2*n)]+1` -/
def P18283805665856566129.Spec : Prop :=
  ∀ n, P18283805665856566129.a n = A046632 n

end A046632

/-! ## A046632.P1645081667168262642

`A155803(2*(n+1))+1`
-/

namespace A046632.P1645081667168262642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (2 * (n + 1)) + 1

end

end A046632.P1645081667168262642

namespace A046632

/-- `A155803(2*(n+1))+1` -/
def P1645081667168262642.Spec : Prop :=
  ∀ n, P1645081667168262642.a n = A046632 n

end A046632

/-! ## A046632.P8780895342982507186

`A063823(2*n+3)/2`
-/

namespace A046632.P8780895342982507186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063823 (2 * n + 3) : ℚ) / 2

end

end A046632.P8780895342982507186

namespace A046632

/-- `A063823(2*n+3)/2` -/
def P8780895342982507186.Spec : Prop :=
  ∀ n, P8780895342982507186.a n = (A046632 n : ℚ)

end A046632

/-! ## A046632.P11252943559599457798

`floor(A037497(n+1)/2)+1`
-/

namespace A046632.P11252943559599457798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037497 (n + 1) : ℚ) / 2⌋ + 1

end

end A046632.P11252943559599457798

namespace A046632

/-- `floor(A037497(n+1)/2)+1` -/
def P11252943559599457798.Spec : Prop :=
  ∀ n, P11252943559599457798.a n = A046632 n

end A046632

/-! ## A046632.P999712116256673858

`∑[abs(A078043(A004273(n)))]`
-/

namespace A046632.P999712116256673858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078043 (A004273 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046632.P999712116256673858

namespace A046632

/-- `∑[abs(A078043(A004273(n)))]` -/
def P999712116256673858.Spec : Prop :=
  ∀ n, P999712116256673858.a n = A046632 n

end A046632

/-! ## A046632.P1373163385789566632

`record[A155803(A014681(n))+1]`
-/

namespace A046632.P1373163385789566632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (A014681 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046632.P1373163385789566632

namespace A046632

/-- `record[A155803(A014681(n))+1]` -/
def P1373163385789566632.Spec : Prop :=
  ∀ n, P1373163385789566632.a n = A046632 n

end A046632

/-! ## A046632.P11813766097677711150

`record[A155803(A237420(n))+1]`
-/

namespace A046632.P11813766097677711150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (A237420 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046632.P11813766097677711150

namespace A046632

/-- `record[A155803(A237420(n))+1]` -/
def P11813766097677711150.Spec : Prop :=
  ∀ n, P11813766097677711150.a n = A046632 n

end A046632

/-! ## A046632.P17434770482706205903

`A077947(2*n)+A011655(n)`
-/

namespace A046632.P17434770482706205903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (2 * n) + A011655 n

end

end A046632.P17434770482706205903

namespace A046632

/-- `A077947(2*n)+A011655(n)` -/
def P17434770482706205903.Spec : Prop :=
  ∀ n, P17434770482706205903.a n = A046632 n

end A046632

/-! ## A046632.P6312613419149768807

`A077972(2*n)+A011655(n)`
-/

namespace A046632.P6312613419149768807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 (2 * n) + A011655 n

end

end A046632.P6312613419149768807

namespace A046632

/-- `A077972(2*n)+A011655(n)` -/
def P6312613419149768807.Spec : Prop :=
  ∀ n, P6312613419149768807.a n = A046632 n

end A046632

/-! ## A046632.P6158098771296426

`A077947(2*n)+1-A079978(n)`
-/

namespace A046632.P6158098771296426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (2 * n) + (1 - A079978 n)

end

end A046632.P6158098771296426

namespace A046632

/-- `A077947(2*n)+1-A079978(n)` -/
def P6158098771296426.Spec : Prop :=
  ∀ n, P6158098771296426.a n = A046632 n

end A046632

/-! ## A046632.P18258724615984560440

`A077947(2*n)+A057078(n+1)²`
-/

namespace A046632.P18258724615984560440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (2 * n) + A057078 (n + 1) ^ 2

end

end A046632.P18258724615984560440

namespace A046632

/-- `A077947(2*n)+A057078(n+1)²` -/
def P18258724615984560440.Spec : Prop :=
  ∀ n, P18258724615984560440.a n = A046632 n

end A046632

/-! ## A046632.P13588105269533480407

`A078010(2*n+1)+A057078(n)²`
-/

namespace A046632.P13588105269533480407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (2 * n + 1) + A057078 n ^ 2

end

end A046632.P13588105269533480407

namespace A046632

/-- `A078010(2*n+1)+A057078(n)²` -/
def P13588105269533480407.Spec : Prop :=
  ∀ n, P13588105269533480407.a n = A046632 n

end A046632

/-! ## A046632.P15442301779560222271

`A152732(2*(n+1))+A049347(n)²`
-/

namespace A046632.P15442301779560222271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (2 * (n + 1)) + A049347 n ^ 2

end

end A046632.P15442301779560222271

namespace A046632

/-- `A152732(2*(n+1))+A049347(n)²` -/
def P15442301779560222271.Spec : Prop :=
  ∀ n, P15442301779560222271.a n = A046632 n

end A046632

/-! ## A046632.P13147267922116430312

`A077947(2*n)+A102283(2*n)²`
-/

namespace A046632.P13147267922116430312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (2 * n) + A102283 (2 * n) ^ 2

end

end A046632.P13147267922116430312

namespace A046632

/-- `A077947(2*n)+A102283(2*n)²` -/
def P13147267922116430312.Spec : Prop :=
  ∀ n, P13147267922116430312.a n = A046632 n

end A046632

/-! ## A046632.P106176894216377343

`A263366(2*n+1)+A095130(2*n)`
-/

namespace A046632.P106176894216377343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263366 (2 * n + 1) + A095130 (2 * n)

end

end A046632.P106176894216377343

namespace A046632

/-- `A263366(2*n+1)+A095130(2*n)` -/
def P106176894216377343.Spec : Prop :=
  ∀ n, P106176894216377343.a n = A046632 n

end A046632

/-!
# A046633: Number of cubic residues mod 5^n.

The programs for A046633, the canonical program `A046633.P12442808059030733403` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046633 has offset 0).

The definition of A046633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046633.P18348431251223343878

`ogf((-1+4x^2+5x^3)/(-1+5x+x^3-5x^4))`
-/

namespace A046633.P18348431251223343878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4, -5] [1, -5, 0, -1, 5] n

end

end A046633.P18348431251223343878

namespace A046633

/-- `ogf((-1+4x^2+5x^3)/(-1+5x+x^3-5x^4))` -/
def P18348431251223343878.Spec : Prop :=
  ∀ n, P18348431251223343878.a n = A046633 n

end A046633

/-! ## A046633.P12442808059030733403

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=101`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046633

/-- `5*a(n-1)+a(n-3)-5*a(n-4)` -/
def P12442808059030733403.Spec : Prop :=
  ∀ n, P12442808059030733403.a n = A046633 n

theorem P12442808059030733403.correct : P12442808059030733403.Spec := by
  intro n
  simp only [A046633]

end A046633

/-! ## A046633.P13922346040317784560

`5*a(n-1)-A109265(n)²` with `a(0)=1`
-/

namespace A046633.P13922346040317784560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A109265 n ^ 2

end

end A046633.P13922346040317784560

namespace A046633

/-- `5*a(n-1)-A109265(n)²` -/
def P13922346040317784560.Spec : Prop :=
  ∀ n, P13922346040317784560.a n = A046633 n

end A046633

/-! ## A046633.P12667949103091021090

`round((A037598(n+1)+1)/2)`
-/

namespace A046633.P12667949103091021090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037598 (n + 1) + 1 : ℚ) / 2)

end

end A046633.P12667949103091021090

namespace A046633

/-- `round((A037598(n+1)+1)/2)` -/
def P12667949103091021090.Spec : Prop :=
  ∀ n, P12667949103091021090.a n = A046633 n

end A046633

/-! ## A046633.P13624155502477906989

`ceil(A000351(n+2)/31)`
-/

namespace A046633.P13624155502477906989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000351 (n + 2) : ℚ) / 31⌉

end

end A046633.P13624155502477906989

namespace A046633

/-- `ceil(A000351(n+2)/31)` -/
def P13624155502477906989.Spec : Prop :=
  ∀ n, P13624155502477906989.a n = A046633 n

end A046633

/-! ## A046633.P3422084824641898812

`ceil(A249222(2*(n+2))/31)`
-/

namespace A046633.P3422084824641898812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249222 (2 * (n + 2)) : ℚ) / 31⌉

end

end A046633.P3422084824641898812

namespace A046633

/-- `ceil(A249222(2*(n+2))/31)` -/
def P3422084824641898812.Spec : Prop :=
  ∀ n, P3422084824641898812.a n = A046633 n

end A046633

/-! ## A046633.P12686480523093787573

`A046638(n)/A046630(n)`
-/

namespace A046633.P12686480523093787573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046638 n : ℚ) / (A046630 n : ℚ)

end

end A046633.P12686480523093787573

namespace A046633

/-- `A046638(n)/A046630(n)` -/
def P12686480523093787573.Spec : Prop :=
  ∀ n, P12686480523093787573.a n = (A046633 n : ℚ)

end A046633

/-! ## A046633.P11927568785256629361

`record[ceil(A191702(n+1)/31)]`
-/

namespace A046633.P11927568785256629361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191702 (n + 1) : ℚ) / 31⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046633.P11927568785256629361

namespace A046633

/-- `record[ceil(A191702(n+1)/31)]` -/
def P11927568785256629361.Spec : Prop :=
  ∀ n, P11927568785256629361.a n = A046633 n

end A046633

/-!
# A046634: Number of cubic residues mod 6^n.

The programs for A046634, the canonical program `A046634.P13311854156630506019` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046634 has offset 0).

The definition of A046634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046631, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046634.P13311854156630506019

`A046631(n)*A046630(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046634

/-- `A046631(n)*A046630(n)` -/
def P13311854156630506019.Spec : Prop :=
  ∀ n, P13311854156630506019.a n = A046634 n

theorem P13311854156630506019.correct : P13311854156630506019.Spec := by
  intro n
  simp only [A046634]

end A046634

/-! ## A046634.P6007345540494303585

`A046530(6^n)`
-/

namespace A046634.P6007345540494303585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (6 ^ n)

end

end A046634.P6007345540494303585

namespace A046634

/-- `A046530(6^n)` -/
def P6007345540494303585.Spec : Prop :=
  ∀ n, P6007345540494303585.a n = A046634 n

end A046634

/-! ## A046634.P3962833738759401819

`(A155803(n+2)+1)*A046631(n)`
-/

namespace A046634.P3962833738759401819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155803 (n + 2) + 1) * A046631 n

end

end A046634.P3962833738759401819

namespace A046634

/-- `(A155803(n+2)+1)*A046631(n)` -/
def P3962833738759401819.Spec : Prop :=
  ∀ n, P3962833738759401819.a n = A046634 n

end A046634

/-! ## A046634.P16108598008719378245

`∑[A077947(abs(1-n))]*A046631(n)`
-/

namespace A046634.P16108598008719378245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A046631 n

end

end A046634.P16108598008719378245

namespace A046634

/-- `∑[A077947(abs(1-n))]*A046631(n)` -/
def P16108598008719378245.Spec : Prop :=
  ∀ n, P16108598008719378245.a n = A046634 n

end A046634

/-! ## A046634.P8479097074240171034

`(A077947(n)+A011655(n))*A046631(n)`
-/

namespace A046634.P8479097074240171034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077947 n + A011655 n) * A046631 n

end

end A046634.P8479097074240171034

namespace A046634

/-- `(A077947(n)+A011655(n))*A046631(n)` -/
def P8479097074240171034.Spec : Prop :=
  ∀ n, P8479097074240171034.a n = A046634 n

end A046634

/-! ## A046634.P6658446380019418406

`(A078010(n+1)+A010892(n)²)*A046631(n)`
-/

namespace A046634.P6658446380019418406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078010 (n + 1) + A010892 n ^ 2) * A046631 n

end

end A046634.P6658446380019418406

namespace A046634

/-- `(A078010(n+1)+A010892(n)²)*A046631(n)` -/
def P6658446380019418406.Spec : Prop :=
  ∀ n, P6658446380019418406.a n = A046634 n

end A046634

/-! ## A046634.P11649574321289968504

`(A152732(n+2)+A057078(n)²)*A046631(n)`
-/

namespace A046634.P11649574321289968504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152732 (n + 2) + A057078 n ^ 2) * A046631 n

end

end A046634.P11649574321289968504

namespace A046634

/-- `(A152732(n+2)+A057078(n)²)*A046631(n)` -/
def P11649574321289968504.Spec : Prop :=
  ∀ n, P11649574321289968504.a n = A046634 n

end A046634

/-! ## A046634.P12952472619160181437

`(A152733(n+1)+and(3, A049347(n)))*A046630(n)`
-/

namespace A046634.P12952472619160181437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152733 (n + 1) + Int.land 3 (A049347 n)) * A046630 n

end

end A046634.P12952472619160181437

namespace A046634

/-- `(A152733(n+1)+and(3, A049347(n)))*A046630(n)` -/
def P12952472619160181437.Spec : Prop :=
  ∀ n, P12952472619160181437.a n = A046634 n

end A046634

/-! ## A046634.P10629317252797669019

`(A152733(n+1)+A033139(n+1)%9)*A046630(n)`
-/

namespace A046634.P10629317252797669019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152733 (n + 1) + Int.tmod (A033139 (n + 1)) 9) * A046630 n

end

end A046634.P10629317252797669019

namespace A046634

/-- `(A152733(n+1)+A033139(n+1)%9)*A046630(n)` -/
def P10629317252797669019.Spec : Prop :=
  ∀ n, P10629317252797669019.a n = A046634 n

end A046634

/-! ## A046634.P3736045084457451776

`A046631(n)/A046633(n)*A046638(n)`
-/

namespace A046634.P3736045084457451776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046631 n : ℚ) / (A046633 n : ℚ) * (A046638 n : ℚ)

end

end A046634.P3736045084457451776

namespace A046634

/-- `A046631(n)/A046633(n)*A046638(n)` -/
def P3736045084457451776.Spec : Prop :=
  ∀ n, P3736045084457451776.a n = (A046634 n : ℚ)

end A046634

/-!
# A046635: Number of cubic residues mod 7^n.

The programs for A046635, the canonical program `A046635.P2794349020791464768` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046635 has offset 0).

The definition of A046635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046635.P2794349020791464768

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=3, a(2)=15, a(3)=99`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046635

/-- `7*a(n-1)+a(n-3)-7*a(n-4)` -/
def P2794349020791464768.Spec : Prop :=
  ∀ n, P2794349020791464768.a n = A046635 n

theorem P2794349020791464768.correct : P2794349020791464768.Spec := by
  intro n
  simp only [A046635]

end A046635

/-!
# A046636: Number of cubic residues mod 8^n.

The programs for A046636, the canonical program `A046636.P15081528695269799440` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046636 has offset 0).

The definition of A046636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046636.P15081528695269799440

`8*a(n-1)-3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046636

/-- `8*a(n-1)-3` -/
def P15081528695269799440.Spec : Prop :=
  ∀ n, P15081528695269799440.a n = A046636 n

theorem P15081528695269799440.correct : P15081528695269799440.Spec := by
  intro n
  simp only [A046636]

end A046636

/-! ## A046636.P1723684388521823360

`A046630(3*n)`
-/

namespace A046636.P1723684388521823360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (3 * n)

end

end A046636.P1723684388521823360

namespace A046636

/-- `A046630(3*n)` -/
def P1723684388521823360.Spec : Prop :=
  ∀ n, P1723684388521823360.a n = A046636 n

end A046636

/-! ## A046636.P2167400332684383435

`(4*8^n+3)/7`
-/

namespace A046636.P2167400332684383435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * 8 ^ n + 3 : ℚ) / 7

end

end A046636.P2167400332684383435

namespace A046636

/-- `(4*8^n+3)/7` -/
def P2167400332684383435.Spec : Prop :=
  ∀ n, P2167400332684383435.a n = (A046636 n : ℚ)

theorem P2167400332684383435.correct : P2167400332684383435.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A046636, Nat.add_sub_cancel, A046636.P2167400332684383435.a, A046636.P15081528695269799440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A046636, Nat.add_sub_cancel, A046636.P2167400332684383435.a, A046636.P15081528695269799440.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A046636

/-!
# A046637: Number of cubic residues mod 9^n.

The programs for A046637, the canonical program `A046637.P16925521324958804075` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046637 has offset 0).

The definition of A046637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046631, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046637.P16925521324958804075

`A046631(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046637

/-- `A046631(2*n)` -/
def P16925521324958804075.Spec : Prop :=
  ∀ n, P16925521324958804075.a n = A046637 n

theorem P16925521324958804075.correct : P16925521324958804075.Spec := by
  intro n
  simp only [A046637]

end A046637

/-!
# A046638: Number of cubic residues mod 10^n, or number of distinct n-digit endings of cubes.

The programs for A046638, the canonical program `A046638.P4990731638523969213` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046638 has offset 0).

The definition of A046638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046633, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046638.P4990731638523969213

`A046630(n)*A046633(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046638

/-- `A046630(n)*A046633(n)` -/
def P4990731638523969213.Spec : Prop :=
  ∀ n, P4990731638523969213.a n = A046638 n

theorem P4990731638523969213.correct : P4990731638523969213.Spec := by
  intro n
  simp only [A046638]

end A046638

/-!
# A046639: Length of A001388(n).

The programs for A046639, there is no canonical definition to state claims against.
-/

/-! ## A046639.P5312410311782331887

`ceil(log(A049191(n+1)+1)/log(3))`
-/

namespace A046639.P5312410311782331887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A049191 (n + 1) + 1 : ℝ) / Real.log (3 : ℝ)⌉

end

end A046639.P5312410311782331887

/-!
# A046640: a(n) = A045763(n) + 1.

The programs for A046640, the canonical program `A046640.P10355392584185486359` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046640 has offset 1).

The definition of A046640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046640.P10355392584185486359

`A045763(n+1)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046640

/-- `A045763(n+1)+1` -/
def P10355392584185486359.Spec : Prop :=
  ∀ n, P10355392584185486359.a n = A046640 (n + 1)

theorem P10355392584185486359.correct : P10355392584185486359.Spec := by
  intro n
  simp only [A046640, Nat.add_sub_cancel]

end A046640

/-! ## A046640.P17571890275235071265

`2-A073757(n+1)+n`
-/

namespace A046640.P17571890275235071265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A073757 (n + 1) + (n : ℤ)

end

end A046640.P17571890275235071265

namespace A046640

/-- `2-A073757(n+1)+n` -/
def P17571890275235071265.Spec : Prop :=
  ∀ n, P17571890275235071265.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P4774410578173814750

`3-A061468(n+1)+n`
-/

namespace A046640.P4774410578173814750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A061468 (n + 1) + (n : ℤ)

end

end A046640.P4774410578173814750

namespace A046640

/-- `3-A061468(n+1)+n` -/
def P4774410578173814750.Spec : Prop :=
  ∀ n, P4774410578173814750.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P18278503254328644743

`(n+3-A083245(n+1))/2`
-/

namespace A046640.P18278503254328644743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A083245 (n + 1) : ℚ) / 2

end

end A046640.P18278503254328644743

namespace A046640

/-- `(n+3-A083245(n+1))/2` -/
def P18278503254328644743.Spec : Prop :=
  ∀ n, P18278503254328644743.a n = (A046640 (n + 1) : ℚ)

end A046640

/-! ## A046640.P16782333858020389552

`A378216(n+1)+A051953(n+1)`
-/

namespace A046640.P16782333858020389552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A051953 (n + 1)

end

end A046640.P16782333858020389552

namespace A046640

/-- `A378216(n+1)+A051953(n+1)` -/
def P16782333858020389552.Spec : Prop :=
  ∀ n, P16782333858020389552.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P11804858278125746998

`A297159(n+1)+A153011(n+1)`
-/

namespace A046640.P11804858278125746998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297159 (n + 1) + A153011 (n + 1)

end

end A046640.P11804858278125746998

namespace A046640

/-- `A297159(n+1)+A153011(n+1)` -/
def P11804858278125746998.Spec : Prop :=
  ∀ n, P11804858278125746998.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P1025718419269833180

`A059292(n+1)-A000010(n+1)`
-/

namespace A046640.P1025718419269833180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - A000010 (n + 1)

end

end A046640.P1025718419269833180

namespace A046640

/-- `A059292(n+1)-A000010(n+1)` -/
def P1025718419269833180.Spec : Prop :=
  ∀ n, P1025718419269833180.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P163670851061779413

`A062968(n+1)-A109606(n+1)`
-/

namespace A046640.P163670851061779413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A109606 (n + 1)

end

end A046640.P163670851061779413

namespace A046640

/-- `A062968(n+1)-A109606(n+1)` -/
def P163670851061779413.Spec : Prop :=
  ∀ n, P163670851061779413.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P14414566102397207812

`A016035(n+1)+2-A325765(n)`
-/

namespace A046640.P14414566102397207812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + (2 - A325765 n)

end

end A046640.P14414566102397207812

namespace A046640

/-- `A016035(n+1)+2-A325765(n)` -/
def P14414566102397207812.Spec : Prop :=
  ∀ n, P14414566102397207812.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P15855973544684874397

`A051953(n+1)+2-Δ[A006218(n)]`
-/

namespace A046640.P15855973544684874397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (2 - (f1 (n + 1) - f1 n))

end

end A046640.P15855973544684874397

namespace A046640

/-- `A051953(n+1)+2-Δ[A006218(n)]` -/
def P15855973544684874397.Spec : Prop :=
  ∀ n, P15855973544684874397.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P17859763535582268249

`A243822(n+1)+A243823(n+1)+1`
-/

namespace A046640.P17859763535582268249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + (A243823 (n + 1) + 1)

end

end A046640.P17859763535582268249

namespace A046640

/-- `A243822(n+1)+A243823(n+1)+1` -/
def P17859763535582268249.Spec : Prop :=
  ∀ n, P17859763535582268249.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P5736938089128937554

`A219428(n+1)+A378216(n+1)+1`
-/

namespace A046640.P5736938089128937554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + (A378216 (n + 1) + 1)

end

end A046640.P5736938089128937554

namespace A046640

/-- `A219428(n+1)+A378216(n+1)+1` -/
def P5736938089128937554.Spec : Prop :=
  ∀ n, P5736938089128937554.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P15104877543742294538

`A062968(n+1)+1-A000010(n+1)`
-/

namespace A046640.P15104877543742294538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) + (1 - A000010 (n + 1))

end

end A046640.P15104877543742294538

namespace A046640

/-- `A062968(n+1)+1-A000010(n+1)` -/
def P15104877543742294538.Spec : Prop :=
  ∀ n, P15104877543742294538.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P14689587969411150582

`A051953(n+1)+1-A032741(n+1)`
-/

namespace A046640.P14689587969411150582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (1 - A032741 (n + 1))

end

end A046640.P14689587969411150582

namespace A046640

/-- `A051953(n+1)+1-A032741(n+1)` -/
def P14689587969411150582.Spec : Prop :=
  ∀ n, P14689587969411150582.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P7006900245867850725

`A016035(n+1)+1-A070824(n+1)`
-/

namespace A046640.P7006900245867850725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + (1 - A070824 (n + 1))

end

end A046640.P7006900245867850725

namespace A046640

/-- `A016035(n+1)+1-A070824(n+1)` -/
def P7006900245867850725.Spec : Prop :=
  ∀ n, P7006900245867850725.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P13000276055654218860

`A059292(n+1)+1-A039649(n+1)`
-/

namespace A046640.P13000276055654218860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) + (1 - A039649 (n + 1))

end

end A046640.P13000276055654218860

namespace A046640

/-- `A059292(n+1)+1-A039649(n+1)` -/
def P13000276055654218860.Spec : Prop :=
  ∀ n, P13000276055654218860.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P15754800048359549222

`A057860(n+1)+1-A055212(n+1)`
-/

namespace A046640.P15754800048359549222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057860 (n + 1) + (1 - A055212 (n + 1))

end

end A046640.P15754800048359549222

namespace A046640

/-- `A057860(n+1)+1-A055212(n+1)` -/
def P15754800048359549222.Spec : Prop :=
  ∀ n, P15754800048359549222.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P17163217327390263531

`A049820(n+1)+1-A109606(n+1)`
-/

namespace A046640.P17163217327390263531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (1 - A109606 (n + 1))

end

end A046640.P17163217327390263531

namespace A046640

/-- `A049820(n+1)+1-A109606(n+1)` -/
def P17163217327390263531.Spec : Prop :=
  ∀ n, P17163217327390263531.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P9889243180224392842

`A152993(n+1)+1-A037228(n+1)`
-/

namespace A046640.P9889243180224392842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152993 (n + 1) + (1 - A037228 (n + 1))

end

end A046640.P9889243180224392842

namespace A046640

/-- `A152993(n+1)+1-A037228(n+1)` -/
def P9889243180224392842.Spec : Prop :=
  ∀ n, P9889243180224392842.a n = A046640 (n + 1)

end A046640

/-! ## A046640.P13749273809009317644

`A053158(n+1)+1-A158907(n+1)`
-/

namespace A046640.P13749273809009317644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) + (1 - A158907 (n + 1))

end

end A046640.P13749273809009317644

namespace A046640

/-- `A053158(n+1)+1-A158907(n+1)` -/
def P13749273809009317644.Spec : Prop :=
  ∀ n, P13749273809009317644.a n = A046640 (n + 1)

end A046640

/-!
# A046641: a(n) is the smallest positive integer m such that the number of partitions p(m) = A000041(m) is divisible by n.

The programs for A046641, there is no canonical definition to state claims against.
-/

/-! ## A046641.P4064332184638516285

`A141285(A072871(n+1))`
-/

namespace A046641.P4064332184638516285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A072871 (n + 1)).toNat

end

end A046641.P4064332184638516285

/-!
# A046642: Numbers k such that k and number of divisors d(k) are relatively prime.

The programs for A046642, the canonical program `A046642.P10673475992677074889` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046642 has offset 1).

The definition of A046642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046642.P16778232207215168034

`record[A090395(n+1)]`
-/

namespace A046642.P16778232207215168034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046642.P16778232207215168034

namespace A046642

/-- `record[A090395(n+1)]` -/
def P16778232207215168034.Spec : Prop :=
  ∀ n, P16778232207215168034.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P10673475992677074889

`eq[1, A009191(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046642

/-- `eq[1, A009191(n+1)]+1` -/
def P10673475992677074889.Spec : Prop :=
  ∀ n, (P10673475992677074889.a n : ℤ) = A046642 (n + 1)

theorem P10673475992677074889.correct : P10673475992677074889.Spec := by
  intro n
  simp only [A046642, Nat.add_sub_cancel]

end A046642

/-! ## A046642.P8378031911137106299

`eq[1, A322980(n+1)]+1`
-/

namespace A046642.P8378031911137106299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046642.P8378031911137106299

namespace A046642

/-- `eq[1, A322980(n+1)]+1` -/
def P8378031911137106299.Spec : Prop :=
  ∀ n, (P8378031911137106299.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P15708584096082756427

`eq[1, gcd(n+1, A000005(n+1))]+1`
-/

namespace A046642.P15708584096082756427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046642.P15708584096082756427

namespace A046642

/-- `eq[1, gcd(n+1, A000005(n+1))]+1` -/
def P15708584096082756427.Spec : Prop :=
  ∀ n, (P15708584096082756427.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P4927887134969825016

`eq[1, gcd(n, a(n-1)*A000005(n))]` with `a(0)=0`
-/

namespace A046642.P4927887134969825016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (n : ℤ) ((f2 (n - 1) : ℤ) * A000005 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046642.P4927887134969825016

namespace A046642

/-- `eq[1, gcd(n, a(n-1)*A000005(n))]` -/
def P4927887134969825016.Spec : Prop :=
  ∀ n, (P4927887134969825016.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P2646440900157243870

`eq[A000005(n+1), A090387(n+1)]+1`
-/

namespace A046642.P2646440900157243870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046642.P2646440900157243870

namespace A046642

/-- `eq[A000005(n+1), A090387(n+1)]+1` -/
def P2646440900157243870.Spec : Prop :=
  ∀ n, (P2646440900157243870.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P17787648458204659319

`filter[A269870(n+1), A322980(#)]`
-/

namespace A046642.P17787648458204659319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P17787648458204659319

namespace A046642

/-- `filter[A269870(n+1), A322980(#)]` -/
def P17787648458204659319.Spec : Prop :=
  ∀ n, P17787648458204659319.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P899301517584679545

`record[A009230(n+1)/A000005(n+1)]`
-/

namespace A046642.P899301517584679545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046642.P899301517584679545

namespace A046642

/-- `record[A009230(n+1)/A000005(n+1)]` -/
def P899301517584679545.Spec : Prop :=
  ∀ n, P899301517584679545.a n = (A046642 (n + 1) : ℚ)

end A046642

/-! ## A046642.P11917696024580365599

`filter[A128201(n+1), A322980(#)]`
-/

namespace A046642.P11917696024580365599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P11917696024580365599

namespace A046642

/-- `filter[A128201(n+1), A322980(#)]` -/
def P11917696024580365599.Spec : Prop :=
  ∀ n, P11917696024580365599.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P6105207507783693328

`lt[n*A323073(n), n]`
-/

namespace A046642.P6105207507783693328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323073 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046642.P6105207507783693328

namespace A046642

/-- `lt[n*A323073(n), n]` -/
def P6105207507783693328.Spec : Prop :=
  ∀ n, (P6105207507783693328.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P14029106874262622360

`eq[1, A306671(n+1)]+1`
-/

namespace A046642.P14029106874262622360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046642.P14029106874262622360

namespace A046642

/-- `eq[1, A306671(n+1)]+1` -/
def P14029106874262622360.Spec : Prop :=
  ∀ n, (P14029106874262622360.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P16099450328448339698

`lt[A323073(n+1), 1]+1`
-/

namespace A046642.P16099450328448339698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323073 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046642.P16099450328448339698

namespace A046642

/-- `lt[A323073(n+1), 1]+1` -/
def P16099450328448339698.Spec : Prop :=
  ∀ n, (P16099450328448339698.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P9019648936394207602

`eq[A135416(n+1), A323073(n)]`
-/

namespace A046642.P9019648936394207602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046642.P9019648936394207602

namespace A046642

/-- `eq[A135416(n+1), A323073(n)]` -/
def P9019648936394207602.Spec : Prop :=
  ∀ n, (P9019648936394207602.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P13115674882661645310

`eq[A117980(A117980(n)+1), A323073(n)]`
-/

namespace A046642.P13115674882661645310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A117980 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046642.P13115674882661645310

namespace A046642

/-- `eq[A117980(A117980(n)+1), A323073(n)]` -/
def P13115674882661645310.Spec : Prop :=
  ∀ n, (P13115674882661645310.a n : ℤ) = A046642 (n + 1)

end A046642

/-! ## A046642.P2442494162742703579

`filter[A003159(n+1), A322980(#)]`
-/

namespace A046642.P2442494162742703579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P2442494162742703579

namespace A046642

/-- `filter[A003159(n+1), A322980(#)]` -/
def P2442494162742703579.Spec : Prop :=
  ∀ n, P2442494162742703579.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P11064336747579424776

`filter[A141259(n+1), A322980(#)]`
-/

namespace A046642.P11064336747579424776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P11064336747579424776

namespace A046642

/-- `filter[A141259(n+1), A322980(#)]` -/
def P11064336747579424776.Spec : Prop :=
  ∀ n, P11064336747579424776.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P12085738341638836759

`filter[A260401(n+1), A322980(#)]`
-/

namespace A046642.P12085738341638836759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P12085738341638836759

namespace A046642

/-- `filter[A260401(n+1), A322980(#)]` -/
def P12085738341638836759.Spec : Prop :=
  ∀ n, P12085738341638836759.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P6319929737937419410

`filter[A107750(n+1), A322980(#)]`
-/

namespace A046642.P6319929737937419410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P6319929737937419410

namespace A046642

/-- `filter[A107750(n+1), A322980(#)]` -/
def P6319929737937419410.Spec : Prop :=
  ∀ n, P6319929737937419410.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P11098541426357589498

`filter[A042965(n+2), A322980(#)]`
-/

namespace A046642.P11098541426357589498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P11098541426357589498

namespace A046642

/-- `filter[A042965(n+2), A322980(#)]` -/
def P11098541426357589498.Spec : Prop :=
  ∀ n, P11098541426357589498.a n = A046642 (n + 1)

end A046642

/-! ## A046642.P12224049395627827086

`filter[A263715(n+2), A322980(#)]`
-/

namespace A046642.P12224049395627827086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046642.P12224049395627827086

namespace A046642

/-- `filter[A263715(n+2), A322980(#)]` -/
def P12224049395627827086.Spec : Prop :=
  ∀ n, P12224049395627827086.a n = A046642 (n + 1)

end A046642

/-!
# A046643: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives numerator of b_n.

The programs for A046643, the canonical program `A046643.P2213597876425122819` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046643 has offset 1).

The definition of A046643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046643.P1557473906368129035

`A001790(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A046643.P1557473906368129035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001790 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A046643.P1557473906368129035

namespace A046643

/-- `A001790(A067029(n+1))*a(A028234(n+1)-1)` -/
def P1557473906368129035.Spec : Prop :=
  ∀ n, P1557473906368129035.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P2213597876425122819

`∏{e}[n+1, A001790(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046643

/-- `∏{e}[n+1, A001790(#)]` -/
def P2213597876425122819.Spec : Prop :=
  ∀ n, P2213597876425122819.a n = A046643 (n + 1)

theorem P2213597876425122819.correct : P2213597876425122819.Spec := by
  intro n
  simp only [A046643, Nat.add_sub_cancel]

end A046643

/-! ## A046643.P11556947033391302429

`A318449(n+1)*A318453(n+1)`
-/

namespace A046643.P11556947033391302429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318449 (n + 1) * A318453 (n + 1)

end

end A046643.P11556947033391302429

namespace A046643

/-- `A318449(n+1)*A318453(n+1)` -/
def P11556947033391302429.Spec : Prop :=
  ∀ n, P11556947033391302429.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P14557737307539571805

`A299149(n+1)/A000265(n+1)`
-/

namespace A046643.P14557737307539571805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299149 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A046643.P14557737307539571805

namespace A046643

/-- `A299149(n+1)/A000265(n+1)` -/
def P14557737307539571805.Spec : Prop :=
  ∀ n, P14557737307539571805.a n = (A046643 (n + 1) : ℚ)

end A046643

/-! ## A046643.P1846779248888322567

`A318321(n+1)/A003961(n+1)`
-/

namespace A046643.P1846779248888322567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318321 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)

end

end A046643.P1846779248888322567

namespace A046643

/-- `A318321(n+1)/A003961(n+1)` -/
def P1846779248888322567.Spec : Prop :=
  ∀ n, P1846779248888322567.a n = (A046643 (n + 1) : ℚ)

end A046643

/-! ## A046643.P7937462515531149616

`A317848(n+1)/A037445(n+1)`
-/

namespace A046643.P7937462515531149616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317848 (n + 1) : ℚ) / (A037445 (n + 1) : ℚ)

end

end A046643.P7937462515531149616

namespace A046643

/-- `A317848(n+1)/A037445(n+1)` -/
def P7937462515531149616.Spec : Prop :=
  ∀ n, P7937462515531149616.a n = (A046643 (n + 1) : ℚ)

end A046643

/-! ## A046643.P12047100602005874808

`A383657(n+1)/A048691(n+1)`
-/

namespace A046643.P12047100602005874808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383657 (n + 1) : ℚ) / (A048691 (n + 1) : ℚ)

end

end A046643.P12047100602005874808

namespace A046643

/-- `A383657(n+1)/A048691(n+1)` -/
def P12047100602005874808.Spec : Prop :=
  ∀ n, P12047100602005874808.a n = (A046643 (n + 1) : ℚ)

end A046643

/-! ## A046643.P5839012334107133897

`gcd(A299149(n+1), A317848(n+1))`
-/

namespace A046643.P5839012334107133897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299149 (n + 1)) (A317848 (n + 1))

end

end A046643.P5839012334107133897

namespace A046643

/-- `gcd(A299149(n+1), A317848(n+1))` -/
def P5839012334107133897.Spec : Prop :=
  ∀ n, (P5839012334107133897.a n : ℤ) = A046643 (n + 1)

end A046643

/-! ## A046643.P18084542097545801616

`A318649(n+1)/(n+1)²*A318651(n+1)`
-/

namespace A046643.P18084542097545801616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318649 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A318651 (n + 1) : ℚ)

end

end A046643.P18084542097545801616

namespace A046643

/-- `A318649(n+1)/(n+1)²*A318651(n+1)` -/
def P18084542097545801616.Spec : Prop :=
  ∀ n, P18084542097545801616.a n = (A046643 (n + 1) : ℚ)

end A046643

/-! ## A046643.P6103775926481055835

`A299149(n+1)/A003961(A064989(n+1))`
-/

namespace A046643.P6103775926481055835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299149 (n + 1) : ℚ) / (A003961 (A064989 (n + 1)).toNat : ℚ)

end

end A046643.P6103775926481055835

namespace A046643

/-- `A299149(n+1)/A003961(A064989(n+1))` -/
def P6103775926481055835.Spec : Prop :=
  ∀ n, P6103775926481055835.a n = (A046643 (n + 1) : ℚ)

end A046643

/-! ## A046643.P5342956699619871113

`A318319(n+1)/A000265(A064989(n+1))`
-/

namespace A046643.P5342956699619871113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318319 (n + 1) : ℚ) / (A000265 (A064989 (n + 1)).toNat : ℚ)

end

end A046643.P5342956699619871113

namespace A046643

/-- `A318319(n+1)/A000265(A064989(n+1))` -/
def P5342956699619871113.Spec : Prop :=
  ∀ n, P5342956699619871113.a n = (A046643 (n + 1) : ℚ)

end A046643

/-! ## A046643.P17805801257384412298

`A318449(A003961(n+1))`
-/

namespace A046643.P17805801257384412298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318449 (A003961 (n + 1)).toNat

end

end A046643.P17805801257384412298

namespace A046643

/-- `A318449(A003961(n+1))` -/
def P17805801257384412298.Spec : Prop :=
  ∀ n, P17805801257384412298.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P3732013560968923637

`A318449(A045965(n+1))`
-/

namespace A046643.P3732013560968923637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318449 (A045965 (n + 1)).toNat

end

end A046643.P3732013560968923637

namespace A046643

/-- `A318449(A045965(n+1))` -/
def P3732013560968923637.Spec : Prop :=
  ∀ n, P3732013560968923637.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P999758312875921833

`A318449(A064988(n+1))`
-/

namespace A046643.P999758312875921833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318449 (A064988 (n + 1)).toNat

end

end A046643.P999758312875921833

namespace A046643

/-- `A318449(A064988(n+1))` -/
def P999758312875921833.Spec : Prop :=
  ∀ n, P999758312875921833.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P13801841999829455780

`A000265(A317848(n+1))`
-/

namespace A046643.P13801841999829455780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A317848 (n + 1)).toNat

end

end A046643.P13801841999829455780

namespace A046643

/-- `A000265(A317848(n+1))` -/
def P13801841999829455780.Spec : Prop :=
  ∀ n, P13801841999829455780.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P3151189281548366215

`∏{e}[(n+1)², A036069(#)]`
-/

namespace A046643.P3151189281548366215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A036069 (Nat.factorization (f1 n) p)

end

end A046643.P3151189281548366215

namespace A046643

/-- `∏{e}[(n+1)², A036069(#)]` -/
def P3151189281548366215.Spec : Prop :=
  ∀ n, P3151189281548366215.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P5921477317555952025

`∏{e}[(n+1)², A163590(#)]`
-/

namespace A046643.P5921477317555952025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A163590 (Nat.factorization (f1 n) p)

end

end A046643.P5921477317555952025

namespace A046643

/-- `∏{e}[(n+1)², A163590(#)]` -/
def P5921477317555952025.Spec : Prop :=
  ∀ n, P5921477317555952025.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P7803053683694955901

`A317933(A046523(n+1)²)`
-/

namespace A046643.P7803053683694955901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A046523 (n + 1) ^ 2).toNat

end

end A046643.P7803053683694955901

namespace A046643

/-- `A317933(A046523(n+1)²)` -/
def P7803053683694955901.Spec : Prop :=
  ∀ n, P7803053683694955901.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P13728389606103400238

`A317933(A046523(n+1)*A046523(n+1))`
-/

namespace A046643.P13728389606103400238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A046523 (n + 1) * A046523 (n + 1)).toNat

end

end A046643.P13728389606103400238

namespace A046643

/-- `A317933(A046523(n+1)*A046523(n+1))` -/
def P13728389606103400238.Spec : Prop :=
  ∀ n, P13728389606103400238.a n = A046643 (n + 1)

end A046643

/-! ## A046643.P11993289659245100060

`A317933(A103390(n+2))`
-/

namespace A046643.P11993289659245100060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A103390 (n + 2)).toNat

end

end A046643.P11993289659245100060

namespace A046643

/-- `A317933(A103390(n+2))` -/
def P11993289659245100060.Spec : Prop :=
  ∀ n, P11993289659245100060.a n = A046643 (n + 1)

end A046643

/-!
# A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

The programs for A046644, the canonical program `A046644.P16655248551205198622` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046644 has offset 1).

The definition of A046644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046644.P2594318262158557951

`A000079(A046645(n+1))`
-/

namespace A046644.P2594318262158557951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A046645 (n + 1)).toNat

end

end A046644.P2594318262158557951

namespace A046644

/-- `A000079(A046645(n+1))` -/
def P2594318262158557951.Spec : Prop :=
  ∀ n, P2594318262158557951.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P10181048590737394013

`A000079(A005187(A067029(n+1)))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A046644.P10181048590737394013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A005187 (A067029 (n + 1)).toNat).toNat * a (A028234 (n + 1) - 1).toNat

end

end A046644.P10181048590737394013

namespace A046644

/-- `A000079(A005187(A067029(n+1)))*a(A028234(n+1)-1)` -/
def P10181048590737394013.Spec : Prop :=
  ∀ n, P10181048590737394013.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P11713715009795988340

`2^∑{e}[n+1, val((2*#)!, 2)]`
-/

namespace A046644.P11713715009795988340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2)

end

end A046644.P11713715009795988340

namespace A046644

/-- `2^∑{e}[n+1, val((2*#)!, 2)]` -/
def P11713715009795988340.Spec : Prop :=
  ∀ n, (P11713715009795988340.a n : ℤ) = A046644 (n + 1)

end A046644

/-! ## A046644.P16655248551205198622

`∏{e}[n+1, A046161(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046644

/-- `∏{e}[n+1, A046161(#)]` -/
def P16655248551205198622.Spec : Prop :=
  ∀ n, P16655248551205198622.a n = A046644 (n + 1)

theorem P16655248551205198622.correct : P16655248551205198622.Spec := by
  intro n
  simp only [A046644, Nat.add_sub_cancel]

end A046644

/-! ## A046644.P11536980294938484943

`2^val(n+1, 3)*A317932(n+1)`
-/

namespace A046644.P11536980294938484943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) * A317932 (n + 1)

end

end A046644.P11536980294938484943

namespace A046644

/-- `2^val(n+1, 3)*A317932(n+1)` -/
def P11536980294938484943.Spec : Prop :=
  ∀ n, P11536980294938484943.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P6459084945793490032

`and(n+1, -(n+1))*A299150(n+1)`
-/

namespace A046644.P6459084945793490032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * A299150 (n + 1)

end

end A046644.P6459084945793490032

namespace A046644

/-- `and(n+1, -(n+1))*A299150(n+1)` -/
def P6459084945793490032.Spec : Prop :=
  ∀ n, P6459084945793490032.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P17823902757937286758

`A011782(A046645(n+1)+1)`
-/

namespace A046644.P17823902757937286758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A046645 (n + 1) + 1).toNat

end

end A046644.P17823902757937286758

namespace A046644

/-- `A011782(A046645(n+1)+1)` -/
def P17823902757937286758.Spec : Prop :=
  ∀ n, P17823902757937286758.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P11282732836096651261

`A300622(2*A046645(n+1))`
-/

namespace A046644.P11282732836096651261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300622 (2 * A046645 (n + 1)).toNat

end

end A046644.P11282732836096651261

namespace A046644

/-- `A300622(2*A046645(n+1))` -/
def P11282732836096651261.Spec : Prop :=
  ∀ n, P11282732836096651261.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P4175678218132703430

`2^A293447(A293442(n+1))`
-/

namespace A046644.P4175678218132703430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A293447 (A293442 (n + 1)).toNat : ℤ)

end

end A046644.P4175678218132703430

namespace A046644

/-- `2^A293447(A293442(n+1))` -/
def P4175678218132703430.Spec : Prop :=
  ∀ n, P4175678218132703430.a n = (A046644 (n + 1) : ℚ)

end A046644

/-! ## A046644.P10981447269939707169

`A059268(2*A046645(n+1)²)`
-/

namespace A046644.P10981447269939707169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A046645 (n + 1) ^ 2).toNat

end

end A046644.P10981447269939707169

namespace A046644

/-- `A059268(2*A046645(n+1)²)` -/
def P10981447269939707169.Spec : Prop :=
  ∀ n, P10981447269939707169.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P17335856540700769489

`A164073(2*A046645(n+1)+1)`
-/

namespace A046644.P17335856540700769489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (2 * A046645 (n + 1) + 1).toNat

end

end A046644.P17335856540700769489

namespace A046644

/-- `A164073(2*A046645(n+1)+1)` -/
def P17335856540700769489.Spec : Prop :=
  ∀ n, P17335856540700769489.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P6752017978747298413

`A052552(2*A046645(n+1))-1`
-/

namespace A046644.P6752017978747298413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * A046645 (n + 1)).toNat - 1

end

end A046644.P6752017978747298413

namespace A046644

/-- `A052552(2*A046645(n+1))-1` -/
def P6752017978747298413.Spec : Prop :=
  ∀ n, P6752017978747298413.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P3352224735958390739

`A006519(n+1)*A299150(n+1)`
-/

namespace A046644.P3352224735958390739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A299150 (n + 1)

end

end A046644.P3352224735958390739

namespace A046644

/-- `A006519(n+1)*A299150(n+1)` -/
def P3352224735958390739.Spec : Prop :=
  ∀ n, P3352224735958390739.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P13661953128879940958

`A061142(n+1)*A317934(n+1)`
-/

namespace A046644.P13661953128879940958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A317934 (n + 1)

end

end A046644.P13661953128879940958

namespace A046644

/-- `A061142(n+1)*A317934(n+1)` -/
def P13661953128879940958.Spec : Prop :=
  ∀ n, P13661953128879940958.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P14842201627034679589

`A317932(n+1)*A318666(n+1)`
-/

namespace A046644.P14842201627034679589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317932 (n + 1) * A318666 (n + 1)

end

end A046644.P14842201627034679589

namespace A046644

/-- `A317932(n+1)*A318666(n+1)` -/
def P14842201627034679589.Spec : Prop :=
  ∀ n, P14842201627034679589.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P11644938388351987963

`A318450(n+1)*A318454(n+1)`
-/

namespace A046644.P11644938388351987963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318450 (n + 1) * A318454 (n + 1)

end

end A046644.P11644938388351987963

namespace A046644

/-- `A318450(n+1)*A318454(n+1)` -/
def P11644938388351987963.Spec : Prop :=
  ∀ n, P11644938388351987963.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P18217615079575492241

`A318512(n+1)*A318651(n+1)`
-/

namespace A046644.P18217615079575492241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1) * A318651 (n + 1)

end

end A046644.P18217615079575492241

namespace A046644

/-- `A318512(n+1)*A318651(n+1)` -/
def P18217615079575492241.Spec : Prop :=
  ∀ n, P18217615079575492241.a n = A046644 (n + 1)

end A046644

/-! ## A046644.P3912953842051856979

`A165825(n+1)/A037445(n+1)`
-/

namespace A046644.P3912953842051856979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A037445 (n + 1) : ℚ)

end

end A046644.P3912953842051856979

namespace A046644

/-- `A165825(n+1)/A037445(n+1)` -/
def P3912953842051856979.Spec : Prop :=
  ∀ n, P3912953842051856979.a n = (A046644 (n + 1) : ℚ)

end A046644

/-! ## A046644.P11511330114108673644

`A256691(n+1)/A061142(n+1)`
-/

namespace A046644.P11511330114108673644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256691 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A046644.P11511330114108673644

namespace A046644

/-- `A256691(n+1)/A061142(n+1)` -/
def P11511330114108673644.Spec : Prop :=
  ∀ n, P11511330114108673644.a n = (A046644 (n + 1) : ℚ)

end A046644

/-! ## A046644.P17871968844771758893

`A317934(n+1)²*A037445(n+1)`
-/

namespace A046644.P17871968844771758893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (n + 1) ^ 2 * A037445 (n + 1)

end

end A046644.P17871968844771758893

namespace A046644

/-- `A317934(n+1)²*A037445(n+1)` -/
def P17871968844771758893.Spec : Prop :=
  ∀ n, P17871968844771758893.a n = A046644 (n + 1)

end A046644

/-!
# A046645: a(n) = log_2(A046644(n)); also the 2-adic valuation of A046644(n).

The programs for A046645, the canonical program `A046645.P11243749111570164507` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046645 has offset 1).

The definition of A046645 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046645.P11243749111570164507

`log2(A046644(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046645

/-- `log2(A046644(n+1))` -/
def P11243749111570164507.Spec : Prop :=
  ∀ n, P11243749111570164507.a n = (A046645 (n + 1) : ℝ)

end A046645

/-! ## A046645.P8763404548643348052

`A293447(A293442(n+1))`
-/

namespace A046645.P8763404548643348052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (A293442 (n + 1)).toNat

end

end A046645.P8763404548643348052

namespace A046645

/-- `A293447(A293442(n+1))` -/
def P8763404548643348052.Spec : Prop :=
  ∀ n, P8763404548643348052.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P6304288212556217032

`∑{e}[n+1, val((2*#)!, 2)]`
-/

namespace A046645.P6304288212556217032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2

end

end A046645.P6304288212556217032

namespace A046645

/-- `∑{e}[n+1, val((2*#)!, 2)]` -/
def P6304288212556217032.Spec : Prop :=
  ∀ n, (P6304288212556217032.a n : ℤ) = A046645 (n + 1)

end A046645

/-! ## A046645.P2325238902617978193

`val(∏{e}[n+1, (2*#)!], 2)`
-/

namespace A046645.P2325238902617978193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (2 * Nat.factorization (f1 n) p)) 2

end

end A046645.P2325238902617978193

namespace A046645

/-- `val(∏{e}[n+1, (2*#)!], 2)` -/
def P2325238902617978193.Spec : Prop :=
  ∀ n, (P2325238902617978193.a n : ℤ) = A046645 (n + 1)

end A046645

/-! ## A046645.P17323774415680831693

`∑{e}[n+1, val(#!, 2)+#]`
-/

namespace A046645.P17323774415680831693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 + Nat.factorization (f1 n) p)

end

end A046645.P17323774415680831693

namespace A046645

/-- `∑{e}[n+1, val(#!, 2)+#]` -/
def P17323774415680831693.Spec : Prop :=
  ∀ n, (P17323774415680831693.a n : ℤ) = A046645 (n + 1)

end A046645

/-! ## A046645.P17301264108937358267

`∑{e}[n+1, A005187(#)]`
-/

namespace A046645.P17301264108937358267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005187 (Nat.factorization (f1 n) p)

end

end A046645.P17301264108937358267

namespace A046645

/-- `∑{e}[n+1, A005187(#)]` -/
def P17301264108937358267.Spec : Prop :=
  ∀ n, P17301264108937358267.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P2020256584837333858

`val((n+1)*A299150(n+1), 2)`
-/

namespace A046645.P2020256584837333858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A299150 (n + 1)).toNat 2

end

end A046645.P2020256584837333858

namespace A046645

/-- `val((n+1)*A299150(n+1), 2)` -/
def P2020256584837333858.Spec : Prop :=
  ∀ n, (P2020256584837333858.a n : ℤ) = A046645 (n + 1)

end A046645

/-! ## A046645.P9238101323843927091

`A305439(n+1)+A007949(n+1)`
-/

namespace A046645.P9238101323843927091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305439 (n + 1) + A007949 (n + 1)

end

end A046645.P9238101323843927091

namespace A046645

/-- `A305439(n+1)+A007949(n+1)` -/
def P9238101323843927091.Spec : Prop :=
  ∀ n, P9238101323843927091.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P11608686494531797417

`A317946(n+1)+A001222(n+1)`
-/

namespace A046645.P11608686494531797417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (n + 1) + A001222 (n + 1)

end

end A046645.P11608686494531797417

namespace A046645

/-- `A317946(n+1)+A001222(n+1)` -/
def P11608686494531797417.Spec : Prop :=
  ∀ n, P11608686494531797417.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P6032886992660117183

`A318440(n+1)+A007814(n+1)`
-/

namespace A046645.P6032886992660117183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (n + 1) + A007814 (n + 1)

end

end A046645.P6032886992660117183

namespace A046645

/-- `A318440(n+1)+A007814(n+1)` -/
def P6032886992660117183.Spec : Prop :=
  ∀ n, P6032886992660117183.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P6440618878773322351

`A318315(n+1)+A087436(n+1)`
-/

namespace A046645.P6440618878773322351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (n + 1) + A087436 (n + 1)

end

end A046645.P6440618878773322351

namespace A046645

/-- `A318315(n+1)+A087436(n+1)` -/
def P6440618878773322351.Spec : Prop :=
  ∀ n, P6440618878773322351.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P2301808015608779756

`A318455(n+1)+A318451(n+1)`
-/

namespace A046645.P2301808015608779756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318455 (n + 1) + A318451 (n + 1)

end

end A046645.P2301808015608779756

namespace A046645

/-- `A318455(n+1)+A318451(n+1)` -/
def P2301808015608779756.Spec : Prop :=
  ∀ n, P2301808015608779756.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P15199004349006200445

`A318652(n+1)+A318513(n+1)`
-/

namespace A046645.P15199004349006200445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318652 (n + 1) + A318513 (n + 1)

end

end A046645.P15199004349006200445

namespace A046645

/-- `A318652(n+1)+A318513(n+1)` -/
def P15199004349006200445.Spec : Prop :=
  ∀ n, P15199004349006200445.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P14753058928476133842

`A255201(n+1)-A064547(n+1)`
-/

namespace A046645.P14753058928476133842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A064547 (n + 1)

end

end A046645.P14753058928476133842

namespace A046645

/-- `A255201(n+1)-A064547(n+1)` -/
def P14753058928476133842.Spec : Prop :=
  ∀ n, P14753058928476133842.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P17198277114855018115

`A289617(n+1)-A289618(n+1)`
-/

namespace A046645.P17198277114855018115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289617 (n + 1) - A289618 (n + 1)

end

end A046645.P17198277114855018115

namespace A046645

/-- `A289617(n+1)-A289618(n+1)` -/
def P17198277114855018115.Spec : Prop :=
  ∀ n, P17198277114855018115.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P12923877815783261151

`log2(A006519(n+1)*A299150(n+1))`
-/

namespace A046645.P12923877815783261151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006519 (n + 1) * A299150 (n + 1) : ℝ)

end

end A046645.P12923877815783261151

namespace A046645

/-- `log2(A006519(n+1)*A299150(n+1))` -/
def P12923877815783261151.Spec : Prop :=
  ∀ n, P12923877815783261151.a n = (A046645 (n + 1) : ℝ)

end A046645

/-! ## A046645.P8714643245409682391

`2*A001222(n+1)-A064547(n+1)`
-/

namespace A046645.P8714643245409682391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A064547 (n + 1)

end

end A046645.P8714643245409682391

namespace A046645

/-- `2*A001222(n+1)-A064547(n+1)` -/
def P8714643245409682391.Spec : Prop :=
  ∀ n, P8714643245409682391.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P14273648072394796846

`2*A007814(n+1)-A318656(n+1)`
-/

namespace A046645.P14273648072394796846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A318656 (n + 1)

end

end A046645.P14273648072394796846

namespace A046645

/-- `2*A007814(n+1)-A318656(n+1)` -/
def P14273648072394796846.Spec : Prop :=
  ∀ n, P14273648072394796846.a n = A046645 (n + 1)

end A046645

/-! ## A046645.P14203462697582863120

`A317946(n+1)+A255201(n+1)/2`
-/

namespace A046645.P14203462697582863120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317946 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2

end

end A046645.P14203462697582863120

namespace A046645

/-- `A317946(n+1)+A255201(n+1)/2` -/
def P14203462697582863120.Spec : Prop :=
  ∀ n, P14203462697582863120.a n = (A046645 (n + 1) : ℚ)

end A046645

/-! ## A046645.P5526692280600130973

`A001222(n+1)+A001222(A317934(n+1))`
-/

namespace A046645.P5526692280600130973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A317934 (n + 1)).toNat

end

end A046645.P5526692280600130973

namespace A046645

/-- `A001222(n+1)+A001222(A317934(n+1))` -/
def P5526692280600130973.Spec : Prop :=
  ∀ n, P5526692280600130973.a n = A046645 (n + 1)

end A046645

/-!
# A046646: a(n) = 2*binomial(3*n-3, n-1)/(2*n-1) for n >= 2, and a(1) = 1.

The programs for A046646, the canonical program `A046646.P11064455806647030670` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046646 has offset 1).

The definition of A046646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046646.P9000220811412240876

`A116637(2*n)`
-/

namespace A046646.P9000220811412240876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (2 * n)

end

end A046646.P9000220811412240876

namespace A046646

/-- `A116637(2*n)` -/
def P9000220811412240876.Spec : Prop :=
  ∀ n, P9000220811412240876.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P4972511823518280787

`A091599(∑[n]+1)`
-/

namespace A046646.P4972511823518280787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A046646.P4972511823518280787

namespace A046646

/-- `A091599(∑[n]+1)` -/
def P4972511823518280787.Spec : Prop :=
  ∀ n, P4972511823518280787.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P544861860672921648

`A046651(∑[n]+n)`
-/

namespace A046646.P544861860672921648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A046646.P544861860672921648

namespace A046646

/-- `A046651(∑[n]+n)` -/
def P544861860672921648.Spec : Prop :=
  ∀ n, P544861860672921648.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P16679607360556762573

`ceil(cosh(sin(n)))*A001764(n)`
-/

namespace A046646.P16679607360556762573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A001764 n

end

end A046646.P16679607360556762573

namespace A046646

/-- `ceil(cosh(sin(n)))*A001764(n)` -/
def P16679607360556762573.Spec : Prop :=
  ∀ n, P16679607360556762573.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P6088728063253993633

`A047750(2*n+floor(acot(n))-1)`
-/

namespace A046646.P6088728063253993633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047750 ((2 * n : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A046646.P6088728063253993633

namespace A046646

/-- `A047750(2*n+floor(acot(n))-1)` -/
def P6088728063253993633.Spec : Prop :=
  ∀ n, P6088728063253993633.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P12044951574403591521

`A047750(A004273(n))`
-/

namespace A046646.P12044951574403591521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047750 (A004273 n).toNat

end

end A046646.P12044951574403591521

namespace A046646

/-- `A047750(A004273(n))` -/
def P12044951574403591521.Spec : Prop :=
  ∀ n, P12044951574403591521.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P6081879637917540765

`record[A116637(A014681(n))]`
-/

namespace A046646.P6081879637917540765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046646.P6081879637917540765

namespace A046646

/-- `record[A116637(A014681(n))]` -/
def P6081879637917540765.Spec : Prop :=
  ∀ n, P6081879637917540765.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P17264940351995343142

`record[A116637(A029578(n))]`
-/

namespace A046646.P17264940351995343142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046646.P17264940351995343142

namespace A046646

/-- `record[A116637(A029578(n))]` -/
def P17264940351995343142.Spec : Prop :=
  ∀ n, P17264940351995343142.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P865019754166834788

`record[A116637(A083220(n))]`
-/

namespace A046646.P865019754166834788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046646.P865019754166834788

namespace A046646

/-- `record[A116637(A083220(n))]` -/
def P865019754166834788.Spec : Prop :=
  ∀ n, P865019754166834788.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P4261680791699161546

`A001764(n)*A029653(∑[n])`
-/

namespace A046646.P4261680791699161546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A029653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046646.P4261680791699161546

namespace A046646

/-- `A001764(n)*A029653(∑[n])` -/
def P4261680791699161546.Spec : Prop :=
  ∀ n, P4261680791699161546.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P17410884720543631575

`(n+1)*A000139(A028310(n))`
-/

namespace A046646.P17410884720543631575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000139 (A028310 n).toNat

end

end A046646.P17410884720543631575

namespace A046646

/-- `(n+1)*A000139(A028310(n))` -/
def P17410884720543631575.Spec : Prop :=
  ∀ n, P17410884720543631575.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P11064455806647030670

`(A057427(n)+1)*A001764(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046646

/-- `(A057427(n)+1)*A001764(n)` -/
def P11064455806647030670.Spec : Prop :=
  ∀ n, P11064455806647030670.a n = A046646 (n + 1)

theorem P11064455806647030670.correct : P11064455806647030670.Spec := by
  intro n
  simp only [A046646, Nat.add_sub_cancel]

end A046646

/-! ## A046646.P17055503315140063499

`(2-A000007(n))*A001764(n)`
-/

namespace A046646.P17055503315140063499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A001764 n

end

end A046646.P17055503315140063499

namespace A046646

/-- `(2-A000007(n))*A001764(n)` -/
def P17055503315140063499.Spec : Prop :=
  ∀ n, P17055503315140063499.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P16793234737761794242

`A001764(n)*A040001(2*n)`
-/

namespace A046646.P16793234737761794242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A040001 (2 * n)

end

end A046646.P16793234737761794242

namespace A046646

/-- `A001764(n)*A040001(2*n)` -/
def P16793234737761794242.Spec : Prop :=
  ∀ n, P16793234737761794242.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P5040269356045653613

`A001764(n)*A043529(2*n)`
-/

namespace A046646.P5040269356045653613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A043529 (2 * n)

end

end A046646.P5040269356045653613

namespace A046646

/-- `A001764(n)*A043529(2*n)` -/
def P5040269356045653613.Spec : Prop :=
  ∀ n, P5040269356045653613.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P8213485813897761229

`record[A116637(n)/A000034(n)²]`
-/

namespace A046646.P8213485813897761229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046646.P8213485813897761229

namespace A046646

/-- `record[A116637(n)/A000034(n)²]` -/
def P8213485813897761229.Spec : Prop :=
  ∀ n, P8213485813897761229.a n = (A046646 (n + 1) : ℚ)

end A046646

/-! ## A046646.P13970822079754586423

`A394978(n+1)-A121446(n+1)`
-/

namespace A046646.P13970822079754586423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394978 (n + 1) - A121446 (n + 1)

end

end A046646.P13970822079754586423

namespace A046646

/-- `A394978(n+1)-A121446(n+1)` -/
def P13970822079754586423.Spec : Prop :=
  ∀ n, P13970822079754586423.a n = A046646 (n + 1)

end A046646

/-! ## A046646.P4850300188977682562

`A001764(n)*A020639(A004277(n))`
-/

namespace A046646.P4850300188977682562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A020639 (A004277 n).toNat

end

end A046646.P4850300188977682562

namespace A046646

/-- `A001764(n)*A020639(A004277(n))` -/
def P4850300188977682562.Spec : Prop :=
  ∀ n, P4850300188977682562.a n = A046646 (n + 1)

end A046646

/-!
# A046647: Number of certain rooted planar maps.

The programs for A046647, there is no canonical definition to state claims against.
-/

/-! ## A046647.P18162132087114015300

`A091599(∑[n+1]+2)`
-/

namespace A046647.P18162132087114015300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A046647.P18162132087114015300

/-! ## A046647.P9068500076481246657

`A046651(∑[n+2]-1)`
-/

namespace A046647.P9068500076481246657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A046647.P9068500076481246657

/-! ## A046647.P14456277288069339993

`record[A091599(A080036(n))]`
-/

namespace A046647.P14456277288069339993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046647.P14456277288069339993

/-! ## A046647.P13637490564017535644

`record[A046651(A114327(n)+A080036(n))]`
-/

namespace A046647.P13637490564017535644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A114327 n + A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046647.P13637490564017535644

/-! ## A046647.P1243680926678555446

`or(A000007(n), A091599(A167499(n)-3))`
-/

namespace A046647.P1243680926678555446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091599 (A167499 n - 3).toNat)

end

end A046647.P1243680926678555446

/-! ## A046647.P3578387424512193016

`A033999(n)²*A091599(A167499(n)-3)`
-/

namespace A046647.P3578387424512193016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A091599 (A167499 n - 3).toNat

end

end A046647.P3578387424512193016

/-! ## A046647.P14902911379858013415

`A001222(A046704(n+1))*A091599(A167499(n)-3)`
-/

namespace A046647.P14902911379858013415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046704 (n + 1)).toNat * A091599 (A167499 n - 3).toNat

end

end A046647.P14902911379858013415

/-! ## A046647.P8949747093843302340

`A011620((n+2)²)*A091599(A167499(n)-3)`
-/

namespace A046647.P8949747093843302340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 ((n + 2) ^ 2) * A091599 (A167499 n - 3).toNat

end

end A046647.P8949747093843302340

/-!
# A046649: a(n) is the number of nonseparable planar maps with 2*n+1 edges and a fixed outer face of 4 edges which are invariant under a rotation of a 1/2 turn. (Column 2 of A091665.)

The programs for A046649, the canonical program `A046649.P12851466265392429966` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046649 has offset 2).

The definition of A046649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046649.P12851466265392429966

`4*(7*(n+2)-11)*(3*(n+2)-5)!/(n!*(2*(n+2)-1)!)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046649

/-- `4*(7*(n+2)-11)*(3*(n+2)-5)!/(n!*(2*(n+2)-1)!)` -/
def P12851466265392429966.Spec : Prop :=
  ∀ n, P12851466265392429966.a n = (A046649 (n + 2) : ℚ)

end A046649

/-! ## A046649.P14538953067150303340

`2*A093951(Δ[n²])`
-/

namespace A046649.P14538953067150303340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046649.P14538953067150303340

namespace A046649

/-- `2*A093951(Δ[n²])` -/
def P14538953067150303340.Spec : Prop :=
  ∀ n, P14538953067150303340.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P17789430805893076405

`A091665(∑[n+1]+2)`
-/

namespace A046649.P17789430805893076405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091665 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A046649.P17789430805893076405

namespace A046649

/-- `A091665(∑[n+1]+2)` -/
def P17789430805893076405.Spec : Prop :=
  ∀ n, P17789430805893076405.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P4219305882558915487

`A046652(∑[n+2]-1)`
-/

namespace A046649.P4219305882558915487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A046649.P4219305882558915487

namespace A046649

/-- `A046652(∑[n+2]-1)` -/
def P4219305882558915487.Spec : Prop :=
  ∀ n, P4219305882558915487.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P196479820623585598

`record[A046652(A099375(n)+n)]`
-/

namespace A046649.P196479820623585598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (A099375 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046649.P196479820623585598

namespace A046649

/-- `record[A046652(A099375(n)+n)]` -/
def P196479820623585598.Spec : Prop :=
  ∀ n, P196479820623585598.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P11759434952391219812

`2*(A102893(n+1)+A001764(n+1))`
-/

namespace A046649.P11759434952391219812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102893 (n + 1) + A001764 (n + 1))

end

end A046649.P11759434952391219812

namespace A046649

/-- `2*(A102893(n+1)+A001764(n+1))` -/
def P11759434952391219812.Spec : Prop :=
  ∀ n, P11759434952391219812.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P1420528808963232928

`A084081(2*n)+A047750(2*n+1)`
-/

namespace A046649.P1420528808963232928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084081 (2 * n) + A047750 (2 * n + 1)

end

end A046649.P1420528808963232928

namespace A046649

/-- `A084081(2*n)+A047750(2*n+1)` -/
def P1420528808963232928.Spec : Prop :=
  ∀ n, P1420528808963232928.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P8809232879683804914

`2*(A046646(n+2)-A047749(2*n+1))`
-/

namespace A046649.P8809232879683804914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046646 (n + 2) - A047749 (2 * n + 1))

end

end A046649.P8809232879683804914

namespace A046649

/-- `2*(A046646(n+2)-A047749(2*n+1))` -/
def P8809232879683804914.Spec : Prop :=
  ∀ n, P8809232879683804914.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P14836212795150027526

`2*A046646(n+2)-A116637(2*n+1)`
-/

namespace A046649.P14836212795150027526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046646 (n + 2) - A116637 (2 * n + 1)

end

end A046649.P14836212795150027526

namespace A046649

/-- `2*A046646(n+2)-A116637(2*n+1)` -/
def P14836212795150027526.Spec : Prop :=
  ∀ n, P14836212795150027526.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P7387867148188251422

`2*(A084081(2*n)+A047749(2*n+1))`
-/

namespace A046649.P7387867148188251422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084081 (2 * n) + A047749 (2 * n + 1))

end

end A046649.P7387867148188251422

namespace A046649

/-- `2*(A084081(2*n)+A047749(2*n+1))` -/
def P7387867148188251422.Spec : Prop :=
  ∀ n, P7387867148188251422.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P7051174351899728585

`2*(A134565(2*n+1)+A084081(2*n))`
-/

namespace A046649.P7051174351899728585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134565 (2 * n + 1) + A084081 (2 * n))

end

end A046649.P7051174351899728585

namespace A046649

/-- `2*(A134565(2*n+1)+A084081(2*n))` -/
def P7051174351899728585.Spec : Prop :=
  ∀ n, P7051174351899728585.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P5690452481341235131

`2*(A047750(2*n+1)-A047749(2*n+1))`
-/

namespace A046649.P5690452481341235131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047750 (2 * n + 1) - A047749 (2 * n + 1))

end

end A046649.P5690452481341235131

namespace A046649

/-- `2*(A047750(2*n+1)-A047749(2*n+1))` -/
def P5690452481341235131.Spec : Prop :=
  ∀ n, P5690452481341235131.a n = A046649 (n + 2)

end A046649

/-! ## A046649.P1401802105196244509

`2*A047750(2*n+1)-A116637(2*n+1)`
-/

namespace A046649.P1401802105196244509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047750 (2 * n + 1) - A116637 (2 * n + 1)

end

end A046649.P1401802105196244509

namespace A046649

/-- `2*A047750(2*n+1)-A116637(2*n+1)` -/
def P1401802105196244509.Spec : Prop :=
  ∀ n, P1401802105196244509.a n = A046649 (n + 2)

end A046649

/-!
# A046650: Number of sensed nonseparable (2-connected) planar maps with n edges and a distinguished face of size 2.

The programs for A046650, there is no canonical definition to state claims against.
-/

/-! ## A046650.P17352585073155897813

`A046653(∑[n+1]+1)`
-/

namespace A046650.P17352585073155897813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046653 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A046650.P17352585073155897813

/-! ## A046650.P17879738811157268029

`A005843(A005034(n))-char[n!-1]`
-/

namespace A046650.P17879738811157268029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005034 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046650.P17879738811157268029

/-! ## A046650.P541506905833414966

`A005843(A005034(n))-A079680(n)`
-/

namespace A046650.P541506905833414966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005034 n).toNat - A079680 n

end

end A046650.P541506905833414966

/-! ## A046650.P9589336171622754862

`A005843(A005034(n))-char[A125654(n)-n]`
-/

namespace A046650.P9589336171622754862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125654 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005034 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046650.P9589336171622754862

/-!
# A046651: Triangle of rooted planar maps.

The programs for A046651, there is no canonical definition to state claims against.
-/

/-! ## A046651.P12972385340477764392

`A091599(∑[char[∑[n]]]²-n)`
-/

namespace A046651.P12972385340477764392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A046651.P12972385340477764392

/-! ## A046651.P18283823268726220032

`or(char[1], A091599(A038722(n+1)))`
-/

namespace A046651.P18283823268726220032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091599 (A038722 (n + 1)).toNat)

end

end A046651.P18283823268726220032

/-! ## A046651.P14847744323238690558

`A091599(A038722(n+1))+A000007(n+1)`
-/

namespace A046651.P14847744323238690558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A046651.P14847744323238690558

/-! ## A046651.P1339686167734645684

`A091599(A038722(n+1))+A000035(gcd(2, n)²+n)`
-/

namespace A046651.P1339686167734645684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 (A038722 (n + 1)).toNat + A000035 (Nat.gcd 2 n ^ 2 + n)

end

end A046651.P1339686167734645684

/-! ## A046651.P8981506421809491589

`A010051(A007918(n))*A091599(A038722(n+1))`
-/

namespace A046651.P8981506421809491589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007918 n).toNat * A091599 (A038722 (n + 1)).toNat

end

end A046651.P8981506421809491589

/-! ## A046651.P11457319117277212254

`A010052(A048761(n))*A091599(A038722(n+1))`
-/

namespace A046651.P11457319117277212254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A048761 n).toNat * A091599 (A038722 (n + 1)).toNat

end

end A046651.P11457319117277212254

/-! ## A046651.P6606122496336153856

`A319988(A046109(n)+1)+A091599(A038722(n+1))`
-/

namespace A046651.P6606122496336153856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (A046109 n + 1).toNat + A091599 (A038722 (n + 1)).toNat

end

end A046651.P6606122496336153856

/-! ## A046651.P18050277873519476181

`A000035(2*n+1)*A091599(A038722(n+1))`
-/

namespace A046651.P18050277873519476181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A091599 (A038722 (n + 1)).toNat

end

end A046651.P18050277873519476181

/-! ## A046651.P13297056680650648355

`A091599(A038722(n+1))%A020747(n)`
-/

namespace A046651.P13297056680650648355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091599 (A038722 (n + 1)).toNat) (A020747 n)

end

end A046651.P13297056680650648355

/-! ## A046651.P9202177483846639867

`A091599(A038722(n+1))+A036987(A020639(n+2)²)`
-/

namespace A046651.P9202177483846639867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091599 (A038722 (n + 1)).toNat + A036987 (A020639 (n + 2) ^ 2).toNat

end

end A046651.P9202177483846639867

/-!
# A046652: Triangle of rooted planar maps, read by rows.

The programs for A046652, there is no canonical definition to state claims against.
-/

/-! ## A046652.P9079210016179435643

`A091665(A038722(n+1))`
-/

namespace A046652.P9079210016179435643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091665 (A038722 (n + 1)).toNat

end

end A046652.P9079210016179435643

/-! ## A046652.P10208872158172059731

`A091665(A061579(n)+1)`
-/

namespace A046652.P10208872158172059731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091665 (A061579 n + 1).toNat

end

end A046652.P10208872158172059731

/-! ## A046652.P1039302595357120366

`A091665(A114327(n)+1+n)`
-/

namespace A046652.P1039302595357120366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091665 (A114327 n + 1 + (n : ℤ)).toNat

end

end A046652.P1039302595357120366

/-! ## A046652.P16594790037320840839

`A091665(A093995(n+1)-n)`
-/

namespace A046652.P16594790037320840839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091665 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A046652.P16594790037320840839

/-! ## A046652.P740116937320941396

`A091665(∑[A245552(2*n+1)]-n)`
-/

namespace A046652.P740116937320941396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091665 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A046652.P740116937320941396

/-!
# A046654: Nearest integer to Sum_{k=1..n} log(k) = log(n!).

The programs for A046654, the canonical program `A046654.P10948764106419522232` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046654 has offset 0).

The definition of A046654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046654.P10948764106419522232

`round(log(n!))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046654

/-- `round(log(n!))` -/
def P10948764106419522232.Spec : Prop :=
  ∀ n, P10948764106419522232.a n = A046654 n

theorem P10948764106419522232.correct : P10948764106419522232.Spec := by
  intro n
  simp only [A046654]

end A046654

/-! ## A046654.P8551122962534706008

`round(∑[log(n+1)]-log(n+1))`
-/

namespace A046654.P8551122962534706008
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - Real.log (n + 1 : ℝ))

end

end A046654.P8551122962534706008

namespace A046654

/-- `round(∑[log(n+1)]-log(n+1))` -/
def P8551122962534706008.Spec : Prop :=
  ∀ n, P8551122962534706008.a n = A046654 n

end A046654

/-! ## A046654.P16535795689989997545

`ceil(log(n!/ϕ))`
-/

namespace A046654.P16535795689989997545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((Nat.factorial n : ℝ) / Real.goldenRatio)⌉

end

end A046654.P16535795689989997545

namespace A046654

/-- `ceil(log(n!/ϕ))` -/
def P16535795689989997545.Spec : Prop :=
  ∀ n, P16535795689989997545.a n = A046654 n

end A046654

/-! ## A046654.P11690031883378480957

`floor(log(A130905(n)))`
-/

namespace A046654.P11690031883378480957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A130905 n : ℝ)⌋

end

end A046654.P11690031883378480957

namespace A046654

/-- `floor(log(A130905(n)))` -/
def P11690031883378480957.Spec : Prop :=
  ∀ n, P11690031883378480957.a n = A046654 n

end A046654

/-! ## A046654.P2430224840739714417

`floor(log(A395025(n)))`
-/

namespace A046654.P2430224840739714417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A395025 n : ℝ)⌋

end

end A046654.P2430224840739714417

namespace A046654

/-- `floor(log(A395025(n)))` -/
def P2430224840739714417.Spec : Prop :=
  ∀ n, P2430224840739714417.a n = A046654 n

end A046654

/-! ## A046654.P14874748356674611807

`ceil(log(A000142(n)/ϕ))`
-/

namespace A046654.P14874748356674611807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((A000142 n : ℝ) / Real.goldenRatio)⌉

end

end A046654.P14874748356674611807

namespace A046654

/-- `ceil(log(A000142(n)/ϕ))` -/
def P14874748356674611807.Spec : Prop :=
  ∀ n, P14874748356674611807.a n = A046654 n

end A046654

/-! ## A046654.P13169356766426909152

`round(log(A000142(n)))%A000110(n)`
-/

namespace A046654.P13169356766426909152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.log (A000142 n : ℝ))) (A000110 n)

end

end A046654.P13169356766426909152

namespace A046654

/-- `round(log(A000142(n)))%A000110(n)` -/
def P13169356766426909152.Spec : Prop :=
  ∀ n, P13169356766426909152.a n = A046654 n

end A046654

/-!
# A046655: Numbers whose sum of the squares of divisors is also a square number.

The programs for A046655, there is no canonical definition to state claims against.
-/

/-! ## A046655.P15884639463811398141

`sqrt(A232554(n+1))`
-/

namespace A046655.P15884639463811398141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A232554 (n + 1) : ℝ)

end

end A046655.P15884639463811398141

/-! ## A046655.P12847618176938940456

`root(A232554(C(gcd(2, n), 3)+n+1), 2)`
-/

namespace A046655.P12847618176938940456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (Nat.choose (Nat.gcd 2 n) 3 + n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A046655.P12847618176938940456

/-! ## A046655.P9252740735364830072

`gcd(root(A232554(n+1), 2), A000038(n))`
-/

namespace A046655.P9252740735364830072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000038 n)

end

end A046655.P9252740735364830072

/-! ## A046655.P13535113164682138252

`or(root(A232554(n+1), 2), A000007(n))`
-/

namespace A046655.P13535113164682138252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000007 n)

end

end A046655.P13535113164682138252

/-! ## A046655.P17033531380758348276

`root(A232554(n+1), A020639(2*(n+1)))`
-/

namespace A046655.P17033531380758348276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A046655.P17033531380758348276

/-! ## A046655.P14066570630176100858

`root(A232554(n+1), A000032(C(2, n+2)))`
-/

namespace A046655.P14066570630176100858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (A000032 (Nat.choose 2 (n + 2)) : ℝ))

end

end A046655.P14066570630176100858

/-! ## A046655.P9663302748521652940

`root(A232554(n+1), 2)*A007318(C(2, n))`
-/

namespace A046655.P9663302748521652940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.choose 2 n) : ℝ)

end

end A046655.P9663302748521652940

/-! ## A046655.P14087357822765871378

`root(A232554(n+1), 2)*(A000041(n)%2)!`
-/

namespace A046655.P14087357822765871378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℝ)

end

end A046655.P14087357822765871378

/-! ## A046655.P2554080755604351834

`char[A000108(n+12)]+root(A232554(n+1), 2)`
-/

namespace A046655.P2554080755604351834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 12)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) + (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A046655.P2554080755604351834

/-! ## A046655.P1598333964792807699

`root(A232554(n+1), 2)*A014963(6*(n+1))`
-/

namespace A046655.P1598333964792807699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A014963 (6 * (n + 1)) : ℝ)

end

end A046655.P1598333964792807699

/-! ## A046655.P6029800582890106292

`A008683(16*n+4)+root(A232554(n+1), 2)`
-/

namespace A046655.P6029800582890106292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (16 * n + 4) : ℝ) + (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A046655.P6029800582890106292

/-! ## A046655.P1739058765735119166

`root(A232554(n+1), 2)*A000108(C(2, n+2))`
-/

namespace A046655.P1739058765735119166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A000108 (Nat.choose 2 (n + 2)) : ℝ)

end

end A046655.P1739058765735119166

/-! ## A046655.P10760409174663970361

`root(A232554(n+1), 2)/A007318(C(2, n+1))`
-/

namespace A046655.P10760409174663970361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / (A007318 (Nat.choose 2 (n + 1)) : ℝ)

end

end A046655.P10760409174663970361

/-! ## A046655.P5764374132954865926

`root(A232554(n+1), 2)*and(1, A000040(n+6))`
-/

namespace A046655.P5764374132954865926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (Int.land 1 (A000040 (n + 6)) : ℝ)

end

end A046655.P5764374132954865926

/-! ## A046655.P5595500191995249551

`and(1, A000005(3*n+2))+root(A232554(n+1), 2)`
-/

namespace A046655.P5595500191995249551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A000005 (3 * n + 2)) : ℝ) + (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A046655.P5595500191995249551

/-! ## A046655.P4514394025150685256

`root(A232554(n+1), 2)-A000040(n+1)²%((-1)^n)`
-/

namespace A046655.P4514394025150685256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) - (Int.tmod (A000040 (n + 1) ^ 2) ((-1) ^ n) : ℝ)

end

end A046655.P4514394025150685256

/-! ## A046655.P17446937464828479477

`root(A232554(n+1), 2)^A014963(C(n+3, 2))`
-/

namespace A046655.P17446937464828479477
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A232554 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ (A014963 (Nat.choose (n + 3) 2) : ℤ)

end

end A046655.P17446937464828479477

/-!
# A046656: Square roots of sums of squares of divisors in A046655.

The programs for A046656, there is no canonical definition to state claims against.
-/

/-! ## A046656.P4288027750976991983

`sqrt(A001157(A046655(n+1)))`
-/

namespace A046656.P4288027750976991983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001157 (A046655 (n + 1)).toNat : ℝ)

end

end A046656.P4288027750976991983

/-! ## A046656.P8153381318202983644

`root(∑{d}[A046655(2*n+1-n), #²], 2)`
-/

namespace A046656.P8153381318202983644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℝ) ^ (1 / (2 : ℝ))

end

end A046656.P8153381318202983644

/-! ## A046656.P11353534743999887137

`∑{d}[A046655(n+1), #²]^(A057427(n)/2)`
-/

namespace A046656.P11353534743999887137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

end

end A046656.P11353534743999887137

/-! ## A046656.P13709576290963155007

`∑{d}[A046655(n+1), #²]^2^A008683(A007918(n))`
-/

namespace A046656.P13709576290963155007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ) : ℝ)

end

end A046656.P13709576290963155007

/-! ## A046656.P6340736758780096359

`A000027(root(∑{d}[A046655(n+1), #²], 2))`
-/

namespace A046656.P6340736758780096359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A046656.P6340736758780096359

/-!
# A046657: a(n) = A002088(n)/2.

The programs for A046657, the canonical program `A046657.P7830311371866937394` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046657 has offset 2).

The definition of A046657 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046657.P7830311371866937394

`A002088(n+2)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A046657

/-- `A002088(n+2)/2` -/
def P7830311371866937394.Spec : Prop :=
  ∀ n, P7830311371866937394.a n = (A046657 (n + 2) : ℚ)

end A046657

/-! ## A046657.P10169644047120330398

`∑[A023022(n+2)]`
-/

namespace A046657.P10169644047120330398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P10169644047120330398

namespace A046657

/-- `∑[A023022(n+2)]` -/
def P10169644047120330398.Spec : Prop :=
  ∀ n, P10169644047120330398.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P16460247922003545667

`A140466(n+2)/8`
-/

namespace A046657.P16460247922003545667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 (n + 2) : ℚ) / 8

end

end A046657.P16460247922003545667

namespace A046657

/-- `A140466(n+2)/8` -/
def P16460247922003545667.Spec : Prop :=
  ∀ n, P16460247922003545667.a n = (A046657 (n + 2) : ℚ)

end A046657

/-! ## A046657.P2719779270284857806

`floor(A005728(n+2)/2)`
-/

namespace A046657.P2719779270284857806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005728 (n + 2) : ℚ) / 2⌋

end

end A046657.P2719779270284857806

namespace A046657

/-- `floor(A005728(n+2)/2)` -/
def P2719779270284857806.Spec : Prop :=
  ∀ n, P2719779270284857806.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P5200872457209153040

`round(A018805(n+2)/4)`
-/

namespace A046657.P5200872457209153040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A018805 (n + 2) : ℚ) / 4)

end

end A046657.P5200872457209153040

namespace A046657

/-- `round(A018805(n+2)/4)` -/
def P5200872457209153040.Spec : Prop :=
  ∀ n, P5200872457209153040.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P905351516132946618

`∑[ceil(A000010(n+2)/2)]`
-/

namespace A046657.P905351516132946618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P905351516132946618

namespace A046657

/-- `∑[ceil(A000010(n+2)/2)]` -/
def P905351516132946618.Spec : Prop :=
  ∀ n, P905351516132946618.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P12129458230282060345

`(∑[A000010(lcm(2, n+2))]+1)/2`
-/

namespace A046657.P12129458230282060345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm 2 (n + 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A046657.P12129458230282060345

namespace A046657

/-- `(∑[A000010(lcm(2, n+2))]+1)/2` -/
def P12129458230282060345.Spec : Prop :=
  ∀ n, P12129458230282060345.a n = (A046657 (n + 2) : ℚ)

end A046657

/-! ## A046657.P2445263481059410706

`a(n-1)+A000010(C(n+2, n+1))/2` with `a(0)=1`
-/

namespace A046657.P2445263481059410706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000010 (Nat.choose (n + 2) (n + 1)) : ℚ) / 2

end

end A046657.P2445263481059410706

namespace A046657

/-- `a(n-1)+A000010(C(n+2, n+1))/2` -/
def P2445263481059410706.Spec : Prop :=
  ∀ n, P2445263481059410706.a n = (A046657 (n + 2) : ℚ)

end A046657

/-! ## A046657.P10143354274017076419

`∑[A004525(A000010(n+2))]`
-/

namespace A046657.P10143354274017076419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P10143354274017076419

namespace A046657

/-- `∑[A004525(A000010(n+2))]` -/
def P10143354274017076419.Spec : Prop :=
  ∀ n, P10143354274017076419.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P4444811362632357938

`∑[A004526(A000010(n+2)+1)]`
-/

namespace A046657.P4444811362632357938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P4444811362632357938

namespace A046657

/-- `∑[A004526(A000010(n+2)+1)]` -/
def P4444811362632357938.Spec : Prop :=
  ∀ n, P4444811362632357938.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P15654701386283019973

`∑[A057979(A000010(n+2)+1)]`
-/

namespace A046657.P15654701386283019973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000010 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P15654701386283019973

namespace A046657

/-- `∑[A057979(A000010(n+2)+1)]` -/
def P15654701386283019973.Spec : Prop :=
  ∀ n, P15654701386283019973.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P8994191033097881305

`∑[A101279(A000010(n+2)+1)]`
-/

namespace A046657.P8994191033097881305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A000010 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P8994191033097881305

namespace A046657

/-- `∑[A101279(A000010(n+2)+1)]` -/
def P8994191033097881305.Spec : Prop :=
  ∀ n, P8994191033097881305.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P11813974339750354636

`∑[A123108(A000010(n+2)+1)]`
-/

namespace A046657.P11813974339750354636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000010 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P11813974339750354636

namespace A046657

/-- `∑[A123108(A000010(n+2)+1)]` -/
def P11813974339750354636.Spec : Prop :=
  ∀ n, P11813974339750354636.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P16680009302646256596

`∑[A008619(A000010(n+2)-1)]`
-/

namespace A046657.P16680009302646256596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000010 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P16680009302646256596

namespace A046657

/-- `∑[A008619(A000010(n+2)-1)]` -/
def P16680009302646256596.Spec : Prop :=
  ∀ n, P16680009302646256596.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P8497771549361734651

`∑[A000010(n+2)/A040001(2*n)]`
-/

namespace A046657.P8497771549361734651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A040001 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046657.P8497771549361734651

namespace A046657

/-- `∑[A000010(n+2)/A040001(2*n)]` -/
def P8497771549361734651.Spec : Prop :=
  ∀ n, P8497771549361734651.a n = (A046657 (n + 2) : ℚ)

end A046657

/-! ## A046657.P4719544545483511680

`(∑[A000010(n+1)]+A000010(n+2))/2`
-/

namespace A046657.P4719544545483511680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + A000010 (n + 2) : ℤ) : ℚ) / 2

end

end A046657.P4719544545483511680

namespace A046657

/-- `(∑[A000010(n+1)]+A000010(n+2))/2` -/
def P4719544545483511680.Spec : Prop :=
  ∀ n, P4719544545483511680.a n = (A046657 (n + 2) : ℚ)

end A046657

/-! ## A046657.P13205024743350852941

`A049806(n+2)-1`
-/

namespace A046657.P13205024743350852941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049806 (n + 2) - 1

end

end A046657.P13205024743350852941

namespace A046657

/-- `A049806(n+2)-1` -/
def P13205024743350852941.Spec : Prop :=
  ∀ n, P13205024743350852941.a n = A046657 (n + 2)

end A046657

/-! ## A046657.P3440070848930264557

`A092249(n+2)/2`
-/

namespace A046657.P3440070848930264557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092249 (n + 2) : ℚ) / 2

end

end A046657.P3440070848930264557

namespace A046657

/-- `A092249(n+2)/2` -/
def P3440070848930264557.Spec : Prop :=
  ∀ n, P3440070848930264557.a n = (A046657 (n + 2) : ℚ)

end A046657

/-! ## A046657.P4910228081824462472

`round(A015614(n+2)/2)`
-/

namespace A046657.P4910228081824462472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A015614 (n + 2) : ℚ) / 2)

end

end A046657.P4910228081824462472

namespace A046657

/-- `round(A015614(n+2)/2)` -/
def P4910228081824462472.Spec : Prop :=
  ∀ n, P4910228081824462472.a n = A046657 (n + 2)

end A046657

/-!
# A046658: Triangle related to A001700 and A000302 (powers of 4).

The programs for A046658, there is no canonical definition to state claims against.
-/

/-! ## A046658.P16292941263368969358

`2*A046521(n)-A046527(n)`
-/

namespace A046658.P16292941263368969358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046521 n - A046527 n

end

end A046658.P16292941263368969358

/-! ## A046658.P15078957215751106874

`A004277(A046521(n))-A046527(n)`
-/

namespace A046658.P15078957215751106874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046521 n).toNat - A046527 n

end

end A046658.P15078957215751106874

/-!
# A046659: Numbers whose sum of divisors and sum of cubes of divisors are relatively prime.

The programs for A046659, there is no canonical definition to state claims against.
-/

/-! ## A046659.P16491450579167922898

`∩[A046683(n+1), A155570(n+1)]`
-/

namespace A046659.P16491450579167922898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P16491450579167922898

/-! ## A046659.P5778486109119548580

`∩[A005241(n+1), A046683(n+1)]`
-/

namespace A046659.P5778486109119548580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P5778486109119548580

/-! ## A046659.P5812962084001906793

`∩[A034706(n+1), A046683(n+1)]`
-/

namespace A046659.P5812962084001906793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P5812962084001906793

/-! ## A046659.P2296032108964670721

`∩[A046683(n+1), A155566(n+1)]`
-/

namespace A046659.P2296032108964670721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P2296032108964670721

/-! ## A046659.P3192924795299142631

`∩[A046683(n+1), A256173(n+1)]`
-/

namespace A046659.P3192924795299142631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P3192924795299142631

/-! ## A046659.P9324411520809362372

`∩[A046683(n+1), A140612(n+1)]`
-/

namespace A046659.P9324411520809362372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P9324411520809362372

/-! ## A046659.P4020834263452525893

`∩[A046683(n+1), A155567(n+1)]`
-/

namespace A046659.P4020834263452525893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P4020834263452525893

/-! ## A046659.P587682049609827078

`∩[A046683(n+1), A067801(n+1)]`
-/

namespace A046659.P587682049609827078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P587682049609827078

/-! ## A046659.P15331992600757233960

`∩[A046683(n+1), A155563(n+1)]`
-/

namespace A046659.P15331992600757233960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P15331992600757233960

/-! ## A046659.P17918938060140116698

`∩[A046683(n+1), A155569(n+1)]`
-/

namespace A046659.P17918938060140116698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P17918938060140116698

/-! ## A046659.P5247399988224126877

`∩[A046683(n+1), A155568(n+1)]`
-/

namespace A046659.P5247399988224126877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P5247399988224126877

/-! ## A046659.P4654967204013739421

`∩[A046683(n+1), A328223(n+1)]`
-/

namespace A046659.P4654967204013739421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P4654967204013739421

/-! ## A046659.P18429565245999154917

`∩[A046683(n+1), A155565(n+1)]`
-/

namespace A046659.P18429565245999154917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P18429565245999154917

/-! ## A046659.P13765771862048817581

`∩[A046683(n+1), A334832(n+1)]`
-/

namespace A046659.P13765771862048817581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P13765771862048817581

/-! ## A046659.P3876296481386406652

`∩[A046683(n+1), A066213(n+1)]`
-/

namespace A046659.P3876296481386406652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046659.P3876296481386406652

/-!
# A046660: Excess of n = number of prime divisors (with multiplicity) - number of prime divisors (without multiplicity).

The programs for A046660, the canonical program `A046660.P3614759855976580945` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046660 has offset 1).

The definition of A046660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046660.P9809800693018007801

`A001222(A003557(n+1))`
-/

namespace A046660.P9809800693018007801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1)).toNat

end

end A046660.P9809800693018007801

namespace A046660

/-- `A001222(A003557(n+1))` -/
def P9809800693018007801.Spec : Prop :=
  ∀ n, P9809800693018007801.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P3614759855976580945

`A001222(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A046660

/-- `A001222(n+1)-A001221(n+1)` -/
def P3614759855976580945.Spec : Prop :=
  ∀ n, P3614759855976580945.a n = A046660 (n + 1)

theorem P3614759855976580945.correct : P3614759855976580945.Spec := by
  intro n
  simp only [A046660, Nat.add_sub_cancel]

end A046660

/-! ## A046660.P1785556007550337681

`A275812(n+1)-A056170(n+1)`
-/

namespace A046660.P1785556007550337681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (n + 1) - A056170 (n + 1)

end

end A046660.P1785556007550337681

namespace A046660

/-- `A275812(n+1)-A056170(n+1)` -/
def P1785556007550337681.Spec : Prop :=
  ∀ n, P1785556007550337681.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P7264132424078217826

`∑{e}[n+1, #-1]`
-/

namespace A046660.P7264132424078217826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A046660.P7264132424078217826

namespace A046660

/-- `∑{e}[n+1, #-1]` -/
def P7264132424078217826.Spec : Prop :=
  ∀ n, P7264132424078217826.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P13017687423308156313

`log2(∏{e}[n+1, 2^(#-1)])`
-/

namespace A046660.P13017687423308156313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ ((Nat.factorization (f1 n) p : ℤ) - 1 : ℤ) : ℚ) : ℝ)

end

end A046660.P13017687423308156313

namespace A046660

/-- `log2(∏{e}[n+1, 2^(#-1)])` -/
def P13017687423308156313.Spec : Prop :=
  ∀ n, P13017687423308156313.a n = (A046660 (n + 1) : ℝ)

end A046660

/-! ## A046660.P13877848712855810292

`∑{p}[n+1, val(n+1, #)-1]`
-/

namespace A046660.P13877848712855810292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation (n + 1) p : ℤ) - 1)

end

end A046660.P13877848712855810292

namespace A046660

/-- `∑{p}[n+1, val(n+1, #)-1]` -/
def P13877848712855810292.Spec : Prop :=
  ∀ n, P13877848712855810292.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P1451566575014651250

`∑{e}[n+1, #+n]%(n+1)`
-/

namespace A046660.P1451566575014651250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n)) % (n + 1)

end

end A046660.P1451566575014651250

namespace A046660

/-- `∑{e}[n+1, #+n]%(n+1)` -/
def P1451566575014651250.Spec : Prop :=
  ∀ n, (P1451566575014651250.a n : ℤ) = A046660 (n + 1)

end A046660

/-! ## A046660.P12731548522105529671

`∑{p}[n+1, val((n+1)/#, #)]`
-/

namespace A046660.P12731548522105529671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat p

end

end A046660.P12731548522105529671

namespace A046660

/-- `∑{p}[n+1, val((n+1)/#, #)]` -/
def P12731548522105529671.Spec : Prop :=
  ∀ n, (P12731548522105529671.a n : ℤ) = A046660 (n + 1)

end A046660

/-! ## A046660.P13248465973118176590

`abs(∑{e}[2*n-(n-1), 1-#])`
-/

namespace A046660.P13248465973118176590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ))|

end

end A046660.P13248465973118176590

namespace A046660

/-- `abs(∑{e}[2*n-(n-1), 1-#])` -/
def P13248465973118176590.Spec : Prop :=
  ∀ n, P13248465973118176590.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P11801640452783027363

`-∑{e}[2*n-(n-1), 1-#]`
-/

namespace A046660.P11801640452783027363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ)))

end

end A046660.P11801640452783027363

namespace A046660

/-- `-∑{e}[2*n-(n-1), 1-#]` -/
def P11801640452783027363.Spec : Prop :=
  ∀ n, P11801640452783027363.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P13296972830955228862

`log2(A162510(n+1))`
-/

namespace A046660.P13296972830955228862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A162510 (n + 1) : ℝ)

end

end A046660.P13296972830955228862

namespace A046660

/-- `log2(A162510(n+1))` -/
def P13296972830955228862.Spec : Prop :=
  ∀ n, P13296972830955228862.a n = (A046660 (n + 1) : ℝ)

end A046660

/-! ## A046660.P6375298500132441114

`log2(abs(A162512(n+1)))`
-/

namespace A046660.P6375298500132441114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A162512 (n + 1)| : ℝ)

end

end A046660.P6375298500132441114

namespace A046660

/-- `log2(abs(A162512(n+1)))` -/
def P6375298500132441114.Spec : Prop :=
  ∀ n, P6375298500132441114.a n = (A046660 (n + 1) : ℝ)

end A046660

/-! ## A046660.P6249721721175085059

`∑{d}[n+1, A268340(#)]`
-/

namespace A046660.P6249721721175085059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268340 d

end

end A046660.P6249721721175085059

namespace A046660

/-- `∑{d}[n+1, A268340(#)]` -/
def P6249721721175085059.Spec : Prop :=
  ∀ n, P6249721721175085059.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P11318713859165363622

`A001222(∏{e}[n+1, 2^(#-1)])`
-/

namespace A046660.P11318713859165363622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ ((Nat.factorization (f1 n) p : ℤ) - 1 : ℤ))).toNat

end

end A046660.P11318713859165363622

namespace A046660

/-- `A001222(∏{e}[n+1, 2^(#-1)])` -/
def P11318713859165363622.Spec : Prop :=
  ∀ n, P11318713859165363622.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P17596966151124429902

`A001222((n+1)/∏{p}[n+1, #])`
-/

namespace A046660.P17596966151124429902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A046660.P17596966151124429902

namespace A046660

/-- `A001222((n+1)/∏{p}[n+1, #])` -/
def P17596966151124429902.Spec : Prop :=
  ∀ n, P17596966151124429902.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P16304538008888307979

`A062977(A124508(n+1))`
-/

namespace A046660.P16304538008888307979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A124508 (n + 1)).toNat

end

end A046660.P16304538008888307979

namespace A046660

/-- `A062977(A124508(n+1))` -/
def P16304538008888307979.Spec : Prop :=
  ∀ n, P16304538008888307979.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P12561635643167196322

`A001222(A292589(n+1))`
-/

namespace A046660.P12561635643167196322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A292589 (n + 1)).toNat

end

end A046660.P12561635643167196322

namespace A046660

/-- `A001222(A292589(n+1))` -/
def P12561635643167196322.Spec : Prop :=
  ∀ n, P12561635643167196322.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P10854649524636369999

`A324192(A097272(n+1))`
-/

namespace A046660.P10854649524636369999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (A097272 (n + 1)).toNat

end

end A046660.P10854649524636369999

namespace A046660

/-- `A324192(A097272(n+1))` -/
def P10854649524636369999.Spec : Prop :=
  ∀ n, P10854649524636369999.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P8643423842080192445

`A001222(abs(A162512(n+1)))`
-/

namespace A046660.P8643423842080192445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A162512 (n + 1)|.toNat

end

end A046660.P8643423842080192445

namespace A046660

/-- `A001222(abs(A162512(n+1)))` -/
def P8643423842080192445.Spec : Prop :=
  ∀ n, P8643423842080192445.a n = A046660 (n + 1)

end A046660

/-! ## A046660.P9445306220533279111

`A066301(2*A162510(n+1))`
-/

namespace A046660.P9445306220533279111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (2 * A162510 (n + 1)).toNat

end

end A046660.P9445306220533279111

namespace A046660

/-- `A066301(2*A162510(n+1))` -/
def P9445306220533279111.Spec : Prop :=
  ∀ n, P9445306220533279111.a n = A046660 (n + 1)

end A046660

/-!
# A046661: Number of n-step self-avoiding walks on the square lattice with first step specified.

The programs for A046661, there is no canonical definition to state claims against.
-/

/-! ## A046661.P8436479833439433237

`A002900(n+1)/2`
-/

namespace A046661.P8436479833439433237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002900 (n + 1) : ℚ) / 2

end

end A046661.P8436479833439433237

/-! ## A046661.P13606961988618942550

`A001411(n+1)/4`
-/

namespace A046661.P13606961988618942550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001411 (n + 1) : ℚ) / 4

end

end A046661.P13606961988618942550

/-! ## A046661.P14425366559247838434

`Δ[∑[A001411(n)]/4]`
-/

namespace A046661.P14425366559247838434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046661.P14425366559247838434

/-! ## A046661.P17470125572655517775

`record[A002900(A263274(n))/2]`
-/

namespace A046661.P17470125572655517775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002900 (A263274 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046661.P17470125572655517775

/-! ## A046661.P8309315446948647619

`record[A001411(A123108(n))/4]`
-/

namespace A046661.P8309315446948647619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001411 (A123108 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046661.P8309315446948647619

/-! ## A046661.P12051714058822843044

`2^A190611(gcd(n, n+1))*A002900(n+1)`
-/

namespace A046661.P12051714058822843044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A190611 (Nat.gcd n (n + 1)) : ℤ) * (A002900 (n + 1) : ℚ)

end

end A046661.P12051714058822843044

/-!
# A046662: Sum of mistyped version of binomial coefficients.

The programs for A046662, the canonical program `A046662.P2974262677592978411` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046662 has offset 0).

The definition of A046662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046662.P2974262677592978411

`n²*a(n-1)-n*(n-1)*a(n-2)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046662

/-- `n²*a(n-1)-n*(n-1)*a(n-2)+1` -/
def P2974262677592978411.Spec : Prop :=
  ∀ n, P2974262677592978411.a n = A046662 n

theorem P2974262677592978411.correct : P2974262677592978411.Spec := by
  intro n
  simp only [A046662]

end A046662

/-! ## A046662.P3995334043389526072

`n*((1-n)*a(n-2)+n*a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A046662.P3995334043389526072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * ((1 - (n : ℤ)) * a (n - 2) + (n : ℤ) * a (n - 1)) + 1

end

end A046662.P3995334043389526072

namespace A046662

/-- `n*((1-n)*a(n-2)+n*a(n-1))+1` -/
def P3995334043389526072.Spec : Prop :=
  ∀ n, P3995334043389526072.a n = A046662 n

end A046662

/-! ## A046662.P9724596139663892181

`∑{d}[A002110(n), A329617(#)²]`
-/

namespace A046662.P9724596139663892181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329617 d ^ 2

end

end A046662.P9724596139663892181

namespace A046662

/-- `∑{d}[A002110(n), A329617(#)²]` -/
def P9724596139663892181.Spec : Prop :=
  ∀ n, P9724596139663892181.a n = A046662 n

end A046662

/-!
# A046665: Largest prime divisor of n - smallest prime divisor of n (a(1)=0).

The programs for A046665, there is no canonical definition to state claims against.
-/

/-! ## A046665.P1080562192971006030

`A006530(n+1)-A020639(n+1)`
-/

namespace A046665.P1080562192971006030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A020639 (n + 1)

end

end A046665.P1080562192971006030

/-! ## A046665.P975841429121368470

`A100574(∏{p}[n+1, #])`
-/

namespace A046665.P975841429121368470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A046665.P975841429121368470

/-! ## A046665.P10863828113077205262

`A100574(A007947(n+1))`
-/

namespace A046665.P10863828113077205262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (A007947 (n + 1)).toNat

end

end A046665.P10863828113077205262

/-! ## A046665.P6671925857338692232

`A049087(A088835(n+1))`
-/

namespace A046665.P6671925857338692232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A088835 (n + 1)).toNat

end

end A046665.P6671925857338692232

/-! ## A046665.P16349827571599894754

`A081303(n+1)+A020639(n+1)`
-/

namespace A046665.P16349827571599894754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081303 (n + 1) + A020639 (n + 1)

end

end A046665.P16349827571599894754

/-! ## A046665.P17580898119999201419

`A070777(n+1)-A057237(n+1)`
-/

namespace A046665.P17580898119999201419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 1) - A057237 (n + 1)

end

end A046665.P17580898119999201419

/-! ## A046665.P15095050045947858110

`A070229(n+1)-A061228(n+1)`
-/

namespace A046665.P15095050045947858110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - A061228 (n + 1)

end

end A046665.P15095050045947858110

/-! ## A046665.P4085570235096240131

`A085392(n+1)-A107286(n+1)`
-/

namespace A046665.P4085570235096240131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) - A107286 (n + 1)

end

end A046665.P4085570235096240131

/-! ## A046665.P16557466734112160975

`A073759(n+1)%A006530(n+1)`
-/

namespace A046665.P16557466734112160975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073759 (n + 1)) (A006530 (n + 1))

end

end A046665.P16557466734112160975

/-! ## A046665.P10485330071582942299

`A006530(n+1)-sqrt(A088377(n+1))`
-/

namespace A046665.P10485330071582942299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℝ) - Real.sqrt (A088377 (n + 1) : ℝ)

end

end A046665.P10485330071582942299

/-! ## A046665.P8281328449190102046

`2*A006530(n+1)-A074320(n+1)`
-/

namespace A046665.P8281328449190102046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1) - A074320 (n + 1)

end

end A046665.P8281328449190102046

/-! ## A046665.P4087226589125000888

`A074320(n+1)-2*A020639(n+1)`
-/

namespace A046665.P4087226589125000888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (n + 1) - 2 * A020639 (n + 1)

end

end A046665.P4087226589125000888

/-! ## A046665.P17384262669798818164

`A053585(∏{p}[n+1, #])-A020639(n+1)`
-/

namespace A046665.P17384262669798818164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n), p) - A020639 (n + 1)

end

end A046665.P17384262669798818164

/-! ## A046665.P12566198584706488047

`A006530(n+1)-∏{p}[A068794(n+1), #]`
-/

namespace A046665.P12566198584706488047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A046665.P12566198584706488047

/-! ## A046665.P12285311657427360393

`A006530(n+1)-(n+1)/gcd(n+1, A060681(n+1))`
-/

namespace A046665.P12285311657427360393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) - (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ)

end

end A046665.P12285311657427360393

/-! ## A046665.P1923072797409781146

`A006530(n+1)-A006530(A028233(n+1))`
-/

namespace A046665.P1923072797409781146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A006530 (A028233 (n + 1)).toNat

end

end A046665.P1923072797409781146

/-! ## A046665.P3487461911317455769

`A006530(n+1)-A006530(A068794(n+1))`
-/

namespace A046665.P3487461911317455769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A006530 (A068794 (n + 1)).toNat

end

end A046665.P3487461911317455769

/-! ## A046665.P3287417542433731968

`A006530(n+1)-A006530(A074828(n+1))`
-/

namespace A046665.P3287417542433731968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A006530 (A074828 (n + 1)).toNat

end

end A046665.P3287417542433731968

/-! ## A046665.P10825386264706309514

`A020639(A053585(n+1))-A020639(n+1)`
-/

namespace A046665.P10825386264706309514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (n + 1)).toNat - A020639 (n + 1)

end

end A046665.P10825386264706309514

/-! ## A046665.P12578170227767274426

`A074320(A006530(n+1))-A074320(n+1)`
-/

namespace A046665.P12578170227767274426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (A006530 (n + 1)).toNat - A074320 (n + 1)

end

end A046665.P12578170227767274426

/-!
# A046666: a(n) = n - (smallest prime dividing n).

The programs for A046666, there is no canonical definition to state claims against.
-/

/-! ## A046666.P977647153724462194

`n+2-A020639(n+2)`
-/

namespace A046666.P977647153724462194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A020639 (n + 2)

end

end A046666.P977647153724462194

/-! ## A046666.P3725397762151013902

`2*A046667(n+2)`
-/

namespace A046666.P3725397762151013902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046667 (n + 2)

end

end A046666.P3725397762151013902

/-! ## A046666.P14152259540211419293

`2*(A175126(n+2)-1)`
-/

namespace A046666.P14152259540211419293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A175126 (n + 2) - 1)

end

end A046666.P14152259540211419293

/-! ## A046666.P13471077000000583273

`1-A057237(n+2)+n`
-/

namespace A046666.P13471077000000583273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057237 (n + 2) + (n : ℤ)

end

end A046666.P13471077000000583273

/-! ## A046666.P9342739124486026199

`2*n+3-A087349(n+1)`
-/

namespace A046666.P9342739124486026199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A087349 (n + 1)

end

end A046666.P9342739124486026199

/-! ## A046666.P17551818175406854305

`∑[Δ[-(A020639(n+1)+1)]+1]`
-/

namespace A046666.P17551818175406854305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A020639 (n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046666.P17551818175406854305

/-! ## A046666.P3393716337562209910

`A005843(A046667(n+2))`
-/

namespace A046666.P3393716337562209910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A046667 (n + 2)).toNat

end

end A046666.P3393716337562209910

/-! ## A046666.P17674550113176562208

`A005843(A175126(n+2)-1)`
-/

namespace A046666.P17674550113176562208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A175126 (n + 2) - 1).toNat

end

end A046666.P17674550113176562208

/-! ## A046666.P9923814278525624126

`A237588(A020639(n+2))+n`
-/

namespace A046666.P9923814278525624126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (A020639 (n + 2)).toNat + (n : ℤ)

end

end A046666.P9923814278525624126

/-! ## A046666.P17135211305740019437

`A062545(n)%A087349(n+1)`
-/

namespace A046666.P17135211305740019437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062545 n) (A087349 (n + 1))

end

end A046666.P17135211305740019437

/-! ## A046666.P9318681758484024250

`A326146(n+2)+A033879(n+2)`
-/

namespace A046666.P9318681758484024250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (n + 2) + A033879 (n + 2)

end

end A046666.P9318681758484024250

/-! ## A046666.P2211278791301549597

`n+2-A006530(A074828(n+2))`
-/

namespace A046666.P2211278791301549597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A074828 (n + 2)).toNat

end

end A046666.P2211278791301549597

/-! ## A046666.P12723398964163199774

`A020639(n+2)*A089196(n+1)`
-/

namespace A046666.P12723398964163199774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A089196 (n + 1)

end

end A046666.P12723398964163199774

/-! ## A046666.P17339922135894860220

`A166250(n+2)-A064916(n+2)`
-/

namespace A046666.P17339922135894860220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166250 (n + 2) - A064916 (n + 2)

end

end A046666.P17339922135894860220

/-! ## A046666.P13136901625523317204

`A144396(n+1)%A087349(n+1)`
-/

namespace A046666.P13136901625523317204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A087349 (n + 1))

end

end A046666.P13136901625523317204

/-! ## A046666.P4850478814321838821

`n+2-sqrt(A088377(n+2))`
-/

namespace A046666.P4850478814321838821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) - Real.sqrt (A088377 (n + 2) : ℝ)

end

end A046666.P4850478814321838821

/-! ## A046666.P10729705113836298833

`n-A040976(A055396(n+2))`
-/

namespace A046666.P10729705113836298833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A040976 (A055396 (n + 2)).toNat

end

end A046666.P10729705113836298833

/-! ## A046666.P231305619203054395

`n+2-A006530(A028233(n+2))`
-/

namespace A046666.P231305619203054395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A028233 (n + 2)).toNat

end

end A046666.P231305619203054395

/-!
# A046667: a(n) = A046666(n)/2.

The programs for A046667, there is no canonical definition to state claims against.
-/

/-! ## A046667.P10821974378571257444

`A046666(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046667.P10821974378571257444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046666 (n + 2) : ℚ) / 2

end

end A046667.P10821974378571257444

/-! ## A046667.P16982766210844203004

`A175126(n+2)-1`
-/

namespace A046667.P16982766210844203004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (n + 2) - 1

end

end A046667.P16982766210844203004

/-! ## A046667.P433175641305394901

`(n-A020639(n+2))/2+1`
-/

namespace A046667.P433175641305394901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A020639 (n + 2) : ℚ) / 2 + 1

end

end A046667.P433175641305394901

/-! ## A046667.P10492483300166180355

`(n+1-A057237(n+2))/2`
-/

namespace A046667.P10492483300166180355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A057237 (n + 2) : ℚ) / 2

end

end A046667.P10492483300166180355

/-! ## A046667.P16282531777530190788

`A001281(A046666(n+2))`
-/

namespace A046667.P16282531777530190788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A046666 (n + 2)).toNat

end

end A046667.P16282531777530190788

/-! ## A046667.P5025935914795460864

`A089196(A046666(n+2)+1)`
-/

namespace A046667.P5025935914795460864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (A046666 (n + 2) + 1).toNat

end

end A046667.P5025935914795460864

/-! ## A046667.P13586745810925002565

`A004526(n+2-A020639(n+2))`
-/

namespace A046667.P13586745810925002565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 2 : ℤ) - A020639 (n + 2)).toNat

end

end A046667.P13586745810925002565

/-! ## A046667.P16349003415038062316

`A006370(n+2-A020639(n+2))`
-/

namespace A046667.P16349003415038062316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((n + 2 : ℤ) - A020639 (n + 2)).toNat

end

end A046667.P16349003415038062316

/-! ## A046667.P10934158510600477689

`A014682(n+2-A020639(n+2))`
-/

namespace A046667.P10934158510600477689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 2 : ℤ) - A020639 (n + 2)).toNat

end

end A046667.P10934158510600477689

/-! ## A046667.P9209331876713997265

`A026741(n+2-A020639(n+2))`
-/

namespace A046667.P9209331876713997265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) - A020639 (n + 2)).toNat

end

end A046667.P9209331876713997265

/-! ## A046667.P5785006733835922932

`A064680(n+2-A020639(n+2))`
-/

namespace A046667.P5785006733835922932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((n + 2 : ℤ) - A020639 (n + 2)).toNat

end

end A046667.P5785006733835922932

/-! ## A046667.P15421451371861071116

`A078898(n+2-A020639(n+2))`
-/

namespace A046667.P15421451371861071116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((n + 2 : ℤ) - A020639 (n + 2)).toNat

end

end A046667.P15421451371861071116

/-! ## A046667.P3839530952617888652

`A110654(n+2-A020639(n+2))`
-/

namespace A046667.P3839530952617888652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 2 : ℤ) - A020639 (n + 2)).toNat

end

end A046667.P3839530952617888652

/-! ## A046667.P12163533858661501873

`(A144396(n+1)-A087349(n+1))/2`
-/

namespace A046667.P12163533858661501873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144396 (n + 1) - A087349 (n + 1) : ℚ) / 2

end

end A046667.P12163533858661501873

/-! ## A046667.P16514545529700675597

`(A166250(n+2)-A064916(n+2))/2`
-/

namespace A046667.P16514545529700675597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166250 (n + 2) - A064916 (n + 2) : ℚ) / 2

end

end A046667.P16514545529700675597

/-! ## A046667.P5465713949894176268

`A008619(n)-A055034(A020639(n+2))`
-/

namespace A046667.P5465713949894176268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A055034 (A020639 (n + 2)).toNat

end

end A046667.P5465713949894176268

/-!
# A046668: Numbers m such that partition function p(m) divides m!.

The programs for A046668, there is no canonical definition to state claims against.
-/

/-! ## A046668.P4194057687761560572

`lt[A192885(n), 1]`
-/

namespace A046668.P4194057687761560572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192885 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046668.P4194057687761560572

/-! ## A046668.P4222747735818055742

`lt[A071963(n), n+1]`
-/

namespace A046668.P4222747735818055742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046668.P4222747735818055742

/-! ## A046668.P12971554111386657126

`eq[A000007(n), A397552(n)]`
-/

namespace A046668.P12971554111386657126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046668.P12971554111386657126

/-! ## A046668.P1618482746437191861

`eq[A000038(n), A397552(n)]`
-/

namespace A046668.P1618482746437191861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046668.P1618482746437191861

/-! ## A046668.P9692646739512666093

`eq[A014034(n), A397552(n)]`
-/

namespace A046668.P9692646739512666093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046668.P9692646739512666093

/-!
# A046669: Partial sums of A020639.

The programs for A046669, there is no canonical definition to state claims against.
-/

/-! ## A046669.P15983163477569148833

`A088821(n+1)+1`
-/

namespace A046669.P15983163477569148833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088821 (n + 1) + 1

end

end A046669.P15983163477569148833

/-! ## A046669.P13852766999076208670

`∑[A020639(n+1)]`
-/

namespace A046669.P13852766999076208670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P13852766999076208670

/-! ## A046669.P11165926330847793158

`∑[sqrt(A088377(n+1))]`
-/

namespace A046669.P11165926330847793158
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P11165926330847793158

/-! ## A046669.P14930177337873868385

`∑[A057237(n+1)]+n`
-/

namespace A046669.P14930177337873868385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A046669.P14930177337873868385

/-! ## A046669.P6810961646555126084

`∑[A028233(∏{p}[n+1, #])]`
-/

namespace A046669.P6810961646555126084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P6810961646555126084

/-! ## A046669.P9777960642471970469

`∑[A061228(n+1)-(n+1)]`
-/

namespace A046669.P9777960642471970469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P9777960642471970469

/-! ## A046669.P549527296557615791

`∑[(n+1)/A032742(n+1)]`
-/

namespace A046669.P549527296557615791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P549527296557615791

/-! ## A046669.P3384015178720648288

`∑[A285109(n+1)/(n+1)]`
-/

namespace A046669.P3384015178720648288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P3384015178720648288

/-! ## A046669.P248529334902755835

`∑[A159475(n+1)-n]-n`
-/

namespace A046669.P248529334902755835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A046669.P248529334902755835

/-! ## A046669.P10125763538703588758

`∑[(n+1)/gcd(n+1, A060681(n+1))]`
-/

namespace A046669.P10125763538703588758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P10125763538703588758

/-! ## A046669.P14741421968872976502

`A020639(2*n+1-n)+a(n-1)` with `a(0)=1`
-/

namespace A046669.P14741421968872976502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (2 * n + 1 - n) + a (n - 1)

end

end A046669.P14741421968872976502

/-! ## A046669.P17050925557031123186

`∑[A006530(A028233(n+1))]`
-/

namespace A046669.P17050925557031123186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P17050925557031123186

/-! ## A046669.P13931270529000959642

`∑[A006530(A068794(n+1))]`
-/

namespace A046669.P13931270529000959642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P13931270529000959642

/-! ## A046669.P11988980660510559322

`∑[A006530(A074828(n+1))]`
-/

namespace A046669.P11988980660510559322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P11988980660510559322

/-! ## A046669.P2828893866419936006

`∑[A079068(A117367(n+1))]`
-/

namespace A046669.P2828893866419936006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A117367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P2828893866419936006

/-! ## A046669.P9694683292403908132

`∑[A284694(A007947(n+1))]`
-/

namespace A046669.P9694683292403908132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P9694683292403908132

/-! ## A046669.P5903933134982646411

`∑[A006530(A304181(n+1))]`
-/

namespace A046669.P5903933134982646411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304181 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P5903933134982646411

/-! ## A046669.P8555822758947353746

`∑[A014673(2*(n+1))]`
-/

namespace A046669.P8555822758947353746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046669.P8555822758947353746

/-!
# A046670: Partial sums of A006530.

The programs for A046670, the canonical program `A046670.P10223319622505229549` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046670 has offset 1).

The definition of A046670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046670.P10223319622505229549

`∑[A006530(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A046670

/-- `∑[A006530(n+1)]` -/
def P10223319622505229549.Spec : Prop :=
  ∀ n, P10223319622505229549.a n = A046670 (n + 1)

theorem P10223319622505229549.correct : P10223319622505229549.Spec := by
  intro n
  simp only [A046670, Nat.add_sub_cancel]

end A046670

/-! ## A046670.P16366034587715024706

`A088822(n+1)+1`
-/

namespace A046670.P16366034587715024706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088822 (n + 1) + 1

end

end A046670.P16366034587715024706

namespace A046670

/-- `A088822(n+1)+1` -/
def P16366034587715024706.Spec : Prop :=
  ∀ n, P16366034587715024706.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P3772030031948500904

`∑[A111089(n+1)]-1`
-/

namespace A046670.P3772030031948500904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A046670.P3772030031948500904

namespace A046670

/-- `∑[A111089(n+1)]-1` -/
def P3772030031948500904.Spec : Prop :=
  ∀ n, P3772030031948500904.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P851410449692285104

`∑[A070777(n+1)]+n`
-/

namespace A046670.P851410449692285104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A046670.P851410449692285104

namespace A046670

/-- `∑[A070777(n+1)]+n` -/
def P851410449692285104.Spec : Prop :=
  ∀ n, P851410449692285104.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P15499942175421892777

`∑[A053585(∏{p}[n+1, #])]`
-/

namespace A046670.P15499942175421892777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P15499942175421892777

namespace A046670

/-- `∑[A053585(∏{p}[n+1, #])]` -/
def P15499942175421892777.Spec : Prop :=
  ∀ n, P15499942175421892777.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P4436198125745801638

`∑[A070229(n+1)-(n+1)]`
-/

namespace A046670.P4436198125745801638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P4436198125745801638

namespace A046670

/-- `∑[A070229(n+1)-(n+1)]` -/
def P4436198125745801638.Spec : Prop :=
  ∀ n, P4436198125745801638.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P10051352141908469275

`∑[(n+1)/A052126(n+1)]`
-/

namespace A046670.P10051352141908469275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P10051352141908469275

namespace A046670

/-- `∑[(n+1)/A052126(n+1)]` -/
def P10051352141908469275.Spec : Prop :=
  ∀ n, P10051352141908469275.a n = (A046670 (n + 1) : ℚ)

end A046670

/-! ## A046670.P16841327273828684733

`∑[A253560(n+1)/(n+1)]`
-/

namespace A046670.P16841327273828684733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P16841327273828684733

namespace A046670

/-- `∑[A253560(n+1)/(n+1)]` -/
def P16841327273828684733.Spec : Prop :=
  ∀ n, P16841327273828684733.a n = (A046670 (n + 1) : ℚ)

end A046670

/-! ## A046670.P4761954959030980826

`∑[(n+1)²/A342768(n+1)]`
-/

namespace A046670.P4761954959030980826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A342768 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P4761954959030980826

namespace A046670

/-- `∑[(n+1)²/A342768(n+1)]` -/
def P4761954959030980826.Spec : Prop :=
  ∀ n, P4761954959030980826.a n = (A046670 (n + 1) : ℚ)

end A046670

/-! ## A046670.P13795547623844361224

`A006530(2*(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A046670.P13795547623844361224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (2 * (n + 1)) + a (n - 1)

end

end A046670.P13795547623844361224

namespace A046670

/-- `A006530(2*(n+1))+a(n-1)` -/
def P13795547623844361224.Spec : Prop :=
  ∀ n, P13795547623844361224.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P5924834762870937861

`∑[A006530(2*(2*n-(n-1)))]-1`
-/

namespace A046670.P5924834762870937861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * ((2 * n : ℤ) - ((n : ℤ) - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A046670.P5924834762870937861

namespace A046670

/-- `∑[A006530(2*(2*n-(n-1)))]-1` -/
def P5924834762870937861.Spec : Prop :=
  ∀ n, P5924834762870937861.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P9703226701714480383

`floor(A006530(n+2+n)+a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A046670.P9703226701714480383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (n + 2 + n) + a (n - 1)

end

end A046670.P9703226701714480383

namespace A046670

/-- `floor(A006530(n+2+n)+a(n-1))` -/
def P9703226701714480383.Spec : Prop :=
  ∀ n, P9703226701714480383.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P16722560963889419848

`∑[A002034(A007947(n+1))]`
-/

namespace A046670.P16722560963889419848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P16722560963889419848

namespace A046670

/-- `∑[A002034(A007947(n+1))]` -/
def P16722560963889419848.Spec : Prop :=
  ∀ n, P16722560963889419848.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P15238601018391249851

`∑[A020639(A053585(n+1))]`
-/

namespace A046670.P15238601018391249851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P15238601018391249851

namespace A046670

/-- `∑[A020639(A053585(n+1))]` -/
def P15238601018391249851.Spec : Prop :=
  ∀ n, P15238601018391249851.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P6954209058848551338

`∑[A002034(A088835(n+1))]`
-/

namespace A046670.P6954209058848551338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A088835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P6954209058848551338

namespace A046670

/-- `∑[A002034(A088835(n+1))]` -/
def P6954209058848551338.Spec : Prop :=
  ∀ n, P6954209058848551338.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P13399412956303775444

`∑[A014963(A323129(n+1))]`
-/

namespace A046670.P13399412956303775444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A323129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P13399412956303775444

namespace A046670

/-- `∑[A014963(A323129(n+1))]` -/
def P13399412956303775444.Spec : Prop :=
  ∀ n, P13399412956303775444.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P14436367756436417955

`∑[A020639(A345941(n+1))]`
-/

namespace A046670.P14436367756436417955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P14436367756436417955

namespace A046670

/-- `∑[A020639(A345941(n+1))]` -/
def P14436367756436417955.Spec : Prop :=
  ∀ n, P14436367756436417955.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P4940849495631493998

`∑[A318884(n+1)-A318886(n+1)]`
-/

namespace A046670.P4940849495631493998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A318886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P4940849495631493998

namespace A046670

/-- `∑[A318884(n+1)-A318886(n+1)]` -/
def P4940849495631493998.Spec : Prop :=
  ∀ n, P4940849495631493998.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P17562609800658241142

`∑[A085392(2*(n+1))]`
-/

namespace A046670.P17562609800658241142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P17562609800658241142

namespace A046670

/-- `∑[A085392(2*(n+1))]` -/
def P17562609800658241142.Spec : Prop :=
  ∀ n, P17562609800658241142.a n = A046670 (n + 1)

end A046670

/-! ## A046670.P6873948837802003877

`∑[A020639(A298268(n+1))]`
-/

namespace A046670.P6873948837802003877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046670.P6873948837802003877

namespace A046670

/-- `∑[A020639(A298268(n+1))]` -/
def P6873948837802003877.Spec : Prop :=
  ∀ n, P6873948837802003877.a n = A046670 (n + 1)

end A046670

/-!
# A046672: Expansion of 1/(1-2*x-3*x^2+2*x^3).

The programs for A046672, the canonical program `A046672.P6292427835853316728` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046672 has offset 0).

The definition of A046672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^2+2x^3))` (program `A046672.P6292427835853316728`, by `A046672.P6292427835853316728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046672.P6292427835853316728

`ogf(1/(1-2x-3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046672

/-- `ogf(1/(1-2x-3x^2+2x^3))` -/
def P6292427835853316728.Spec : Prop :=
  ∀ n, P6292427835853316728.a n = A046672 n

theorem P6292427835853316728.correct : P6292427835853316728.Spec := by
  intro n
  simp only [A046672]

end A046672

/-! ## A046672.P10537606057819695466

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A046672.P10537606057819695466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3)

end

end A046672.P10537606057819695466

namespace A046672

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P10537606057819695466.Spec : Prop :=
  ∀ n, P10537606057819695466.a n = A046672 n

end A046672

/-! ## A046672.P1102818629784856760

`∑[A054854(n)]`
-/

namespace A046672.P1102818629784856760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046672.P1102818629784856760

namespace A046672

/-- `∑[A054854(n)]` -/
def P1102818629784856760.Spec : Prop :=
  ∀ n, P1102818629784856760.a n = A046672 n

end A046672

/-! ## A046672.P11331332481395188928

`∑[A230893(n+2)/2]`
-/

namespace A046672.P11331332481395188928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230893 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046672.P11331332481395188928

namespace A046672

/-- `∑[A230893(n+2)/2]` -/
def P11331332481395188928.Spec : Prop :=
  ∀ n, P11331332481395188928.a n = (A046672 n : ℚ)

end A046672

/-! ## A046672.P14056142898844501693

`A101197(n)-a(n-1)` with `a(0)=1`
-/

namespace A046672.P14056142898844501693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101197 n - a (n - 1)

end

end A046672.P14056142898844501693

namespace A046672

/-- `A101197(n)-a(n-1)` -/
def P14056142898844501693.Spec : Prop :=
  ∀ n, P14056142898844501693.a n = A046672 n

end A046672

/-! ## A046672.P2994954784285479383

`A228501(n+1)-A054854(n)`
-/

namespace A046672.P2994954784285479383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228501 (n + 1) - A054854 n

end

end A046672.P2994954784285479383

namespace A046672

/-- `A228501(n+1)-A054854(n)` -/
def P2994954784285479383.Spec : Prop :=
  ∀ n, P2994954784285479383.a n = A046672 n

end A046672

/-! ## A046672.P799367140454493983

`(A101197(n)+A054854(n))/2`
-/

namespace A046672.P799367140454493983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101197 n + A054854 n : ℚ) / 2

end

end A046672.P799367140454493983

namespace A046672

/-- `(A101197(n)+A054854(n))/2` -/
def P799367140454493983.Spec : Prop :=
  ∀ n, P799367140454493983.a n = (A046672 n : ℚ)

end A046672

/-! ## A046672.P6779804884108294263

`A054854(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A046672.P6779804884108294263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054854 n + a (A023443 n).toNat

end

end A046672.P6779804884108294263

namespace A046672

/-- `A054854(n)+a(A023443(n))` -/
def P6779804884108294263.Spec : Prop :=
  ∀ n, P6779804884108294263.a n = A046672 n

end A046672

/-! ## A046672.P16864862472136716403

`∑[A101197(n)-∑[A230893(n+1)]]`
-/

namespace A046672.P16864862472136716403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230893 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101197 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046672.P16864862472136716403

namespace A046672

/-- `∑[A101197(n)-∑[A230893(n+1)]]` -/
def P16864862472136716403.Spec : Prop :=
  ∀ n, P16864862472136716403.a n = A046672 n

end A046672

/-!
# A046673: a(n) = (2n)!*Sum_{i=1..n} 1/i.

The programs for A046673, there is no canonical definition to state claims against.
-/

/-! ## A046673.P16054766290403101709

`2*A046674(n+1)`
-/

namespace A046673.P16054766290403101709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046674 (n + 1)

end

end A046673.P16054766290403101709

/-! ## A046673.P16110539700171026409

`A101609(2*(n+1))`
-/

namespace A046673.P16110539700171026409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101609 (2 * (n + 1))

end

end A046673.P16110539700171026409

/-! ## A046673.P3723322425416345471

`Δ[2*∑[A092691(2*n)]]`
-/

namespace A046673.P3723322425416345471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046673.P3723322425416345471

/-! ## A046673.P476990673845800586

`2*A092692(A103517(n))`
-/

namespace A046673.P476990673845800586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092692 (A103517 n).toNat

end

end A046673.P476990673845800586

/-! ## A046673.P785515090939852054

`record[2*A092692(A005131(n))]`
-/

namespace A046673.P785515090939852054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092692 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046673.P785515090939852054

/-!
# A046674: a(n) = A046673(n)/2.

The programs for A046674, there is no canonical definition to state claims against.
-/

/-! ## A046674.P15915571419797017046

`A046673(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046674.P15915571419797017046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046673 (n + 1) : ℚ) / 2

end

end A046674.P15915571419797017046

/-! ## A046674.P384789182988892545

`A092691(2*(n+1))`
-/

namespace A046674.P384789182988892545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 (2 * (n + 1))

end

end A046674.P384789182988892545

/-! ## A046674.P16522149057248247938

`A092692(2*(n+1))`
-/

namespace A046674.P16522149057248247938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092692 (2 * (n + 1))

end

end A046674.P16522149057248247938

/-! ## A046674.P14305939717452670959

`A101609(2*(n+1))/2`
-/

namespace A046674.P14305939717452670959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101609 (2 * (n + 1)) : ℚ) / 2

end

end A046674.P14305939717452670959

/-! ## A046674.P9824741343717124939

`∏[n+1]*A058607(n+1)`
-/

namespace A046674.P9824741343717124939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A058607 (n + 1)

end

end A046674.P9824741343717124939

/-!
# A046675: Expansion of Product_{i>0} (1-x^{p_i}), where p_i are the primes.

The programs for A046675, there is no canonical definition to state claims against.
-/

/-! ## A046675.P10318121278278544690

`A184171(n)-A184172(n)`
-/

namespace A046675.P10318121278278544690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n - A184172 n

end

end A046675.P10318121278278544690

/-! ## A046675.P3206793161190098422

`∑[A298602(n)]`
-/

namespace A046675.P3206793161190098422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046675.P3206793161190098422

/-! ## A046675.P14632741558224745579

`2*A184171(n)-A000586(n)`
-/

namespace A046675.P14632741558224745579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184171 n - A000586 n

end

end A046675.P14632741558224745579

/-! ## A046675.P1556059951315231623

`A000586(n)-2*A184172(n)`
-/

namespace A046675.P1556059951315231623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - 2 * A184172 n

end

end A046675.P1556059951315231623

/-! ## A046675.P12240411476766889852

`A184171(n)-A024937(A004442(n+1))`
-/

namespace A046675.P12240411476766889852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n - A024937 (A004442 (n + 1)).toNat

end

end A046675.P12240411476766889852

/-! ## A046675.P2701568634269255523

`A184171(n)-A184171(xor(1, A014681(n)))`
-/

namespace A046675.P2701568634269255523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n - A184171 (Int.xor 1 (A014681 n)).toNat

end

end A046675.P2701568634269255523

/-! ## A046675.P7047631777896815598

`A024937(A014681(n+1))-A184172(n)`
-/

namespace A046675.P7047631777896815598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A014681 (n + 1)).toNat - A184172 n

end

end A046675.P7047631777896815598

/-! ## A046675.P18406099049932286191

`A339383(n+1)-(A184172(n+1)+A184172(n))`
-/

namespace A046675.P18406099049932286191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 (n + 1) - (A184172 (n + 1) + A184172 n)

end

end A046675.P18406099049932286191

/-! ## A046675.P13816461267716337074

`∑[A339382(n)-A339383(n)]`
-/

namespace A046675.P13816461267716337074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 n - A339383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046675.P13816461267716337074

/-! ## A046675.P16348229611141797144

`A184171(n+1)+A184171(n)-A339382(n+1)`
-/

namespace A046675.P16348229611141797144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (n + 1) + (A184171 n - A339382 (n + 1))

end

end A046675.P16348229611141797144

/-! ## A046675.P5225151382265425040

`(A024939(n)-A024937(n))/(-2)^n*A000079(n)`
-/

namespace A046675.P5225151382265425040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024939 n - A024937 n : ℚ) / ((-2) ^ n : ℚ) * (A000079 n : ℚ)

end

end A046675.P5225151382265425040

/-! ## A046675.P13493799662440601156

`A000586(n)-A005843(A184172(n))`
-/

namespace A046675.P13493799662440601156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A005843 (A184172 n).toNat

end

end A046675.P13493799662440601156

/-!
# A046676: Expansion of 1 + Sum_{k>=1} x^(p_1+p_2+...+p_k)/((1-x)*(1-x^2)*(1-x^3)*...*(1-x^k)) (where p_i are the primes).

The programs for A046676, there is no canonical definition to state claims against.
-/

/-! ## A046676.P15813820823004053264

`A192541(n)+A000607(n)`
-/

namespace A046676.P15813820823004053264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192541 n + A000607 n

end

end A046676.P15813820823004053264

/-! ## A046676.P17178614131693371132

`A000586(n)+A331849(n)+A192541(n)`
-/

namespace A046676.P17178614131693371132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n + (A331849 n + A192541 n)

end

end A046676.P17178614131693371132

/-! ## A046676.P16738569240833852869

`A184198(n)+A192541(n)+A184199(n)`
-/

namespace A046676.P16738569240833852869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n + (A192541 n + A184199 n)

end

end A046676.P16738569240833852869

/-! ## A046676.P13353417148304631635

`A000607(n)-A057428(n)*A192541(n)`
-/

namespace A046676.P13353417148304631635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A057428 n * A192541 n

end

end A046676.P13353417148304631635

/-! ## A046676.P2218869692185437946

`A192541(n)+A048165(n)+2*A184199(n)`
-/

namespace A046676.P2218869692185437946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192541 n + (A048165 n + 2 * A184199 n)

end

end A046676.P2218869692185437946

/-!
# A046677: Number of primes p of the form p = 4m^2+1 for n^2 < m < (n+1)^2.

The programs for A046677, there is no canonical definition to state claims against.
-/

/-! ## A046677.P2479330000486004020

`Δ[A071868(2*(n+1)²)]`
-/

namespace A046677.P2479330000486004020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071868 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046677.P2479330000486004020

/-!
# A046678: Number of divisors of n and sum of divisors of n are relatively prime.

The programs for A046678, there is no canonical definition to state claims against.
-/

/-! ## A046678.P9157968674962977449

`eq[1, A009205(n+1)]+1`
-/

namespace A046678.P9157968674962977449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046678.P9157968674962977449

/-! ## A046678.P11834930977497597918

`eq[1, A087801(n+1)]+1`
-/

namespace A046678.P11834930977497597918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046678.P11834930977497597918

/-! ## A046678.P12652205635025182207

`record[A057020(n+1)-A001065(n+1)]`
-/

namespace A046678.P12652205635025182207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046678.P12652205635025182207

/-! ## A046678.P17300859118010028172

`record[A000027(n+1)/A009205(n+1)]`
-/

namespace A046678.P17300859118010028172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046678.P17300859118010028172

/-! ## A046678.P10874851106641275802

`record[A235872(n+1)/A009205(n+1)]`
-/

namespace A046678.P10874851106641275802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235872 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046678.P10874851106641275802

/-! ## A046678.P2008566393413693282

`eq[A000005(n+1), A057021(n+1)]+1`
-/

namespace A046678.P2008566393413693282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046678.P2008566393413693282

/-!
# A046679: Numbers k such that the number of divisors of k and sum of squares of divisors of k are relatively prime.

The programs for A046679, there is no canonical definition to state claims against.
-/

/-! ## A046679.P9316377648007524697

`eq[A000005(n+1), A158298(n+1)]+1`
-/

namespace A046679.P9316377648007524697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046679.P9316377648007524697

/-! ## A046679.P9504037232121928009

`eq[A001157(n+1), A158299(n+1)]+1`
-/

namespace A046679.P9504037232121928009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046679.P9504037232121928009

/-! ## A046679.P14746578382488352070

`eq[1, gcd(A001157(n+1), A062011(n+1))]+1`
-/

namespace A046679.P14746578382488352070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001157 (n + 1)) (A062011 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046679.P14746578382488352070

/-! ## A046679.P15338967248410925501

`∩[A325621(n+1), A037462(n)]`
-/

namespace A046679.P15338967248410925501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046679.P15338967248410925501

/-! ## A046679.P11313789974049166517

`∩[A349151(n+1), A037456(n)]`
-/

namespace A046679.P11313789974049166517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046679.P11313789974049166517

/-!
# A046680: Numbers k such that the number of divisors of k and sum of cubes of divisors of k are relatively prime.

The programs for A046680, there is no canonical definition to state claims against.
-/

/-! ## A046680.P1696674772330673378

`A046678(A031980(n+1)%A094144(n+1))`
-/

namespace A046680.P1696674772330673378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (Int.tmod (A031980 (n + 1)) (A094144 (n + 1))).toNat

end

end A046680.P1696674772330673378

/-! ## A046680.P5465178221759956515

`record[A046678(n+1)%A179386(n+1)]`
-/

namespace A046680.P5465178221759956515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046678 (n + 1)) (A179386 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046680.P5465178221759956515

/-! ## A046680.P15317091533337847399

`record[record[(n+1)/A087801(n+1)]%A179386(n+1)]`
-/

namespace A046680.P15317091533337847399
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A087801 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))) (A179386 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046680.P15317091533337847399

/-! ## A046680.P8748609841533867615

`A046678(A316502(n+1)%A120375(n+1))`
-/

namespace A046680.P8748609841533867615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (Int.tmod (A316502 (n + 1)) (A120375 (n + 1))).toNat

end

end A046680.P8748609841533867615

/-! ## A046680.P7001919156576119349

`A046678(A107037(n+1))-A185234(A185274(n))`
-/

namespace A046680.P7001919156576119349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (A107037 (n + 1)).toNat - A185234 (A185274 n).toNat

end

end A046680.P7001919156576119349

/-!
# A046681: Numbers k such that the number of divisors of k and sum of 4th powers of divisors of k are relatively prime.

The programs for A046681, there is no canonical definition to state claims against.
-/

/-! ## A046681.P7459926696615321020

`A046679(lt[A007476(n+2), A001008(n+1)])`
-/

namespace A046681.P7459926696615321020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046679 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046681.P7459926696615321020

/-! ## A046681.P172127566342141557

`∩[A046679(n+1), A093110(n)]`
-/

namespace A046681.P172127566342141557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046681.P172127566342141557

/-! ## A046681.P10215952739879130222

`∩[A046679(n+1), A358330(n+1)]`
-/

namespace A046681.P10215952739879130222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046681.P10215952739879130222

/-!
# A046682: Number of cycle types of conjugacy classes of all even permutations of n elements.

The programs for A046682, there is no canonical definition to state claims against.
-/

/-! ## A046682.P8336244052390332379

`A000041(n)-A000701(n)`
-/

namespace A046682.P8336244052390332379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000701 n

end

end A046682.P8336244052390332379

/-! ## A046682.P13637748286073462698

`(A000041(n)+A000700(n))/2`
-/

namespace A046682.P13637748286073462698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + A000700 n : ℚ) / 2

end

end A046682.P13637748286073462698

/-! ## A046682.P5823328407610173744

`A000701(n)+A000700(n)`
-/

namespace A046682.P5823328407610173744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A000700 n

end

end A046682.P5823328407610173744

/-! ## A046682.P6873814012670852301

`A000701(n)+abs(A081362(n))`
-/

namespace A046682.P6873814012670852301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + |A081362 n|

end

end A046682.P6873814012670852301

/-! ## A046682.P3326196855893801496

`A027187(n)+A027193(n)-A000701(n)`
-/

namespace A046682.P3326196855893801496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A000701 n)

end

end A046682.P3326196855893801496

/-! ## A046682.P17292106125549741900

`∑[A002865(n)]-A000701(n)`
-/

namespace A046682.P17292106125549741900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000701 n

end

end A046682.P17292106125549741900

/-! ## A046682.P9278635643158190354

`A000065(n)+1-A000701(n)`
-/

namespace A046682.P9278635643158190354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A000701 n)

end

end A046682.P9278635643158190354

/-! ## A046682.P16401997359089257739

`A000700(n)+A330644(n)/2`
-/

namespace A046682.P16401997359089257739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n : ℚ) + (A330644 n : ℚ) / 2

end

end A046682.P16401997359089257739

/-! ## A046682.P8482772666607817513

`A000041(n)-A330644(n)/2`
-/

namespace A046682.P8482772666607817513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) - (A330644 n : ℚ) / 2

end

end A046682.P8482772666607817513

/-! ## A046682.P16900742586961437355

`(A000041(n)+abs(A081362(n)))/2`
-/

namespace A046682.P16900742586961437355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + |A081362 n| : ℚ) / 2

end

end A046682.P16900742586961437355

/-! ## A046682.P17573520173468227401

`(A000700(n)+∑[A002865(n)])/2`
-/

namespace A046682.P17573520173468227401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000700 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A046682.P17573520173468227401

/-! ## A046682.P1763366543884669296

`A000700(n)-(A000701(n)-A330644(n))`
-/

namespace A046682.P1763366543884669296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - (A000701 n - A330644 n)

end

end A046682.P1763366543884669296

/-! ## A046682.P16740586587288228064

`A045931(n)+A171967(n)-A000701(n)`
-/

namespace A046682.P16740586587288228064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n + (A171967 n - A000701 n)

end

end A046682.P16740586587288228064

/-! ## A046682.P6373652463830414366

`A035363(2*n)-A000701(n)`
-/

namespace A046682.P6373652463830414366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A000701 n

end

end A046682.P6373652463830414366

/-! ## A046682.P4224681865481610341

`A119620(2*n)-A000701(n)`
-/

namespace A046682.P4224681865481610341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A000701 n

end

end A046682.P4224681865481610341

/-! ## A046682.P806549682486034314

`sqrt(A001255(n))-A000701(n)`
-/

namespace A046682.P806549682486034314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A000701 n : ℝ)

end

end A046682.P806549682486034314

/-! ## A046682.P8347993577331378873

`(A000700(n)+sqrt(A001255(n)))/2`
-/

namespace A046682.P8347993577331378873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000700 n : ℝ) + Real.sqrt (A001255 n : ℝ)) / 2

end

end A046682.P8347993577331378873

/-! ## A046682.P9181844533672855875

`A100824(2*n)-A000701(n)`
-/

namespace A046682.P9181844533672855875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A000701 n

end

end A046682.P9181844533672855875

/-! ## A046682.P417376191049861643

`(A194543(A000217(n))+A000700(n))/2`
-/

namespace A046682.P417376191049861643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194543 (A000217 n).toNat + A000700 n : ℚ) / 2

end

end A046682.P417376191049861643

/-!
# A046683: Numbers k such that the sum of squares of divisors of k and sum of cubes of divisors of k are relatively prime.

The programs for A046683, there is no canonical definition to state claims against.
-/

/-! ## A046683.P903808733004612411

`eq[1, A073810(n+1)]+1`
-/

namespace A046683.P903808733004612411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046683.P903808733004612411

/-! ## A046683.P4017534990555582482

`record[root(A000027(n+1), A073810(n+1))]`
-/

namespace A046683.P4017534990555582482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A073810 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046683.P4017534990555582482

/-! ## A046683.P10748046143705375685

`record[root(A235872(n+1), A073810(n+1))]`
-/

namespace A046683.P10748046143705375685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235872 (n + 1) : ℝ) ^ (1 / (A073810 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046683.P10748046143705375685

/-! ## A046683.P347320414406399369

`eq[A057427(n), A073810(A028310(n))]`
-/

namespace A046683.P347320414406399369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073810 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046683.P347320414406399369

/-! ## A046683.P6754366349043542121

`eq[A001157(n+1), A091260(n+1)]+1`
-/

namespace A046683.P6754366349043542121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046683.P6754366349043542121

/-!
# A046684: Numbers k such that k and sum of squares of divisors of k are relatively prime.

The programs for A046684, the canonical program `A046684.P10571284585019546125` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046684 has offset 1).

The definition of A046684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046684.P8557804569847407137

`eq[1, A082069(n+1)]+1`
-/

namespace A046684.P8557804569847407137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046684.P8557804569847407137

namespace A046684

/-- `eq[1, A082069(n+1)]+1` -/
def P8557804569847407137.Spec : Prop :=
  ∀ n, (P8557804569847407137.a n : ℤ) = A046684 (n + 1)

end A046684

/-! ## A046684.P10571284585019546125

`eq[1, A179930(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046684

/-- `eq[1, A179930(n+1)]+1` -/
def P10571284585019546125.Spec : Prop :=
  ∀ n, (P10571284585019546125.a n : ℤ) = A046684 (n + 1)

theorem P10571284585019546125.correct : P10571284585019546125.Spec := by
  intro n
  simp only [A046684, Nat.add_sub_cancel]

end A046684

/-! ## A046684.P3088761386585558642

`record[A000027(n+1)/A179930(n+1)]`
-/

namespace A046684.P3088761386585558642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A179930 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046684.P3088761386585558642

namespace A046684

/-- `record[A000027(n+1)/A179930(n+1)]` -/
def P3088761386585558642.Spec : Prop :=
  ∀ n, P3088761386585558642.a n = (A046684 (n + 1) : ℚ)

end A046684

/-! ## A046684.P5849424837448033769

`record[sqrt(A017668(n+1))]`
-/

namespace A046684.P5849424837448033769
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017668 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046684.P5849424837448033769

namespace A046684

/-- `record[sqrt(A017668(n+1))]` -/
def P5849424837448033769.Spec : Prop :=
  ∀ n, P5849424837448033769.a n = (A046684 (n + 1) : ℝ)

end A046684

/-! ## A046684.P14089888315281935792

`record[(n+1)/A082063(n+1)]`
-/

namespace A046684.P14089888315281935792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082063 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046684.P14089888315281935792

namespace A046684

/-- `record[(n+1)/A082063(n+1)]` -/
def P14089888315281935792.Spec : Prop :=
  ∀ n, P14089888315281935792.a n = (A046684 (n + 1) : ℚ)

end A046684

/-! ## A046684.P6517282451592459982

`eq[1, gcd(n+1, A001157(n+1))]+1`
-/

namespace A046684.P6517282451592459982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001157 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046684.P6517282451592459982

namespace A046684

/-- `eq[1, gcd(n+1, A001157(n+1))]+1` -/
def P6517282451592459982.Spec : Prop :=
  ∀ n, (P6517282451592459982.a n : ℤ) = A046684 (n + 1)

end A046684

/-! ## A046684.P5385560927243599479

`sqrt(A017668(eq[(n+1)², A017668(n+1)]+1))`
-/

namespace A046684.P5385560927243599479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017668 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℝ)

end

end A046684.P5385560927243599479

namespace A046684

/-- `sqrt(A017668(eq[(n+1)², A017668(n+1)]+1))` -/
def P5385560927243599479.Spec : Prop :=
  ∀ n, P5385560927243599479.a n = (A046684 (n + 1) : ℝ)

end A046684

/-! ## A046684.P13813608375083860201

`eq[n, A028310(n)*A179930(A028310(n))]`
-/

namespace A046684.P13813608375083860201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A179930 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046684.P13813608375083860201

namespace A046684

/-- `eq[n, A028310(n)*A179930(A028310(n))]` -/
def P13813608375083860201.Spec : Prop :=
  ∀ n, (P13813608375083860201.a n : ℤ) = A046684 (n + 1)

end A046684

/-!
# A046686: Numbers k such that k and sum of cubes of divisors of k are relatively prime.

The programs for A046686, the canonical program `A046686.P14140459493553428395` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046686 has offset 1).

The definition of A046686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046686.P15022351440546325101

`record[root(A017670(n+1), 3)]`
-/

namespace A046686.P15022351440546325101
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017670 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046686.P15022351440546325101

namespace A046686

/-- `record[root(A017670(n+1), 3)]` -/
def P15022351440546325101.Spec : Prop :=
  ∀ n, P15022351440546325101.a n = (A046686 (n + 1) : ℝ)

end A046686

/-! ## A046686.P14140459493553428395

`eq[1, gcd(n+1, A001158(n+1))]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046686

/-- `eq[1, gcd(n+1, A001158(n+1))]+1` -/
def P14140459493553428395.Spec : Prop :=
  ∀ n, (P14140459493553428395.a n : ℤ) = A046686 (n + 1)

theorem P14140459493553428395.correct : P14140459493553428395.Spec := by
  intro n
  simp only [A046686, Nat.add_sub_cancel]

end A046686

/-! ## A046686.P16091900887516663938

`record[A017670(n+1)/A000027(n+1)²]`
-/

namespace A046686.P16091900887516663938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017670 (n + 1) : ℚ) / (A000027 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046686.P16091900887516663938

namespace A046686

/-- `record[A017670(n+1)/A000027(n+1)²]` -/
def P16091900887516663938.Spec : Prop :=
  ∀ n, P16091900887516663938.a n = (A046686 (n + 1) : ℚ)

end A046686

/-! ## A046686.P12563569209664618947

`record[A017670(n+1)/A001478(n+1)²]`
-/

namespace A046686.P12563569209664618947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017670 (n + 1) : ℚ) / (A001478 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046686.P12563569209664618947

namespace A046686

/-- `record[A017670(n+1)/A001478(n+1)²]` -/
def P12563569209664618947.Spec : Prop :=
  ∀ n, P12563569209664618947.a n = (A046686 (n + 1) : ℚ)

end A046686

/-! ## A046686.P10003548495658709584

`eq[1, gcd(n, ∑{d}[n, A000578(#)])]`
-/

namespace A046686.P10003548495658709584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (∑ d ∈ Nat.divisors (f3 n), A000578 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046686.P10003548495658709584

namespace A046686

/-- `eq[1, gcd(n, ∑{d}[n, A000578(#)])]` -/
def P10003548495658709584.Spec : Prop :=
  ∀ n, (P10003548495658709584.a n : ℤ) = A046686 (n + 1)

end A046686

/-!
# A046687: Numbers k such that k and sum of 4th powers of divisors of k are relatively prime.

The programs for A046687, the canonical program `A046687.P16814962762525960109` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046687 has offset 1).

The definition of A046687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046687.P11690794737146181296

`record[floor(root(A017672(n+1), 4))]`
-/

namespace A046687.P11690794737146181296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017672 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046687.P11690794737146181296

namespace A046687

/-- `record[floor(root(A017672(n+1), 4))]` -/
def P11690794737146181296.Spec : Prop :=
  ∀ n, P11690794737146181296.a n = A046687 (n + 1)

end A046687

/-! ## A046687.P16814962762525960109

`eq[1, gcd(n+1, A279363(n+1))]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046687

/-- `eq[1, gcd(n+1, A279363(n+1))]+1` -/
def P16814962762525960109.Spec : Prop :=
  ∀ n, (P16814962762525960109.a n : ℤ) = A046687 (n + 1)

theorem P16814962762525960109.correct : P16814962762525960109.Spec := by
  intro n
  simp only [A046687, Nat.add_sub_cancel]

end A046687

/-! ## A046687.P5853824247912937881

`eq[n²², A017672(A028310(n))]`
-/

namespace A046687.P5853824247912937881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017672 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046687.P5853824247912937881

namespace A046687

/-- `eq[n²², A017672(A028310(n))]` -/
def P5853824247912937881.Spec : Prop :=
  ∀ n, (P5853824247912937881.a n : ℤ) = A046687 (n + 1)

end A046687

/-! ## A046687.P16212977833335447531

`eq[A000583(n+1), A017672(n+1)]+1`
-/

namespace A046687.P16212977833335447531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046687.P16212977833335447531

namespace A046687

/-- `eq[A000583(n+1), A017672(n+1)]+1` -/
def P16212977833335447531.Spec : Prop :=
  ∀ n, (P16212977833335447531.a n : ℤ) = A046687 (n + 1)

end A046687

/-! ## A046687.P8010636982144282208

`eq[A001159(n+1), A017671(n+1)]+1`
-/

namespace A046687.P8010636982144282208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046687.P8010636982144282208

namespace A046687

/-- `eq[A001159(n+1), A017671(n+1)]+1` -/
def P8010636982144282208.Spec : Prop :=
  ∀ n, (P8010636982144282208.a n : ℤ) = A046687 (n + 1)

end A046687

/-! ## A046687.P8875700020758142173

`eq[A017671(n+1), A351307((n+1)²)]+1`
-/

namespace A046687.P8875700020758142173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046687.P8875700020758142173

namespace A046687

/-- `eq[A017671(n+1), A351307((n+1)²)]+1` -/
def P8875700020758142173.Spec : Prop :=
  ∀ n, (P8875700020758142173.a n : ℤ) = A046687 (n + 1)

end A046687

/-!
# A046688: Antidiagonals of square array in which k-th row (k>0) is an arithmetic progression of difference 2^(k-1).

The programs for A046688, the canonical program `A046688.P903510788573287376` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046688 has offset 0).

The definition of A046688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046688.P13103183917384086129

`(C(comp[∑[n]]-n, 2)-(n+1))*A140531(n)+1`
-/

namespace A046688.P13103183917384086129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A140531 n + 1

end

end A046688.P13103183917384086129

namespace A046688

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A140531(n)+1` -/
def P13103183917384086129.Spec : Prop :=
  ∀ n, P13103183917384086129.a n = A046688 n

end A046688

/-! ## A046688.P4283134959811521332

`A025581(n)*A140531(n)+1`
-/

namespace A046688.P4283134959811521332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A140531 n + 1

end

end A046688.P4283134959811521332

namespace A046688

/-- `A025581(n)*A140531(n)+1` -/
def P4283134959811521332.Spec : Prop :=
  ∀ n, P4283134959811521332.a n = A046688 n

end A046688

/-! ## A046688.P18415686551164993201

`log2(A130321(n))*A140531(n)+1`
-/

namespace A046688.P18415686551164993201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) * (A140531 n : ℝ) + 1

end

end A046688.P18415686551164993201

namespace A046688

/-- `log2(A130321(n))*A140531(n)+1` -/
def P18415686551164993201.Spec : Prop :=
  ∀ n, P18415686551164993201.a n = (A046688 n : ℝ)

end A046688

/-! ## A046688.P11859697164650748144

`ceil(A049513(n)/A130270(n+1))`
-/

namespace A046688.P11859697164650748144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049513 n : ℚ) / (A130270 (n + 1) : ℚ)⌉

end

end A046688.P11859697164650748144

namespace A046688

/-- `ceil(A049513(n)/A130270(n+1))` -/
def P11859697164650748144.Spec : Prop :=
  ∀ n, P11859697164650748144.a n = A046688 n

end A046688

/-! ## A046688.P12925649732505711324

`ceil(A049513(n)/A144328(n+1))`
-/

namespace A046688.P12925649732505711324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049513 n : ℚ) / (A144328 (n + 1) : ℚ)⌉

end

end A046688.P12925649732505711324

namespace A046688

/-- `ceil(A049513(n)/A144328(n+1))` -/
def P12925649732505711324.Spec : Prop :=
  ∀ n, P12925649732505711324.a n = A046688 n

end A046688

/-! ## A046688.P903510788573287376

`floor(A059268(n)/2)*A025581(n)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046688

/-- `floor(A059268(n)/2)*A025581(n)+1` -/
def P903510788573287376.Spec : Prop :=
  ∀ n, P903510788573287376.a n = A046688 n

theorem P903510788573287376.correct : P903510788573287376.Spec := by
  intro n
  simp only [A046688]

end A046688

/-! ## A046688.P14083499261595942766

`log2(A057728(n+1))*A059268(n)/2+1`
-/

namespace A046688.P14083499261595942766
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057728 (n + 1) : ℝ) * (A059268 n : ℝ) / 2 + 1

end

end A046688.P14083499261595942766

namespace A046688

/-- `log2(A057728(n+1))*A059268(n)/2+1` -/
def P14083499261595942766.Spec : Prop :=
  ∀ n, P14083499261595942766.a n = (A046688 n : ℝ)

end A046688

/-! ## A046688.P8575107489545164624

`A025581(n)*A034008(A002260(n+1))+1`
-/

namespace A046688.P8575107489545164624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A034008 (A002260 (n + 1)).toNat + 1

end

end A046688.P8575107489545164624

namespace A046688

/-- `A025581(n)*A034008(A002260(n+1))+1` -/
def P8575107489545164624.Spec : Prop :=
  ∀ n, P8575107489545164624.a n = A046688 n

end A046688

/-! ## A046688.P6916491618156828370

`log2(A057728(n+1))*A000010(A059268(n))+1`
-/

namespace A046688.P6916491618156828370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057728 (n + 1) : ℝ) * (A000010 (A059268 n).toNat : ℝ) + 1

end

end A046688.P6916491618156828370

namespace A046688

/-- `log2(A057728(n+1))*A000010(A059268(n))+1` -/
def P6916491618156828370.Spec : Prop :=
  ∀ n, P6916491618156828370.a n = (A046688 n : ℝ)

end A046688

/-! ## A046688.P2145893122714300626

`A052938(log2(A057728(n+1))*A059268(n))`
-/

namespace A046688.P2145893122714300626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (SequenceMachineLib.roundAway (Real.logb 2 (A057728 (n + 1) : ℝ) * (A059268 n : ℝ))).toNat

end

end A046688.P2145893122714300626

namespace A046688

/-- `A052938(log2(A057728(n+1))*A059268(n))` -/
def P2145893122714300626.Spec : Prop :=
  ∀ n, P2145893122714300626.a n = A046688 n

end A046688

/-!
# A046691: a(n) = (n^2 + 5*n - 2)/2.

The programs for A046691, the canonical program `A046691.P5093212993074708013` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046691 has offset 0).

The definition of A046691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+5*n-2)/2` (program `A046691.P16306708747309539289`, by `A046691.P16306708747309539289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046691.P5093212993074708013

`a(n-1)+n+2` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046691

/-- `a(n-1)+n+2` -/
def P5093212993074708013.Spec : Prop :=
  ∀ n, P5093212993074708013.a n = A046691 n

theorem P5093212993074708013.correct : P5093212993074708013.Spec := by
  intro n
  simp only [A046691]

end A046691

/-! ## A046691.P16306708747309539289

`(n²+5*n-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046691.P16306708747309539289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 5 * n : ℤ) - 2 : ℚ) / 2

end

end A046691.P16306708747309539289

namespace A046691

/-- `(n²+5*n-2)/2` -/
def P16306708747309539289.Spec : Prop :=
  ∀ n, P16306708747309539289.a n = (A046691 n : ℚ)

theorem P16306708747309539289.correct : P16306708747309539289.Spec := by
  intro n
  induction n with
  | zero => simp [A046691, A046691.P16306708747309539289.a, A046691.P5093212993074708013.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A046691, Nat.add_sub_cancel, A046691.P16306708747309539289.a, A046691.P5093212993074708013.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A046691

/-! ## A046691.P16117591556272815040

`A000217(n+2)-4`
-/

namespace A046691.P16117591556272815040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - 4

end

end A046691.P16117591556272815040

namespace A046691

/-- `A000217(n+2)-4` -/
def P16117591556272815040.Spec : Prop :=
  ∀ n, P16117591556272815040.a n = A046691 n

end A046691

/-! ## A046691.P13934001038975714200

`ogf((1-5x+3x^2)/(-1+3x-3x^2+x^3))`
-/

namespace A046691.P13934001038975714200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5, -3] [1, -3, 3, -1] n

end

end A046691.P13934001038975714200

namespace A046691

/-- `ogf((1-5x+3x^2)/(-1+3x-3x^2+x^3))` -/
def P13934001038975714200.Spec : Prop :=
  ∀ n, P13934001038975714200.a n = A046691 n

end A046691

/-! ## A046691.P16945810500705045434

`xor(3-C(n+3, 2), -1)`
-/

namespace A046691.P16945810500705045434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 - (Nat.choose (n + 3) 2 : ℤ)) (-1)

end

end A046691.P16945810500705045434

namespace A046691

/-- `xor(3-C(n+3, 2), -1)` -/
def P16945810500705045434.Spec : Prop :=
  ∀ n, P16945810500705045434.a n = A046691 n

end A046691

/-! ## A046691.P2200392359297161976

`∑[n-(1-3*n)%3]`
-/

namespace A046691.P2200392359297161976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (1 - (3 * n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046691.P2200392359297161976

namespace A046691

/-- `∑[n-(1-3*n)%3]` -/
def P2200392359297161976.Spec : Prop :=
  ∀ n, P2200392359297161976.a n = A046691 n

end A046691

/-! ## A046691.P3738935087761390782

`Δ[C(n+3, 3)-4*n]`
-/

namespace A046691.P3738935087761390782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046691.P3738935087761390782

namespace A046691

/-- `Δ[C(n+3, 3)-4*n]` -/
def P3738935087761390782.Spec : Prop :=
  ∀ n, P3738935087761390782.a n = A046691 n

end A046691

/-! ## A046691.P3030538969028397588

`record[C(n, 2)-(2*n+1)]`
-/

namespace A046691.P3030538969028397588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046691.P3030538969028397588

namespace A046691

/-- `record[C(n, 2)-(2*n+1)]` -/
def P3030538969028397588.Spec : Prop :=
  ∀ n, P3030538969028397588.a n = A046691 n

end A046691

/-! ## A046691.P15322606251152127171

`record[C(n, 2)-1-2*n]`
-/

namespace A046691.P15322606251152127171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046691.P15322606251152127171

namespace A046691

/-- `record[C(n, 2)-1-2*n]` -/
def P15322606251152127171.Spec : Prop :=
  ∀ n, P15322606251152127171.a n = A046691 n

end A046691

/-! ## A046691.P11976318961601677312

`-(∑[xor(n+1, -1)]+3)`
-/

namespace A046691.P11976318961601677312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A046691.P11976318961601677312

namespace A046691

/-- `-(∑[xor(n+1, -1)]+3)` -/
def P11976318961601677312.Spec : Prop :=
  ∀ n, P11976318961601677312.a n = A046691 n

end A046691

/-! ## A046691.P14815768898527281773

`-(Δ[-C(n+3, 3)]+4)`
-/

namespace A046691.P14815768898527281773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 3) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + 4)

end

end A046691.P14815768898527281773

namespace A046691

/-- `-(Δ[-C(n+3, 3)]+4)` -/
def P14815768898527281773.Spec : Prop :=
  ∀ n, P14815768898527281773.a n = A046691 n

end A046691

/-! ## A046691.P16450109520062910115

`floor(C(n+2, 2)-ϕ+n)`
-/

namespace A046691.P16450109520062910115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℝ) - Real.goldenRatio + (n : ℝ)⌋

end

end A046691.P16450109520062910115

namespace A046691

/-- `floor(C(n+2, 2)-ϕ+n)` -/
def P16450109520062910115.Spec : Prop :=
  ∀ n, P16450109520062910115.a n = A046691 n

end A046691

/-! ## A046691.P9492825032762851057

`round(C(n+2, 2)-ϕ+n)`
-/

namespace A046691.P9492825032762851057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 : ℝ) - Real.goldenRatio + (n : ℝ))

end

end A046691.P9492825032762851057

namespace A046691

/-- `round(C(n+2, 2)-ϕ+n)` -/
def P9492825032762851057.Spec : Prop :=
  ∀ n, P9492825032762851057.a n = A046691 n

end A046691

/-! ## A046691.P6752226208213674483

`ceil(tan(2)+∑[n+1]+n)`
-/

namespace A046691.P6752226208213674483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ)⌉

end

end A046691.P6752226208213674483

namespace A046691

/-- `ceil(tan(2)+∑[n+1]+n)` -/
def P6752226208213674483.Spec : Prop :=
  ∀ n, P6752226208213674483.a n = A046691 n

end A046691

/-! ## A046691.P18236405233187795294

`round(tan(2)+∑[n+1]+n)`
-/

namespace A046691.P18236405233187795294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ))

end

end A046691.P18236405233187795294

namespace A046691

/-- `round(tan(2)+∑[n+1]+n)` -/
def P18236405233187795294.Spec : Prop :=
  ∀ n, P18236405233187795294.a n = A046691 n

end A046691

/-! ## A046691.P3160788850566518702

`2*(C(n+3, 2)/2-2)`
-/

namespace A046691.P3160788850566518702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (n + 3) 2 : ℚ) / 2 - 2)

end

end A046691.P3160788850566518702

namespace A046691

/-- `2*(C(n+3, 2)/2-2)` -/
def P3160788850566518702.Spec : Prop :=
  ∀ n, P3160788850566518702.a n = (A046691 n : ℚ)

end A046691

/-! ## A046691.P15278298871497640084

`∑[2*a(n-1)-n]` with `a(0)=-1, a(1)=3`
-/

namespace A046691.P15278298871497640084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3] fun n f1 =>
  2 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046691.P15278298871497640084

namespace A046691

/-- `∑[2*a(n-1)-n]` -/
def P15278298871497640084.Spec : Prop :=
  ∀ n, P15278298871497640084.a n = A046691 n

end A046691

/-! ## A046691.P7148500748091902497

`∑[floor(a(n-1)²/n)]` with `a(0)=-1, a(1)=3`
-/

namespace A046691.P7148500748091902497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046691.P7148500748091902497

namespace A046691

/-- `∑[floor(a(n-1)²/n)]` -/
def P7148500748091902497.Spec : Prop :=
  ∀ n, P7148500748091902497.a n = A046691 n

end A046691

/-! ## A046691.P16089041480117251800

`record[(n-2)*(n-3)/2-4]`
-/

namespace A046691.P16089041480117251800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) / 2) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046691.P16089041480117251800

namespace A046691

/-- `record[(n-2)*(n-3)/2-4]` -/
def P16089041480117251800.Spec : Prop :=
  ∀ n, P16089041480117251800.a n = (A046691 n : ℚ)

end A046691

/-! ## A046691.P13529620224878694201

`ceil(n-1+C(n+2, 2)-ϕ)`
-/

namespace A046691.P13529620224878694201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) + ((Nat.choose (n + 2) 2 : ℝ) - Real.goldenRatio)⌉

end

end A046691.P13529620224878694201

namespace A046691

/-- `ceil(n-1+C(n+2, 2)-ϕ)` -/
def P13529620224878694201.Spec : Prop :=
  ∀ n, P13529620224878694201.a n = A046691 n

end A046691

/-!
# A046692: Dirichlet inverse of sigma function (A000203).

The programs for A046692, the canonical program `A046692.P2122140602833396605` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046692 has offset 1).

The definition of A046692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046692.P2122140602833396605

`∑{d}[n+1, #*A327960((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046692

/-- `∑{d}[n+1, #*A327960((n+1)/#)]` -/
def P2122140602833396605.Spec : Prop :=
  ∀ n, P2122140602833396605.a n = A046692 (n + 1)

theorem P2122140602833396605.correct : P2122140602833396605.Spec := by
  intro n
  simp only [A046692, Nat.add_sub_cancel]

end A046692

/-! ## A046692.P6218208306061640536

`A323403(n+1)-A000203(n+1)`
-/

namespace A046692.P6218208306061640536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (n + 1) - A000203 (n + 1)

end

end A046692.P6218208306061640536

namespace A046692

/-- `A323403(n+1)-A000203(n+1)` -/
def P6218208306061640536.Spec : Prop :=
  ∀ n, P6218208306061640536.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P290233297002435685

`A378229(n+1)/A003961(n+1)`
-/

namespace A046692.P290233297002435685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378229 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)

end

end A046692.P290233297002435685

namespace A046692

/-- `A378229(n+1)/A003961(n+1)` -/
def P290233297002435685.Spec : Prop :=
  ∀ n, P290233297002435685.a n = (A046692 (n + 1) : ℚ)

end A046692

/-! ## A046692.P2950453407224442031

`∑{d}[n+1, A007427(#)*A023900((n+1)/#)]`
-/

namespace A046692.P2950453407224442031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P2950453407224442031

namespace A046692

/-- `∑{d}[n+1, A007427(#)*A023900((n+1)/#)]` -/
def P2950453407224442031.Spec : Prop :=
  ∀ n, P2950453407224442031.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P10181420092669170870

`∑{d}[n+1, A000056(#)*A053825((n+1)/#)]`
-/

namespace A046692.P10181420092669170870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A053825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P10181420092669170870

namespace A046692

/-- `∑{d}[n+1, A000056(#)*A053825((n+1)/#)]` -/
def P10181420092669170870.Spec : Prop :=
  ∀ n, P10181420092669170870.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P9531334060276509450

`∑{d}[n+1, A002618(#)*A053822((n+1)/#)]`
-/

namespace A046692.P9531334060276509450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P9531334060276509450

namespace A046692

/-- `∑{d}[n+1, A002618(#)*A053822((n+1)/#)]` -/
def P9531334060276509450.Spec : Prop :=
  ∀ n, P9531334060276509450.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P17926528164749732773

`∑{d}[n+1, A008683(#)*A055615((n+1)/#)]`
-/

namespace A046692.P17926528164749732773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P17926528164749732773

namespace A046692

/-- `∑{d}[n+1, A008683(#)*A055615((n+1)/#)]` -/
def P17926528164749732773.Spec : Prop :=
  ∀ n, P17926528164749732773.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P11412668874415589113

`∑{d}[n+1, A007428(#)*A130054((n+1)/#)]`
-/

namespace A046692.P11412668874415589113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P11412668874415589113

namespace A046692

/-- `∑{d}[n+1, A007428(#)*A130054((n+1)/#)]` -/
def P11412668874415589113.Spec : Prop :=
  ∀ n, P11412668874415589113.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P13471128838698114500

`∑{d}[n+1, A000290(#)*A328254((n+1)/#)]`
-/

namespace A046692.P13471128838698114500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P13471128838698114500

namespace A046692

/-- `∑{d}[n+1, A000290(#)*A328254((n+1)/#)]` -/
def P13471128838698114500.Spec : Prop :=
  ∀ n, P13471128838698114500.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P11089064077477470193

`∑{d}[n+1, A000010(#)*A328722((n+1)/#)]`
-/

namespace A046692.P11089064077477470193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P11089064077477470193

namespace A046692

/-- `∑{d}[n+1, A000010(#)*A328722((n+1)/#)]` -/
def P11089064077477470193.Spec : Prop :=
  ∀ n, P11089064077477470193.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P1739446018504935078

`∑{d}[n+1, A007432(#)*A328641((n+1)/#)]`
-/

namespace A046692.P1739446018504935078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P1739446018504935078

namespace A046692

/-- `∑{d}[n+1, A007432(#)*A328641((n+1)/#)]` -/
def P1739446018504935078.Spec : Prop :=
  ∀ n, P1739446018504935078.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P7268571070457366464

`∑{d}[n+1, A010052(#)*A347090((n+1)/#)]`
-/

namespace A046692.P7268571070457366464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P7268571070457366464

namespace A046692

/-- `∑{d}[n+1, A010052(#)*A347090((n+1)/#)]` -/
def P7268571070457366464.Spec : Prop :=
  ∀ n, P7268571070457366464.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P12495336187851030106

`∑{d}[n+1, A063445(#)*A334657((n+1)/#)]`
-/

namespace A046692.P12495336187851030106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P12495336187851030106

namespace A046692

/-- `∑{d}[n+1, A063445(#)*A334657((n+1)/#)]` -/
def P12495336187851030106.Spec : Prop :=
  ∀ n, P12495336187851030106.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P17826134031675244791

`∑{d}[n+1, A092673(#)*A349341((n+1)/#)]`
-/

namespace A046692.P17826134031675244791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P17826134031675244791

namespace A046692

/-- `∑{d}[n+1, A092673(#)*A349341((n+1)/#)]` -/
def P17826134031675244791.Spec : Prop :=
  ∀ n, P17826134031675244791.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P15115312446327901181

`∑{d}[n+1, A117212(#)*A327274((n+1)/#)]`
-/

namespace A046692.P15115312446327901181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P15115312446327901181

namespace A046692

/-- `∑{d}[n+1, A117212(#)*A327274((n+1)/#)]` -/
def P15115312446327901181.Spec : Prop :=
  ∀ n, P15115312446327901181.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P13693026271560730462

`∑{d}[n+1, A087003(#)*A359484((n+1)/#)]`
-/

namespace A046692.P13693026271560730462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P13693026271560730462

namespace A046692

/-- `∑{d}[n+1, A087003(#)*A359484((n+1)/#)]` -/
def P13693026271560730462.Spec : Prop :=
  ∀ n, P13693026271560730462.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P12369804261751527730

`∑{d}[n+1, A130107(#)*A347092((n+1)/#)]`
-/

namespace A046692.P12369804261751527730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P12369804261751527730

namespace A046692

/-- `∑{d}[n+1, A130107(#)*A347092((n+1)/#)]` -/
def P12369804261751527730.Spec : Prop :=
  ∀ n, P12369804261751527730.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P9916012951200255438

`∑{d}[n+1, A154955(#)*A326938((n+1)/#)]`
-/

namespace A046692.P9916012951200255438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P9916012951200255438

namespace A046692

/-- `∑{d}[n+1, A154955(#)*A326938((n+1)/#)]` -/
def P9916012951200255438.Spec : Prop :=
  ∀ n, P9916012951200255438.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P17525613240659301029

`∑{d}[n+1, A158522(#)*A328729((n+1)/#)]`
-/

namespace A046692.P17525613240659301029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P17525613240659301029

namespace A046692

/-- `∑{d}[n+1, A158522(#)*A328729((n+1)/#)]` -/
def P17525613240659301029.Spec : Prop :=
  ∀ n, P17525613240659301029.a n = A046692 (n + 1)

end A046692

/-! ## A046692.P17315957361942790326

`∑{d}[n+1, A174725(#)*A378217((n+1)/#)]`
-/

namespace A046692.P17315957361942790326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046692.P17315957361942790326

namespace A046692

/-- `∑{d}[n+1, A174725(#)*A378217((n+1)/#)]` -/
def P17315957361942790326.Spec : Prop :=
  ∀ n, P17315957361942790326.a n = A046692 (n + 1)

end A046692

/-!
# A046693: Size of smallest subset S of N={0,1,2,...,n} such that S-S=N, where S-S={abs(i-j) | i,j in S}.

The programs for A046693, there is no canonical definition to state claims against.
-/

/-! ## A046693.P5941308003132179915

`A103298(n)+1`
-/

namespace A046693.P5941308003132179915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n + 1

end

end A046693.P5941308003132179915

/-! ## A046693.P167615422025804923

`A175213(A103298(n)²)`
-/

namespace A046693.P167615422025804923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A103298 n ^ 2).toNat

end

end A046693.P167615422025804923

/-! ## A046693.P16719234045140102686

`A260056(A103298(n)²)`
-/

namespace A046693.P16719234045140102686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A103298 n ^ 2).toNat

end

end A046693.P16719234045140102686

/-! ## A046693.P13812551775061493017

`A008619(2*A103298(n))`
-/

namespace A046693.P13812551775061493017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A103298 n).toNat

end

end A046693.P13812551775061493017

/-! ## A046693.P1923586409607524934

`A027656(2*A103298(n))`
-/

namespace A046693.P1923586409607524934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A103298 n).toNat

end

end A046693.P1923586409607524934

/-! ## A046693.P1533785009176700252

`A028242(2*A103298(n))`
-/

namespace A046693.P1533785009176700252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A103298 n).toNat

end

end A046693.P1533785009176700252

/-! ## A046693.P4683668526019876241

`A052938(2*A103298(n))`
-/

namespace A046693.P4683668526019876241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A103298 n).toNat

end

end A046693.P4683668526019876241

/-! ## A046693.P8813518150874311268

`A080513(2*A103298(n))`
-/

namespace A046693.P8813518150874311268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A103298 n).toNat

end

end A046693.P8813518150874311268

/-! ## A046693.P8738632826830154002

`A008611(3*A103298(n))`
-/

namespace A046693.P8738632826830154002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A103298 n).toNat

end

end A046693.P8738632826830154002

/-! ## A046693.P2159123311776379653

`A008620(3*A103298(n))`
-/

namespace A046693.P2159123311776379653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A103298 n).toNat

end

end A046693.P2159123311776379653

/-! ## A046693.P210420377633377833

`A008621(4*A103298(n))`
-/

namespace A046693.P210420377633377833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A103298 n).toNat

end

end A046693.P210420377633377833

/-! ## A046693.P1641827585158130511

`A008612(6*A103298(n))`
-/

namespace A046693.P1641827585158130511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A103298 n).toNat

end

end A046693.P1641827585158130511

/-! ## A046693.P5435900404447102159

`A008651(30*A103298(n))`
-/

namespace A046693.P5435900404447102159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (30 * A103298 n).toNat

end

end A046693.P5435900404447102159

/-! ## A046693.P3318272014890969308

`1-A001057(2*A103298(n))`
-/

namespace A046693.P3318272014890969308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A103298 n).toNat

end

end A046693.P3318272014890969308

/-! ## A046693.P5914063812493337787

`A001057(or(1, 2*A103298(n)))`
-/

namespace A046693.P5914063812493337787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (2 * A103298 n)).toNat

end

end A046693.P5914063812493337787

/-! ## A046693.P14146772691404772106

`A001057(xor(1, 2*A103298(n)))`
-/

namespace A046693.P14146772691404772106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.xor 1 (2 * A103298 n)).toNat

end

end A046693.P14146772691404772106

/-! ## A046693.P18031951892787452850

`A000027(A103298(n)-or(n, -1))`
-/

namespace A046693.P18031951892787452850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A103298 n - Int.lor (n : ℤ) (-1)).toNat

end

end A046693.P18031951892787452850

/-! ## A046693.P15669789967802399071

`2-(A007318(C(2, n))-A103298(n))`
-/

namespace A046693.P15669789967802399071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A103298 n)

end

end A046693.P15669789967802399071

/-! ## A046693.P17631081338354265867

`∑{d}[A103298(n)-or(n, -1), A000010(#)]`
-/

namespace A046693.P17631081338354265867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n - Int.lor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A046693.P17631081338354265867

/-! ## A046693.P177561059615929501

`A103298(n)-or(n, -1)-A008683(9*or(1, 2*n))`
-/

namespace A046693.P177561059615929501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n - Int.lor (n : ℤ) (-1) - A008683 (9 * Nat.lor 1 (2 * n))

end

end A046693.P177561059615929501

/-!
# A046694: Ramanujan tau numbers mod 691 = sum of 11th power of divisors mod 691.

The programs for A046694, the canonical program `A046694.P13063374531925501038` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046694 has offset 1).

The definition of A046694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046694.P13063374531925501038

`A013959(n+1)%691`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046694

/-- `A013959(n+1)%691` -/
def P13063374531925501038.Spec : Prop :=
  ∀ n, P13063374531925501038.a n = A046694 (n + 1)

theorem P13063374531925501038.correct : P13063374531925501038.Spec := by
  intro n
  simp only [A046694, Nat.add_sub_cancel]

end A046694

/-! ## A046694.P7019122345201478668

`∑[abs(Δ[∑{d}[n, #^11]])]%691`
-/

namespace A046694.P7019122345201478668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d ^ 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 691

end

end A046694.P7019122345201478668

namespace A046694

/-- `∑[abs(Δ[∑{d}[n, #^11]])]%691` -/
def P7019122345201478668.Spec : Prop :=
  ∀ n, P7019122345201478668.a n = A046694 (n + 1)

end A046694

/-!
# A046695: Sprague-Grundy values for the game Couples-are-Forever (and for octal games .6, .601, .61, .611, .62, .621, .63, .631).

The programs for A046695, there is no canonical definition to state claims against.
-/

/-! ## A046695.P14608039745122073558

`∑{e}[A011782(n), A071433(#)]`
-/

namespace A046695.P14608039745122073558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A071433 (Nat.factorization (f1 n).natAbs p)

end

end A046695.P14608039745122073558

/-! ## A046695.P1592253109037064516

`A002188(eq[A034547(n+1), A237420(n)])`
-/

namespace A046695.P1592253109037064516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046695.P1592253109037064516

/-! ## A046695.P17983482765495715924

`A002188(lt[A049935(n+1), A279961(n)])`
-/

namespace A046695.P17983482765495715924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046695.P17983482765495715924

/-! ## A046695.P16335449368859241187

`A002188(lt[A227454(n+1), A067026(n+1)])`
-/

namespace A046695.P16335449368859241187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046695.P16335449368859241187

/-!
# A046696: Nim-value of 0 for Couples-are-Forever occurs for these heap sizes.

The programs for A046696, there is no canonical definition to state claims against.
-/

/-! ## A046696.P10090699430479540336

`A267194(n+1)+1`
-/

namespace A046696.P10090699430479540336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267194 (n + 1) + 1

end

end A046696.P10090699430479540336

/-! ## A046696.P16123771031969407472

`eq[0, A046695(n)]+1`
-/

namespace A046696.P16123771031969407472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046696.P16123771031969407472

/-! ## A046696.P6979416108166022562

`A141310(A267194(n+1))`
-/

namespace A046696.P6979416108166022562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A267194 (n + 1)).toNat

end

end A046696.P6979416108166022562

/-! ## A046696.P15562595789596320821

`record[gcd(A000027(n+1), A046695(n))]`
-/

namespace A046696.P15562595789596320821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A046695 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046696.P15562595789596320821

/-! ## A046696.P6345400672232735381

`lt[A046695(n), A001221(A151800(n))]+1`
-/

namespace A046696.P6345400672232735381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046696.P6345400672232735381

/-!
# A046697: Number of catacondensed simply-connected monopentapolyhexes (catafusenes).

The programs for A046697, there is no canonical definition to state claims against.
-/

/-! ## A046697.P11150720388313312903

`A038392(n+1)+A044046(n)`
-/

namespace A046697.P11150720388313312903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) + A044046 n

end

end A046697.P11150720388313312903

/-! ## A046697.P8809644702968856539

`A044048(n)-A044047(n)`
-/

namespace A046697.P8809644702968856539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044048 n - A044047 n

end

end A046697.P8809644702968856539

/-! ## A046697.P3249522377103466518

`A181768(n)+∑[A044046(n)]`
-/

namespace A046697.P3249522377103466518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046697.P3249522377103466518

/-! ## A046697.P9714254874641044349

`A045868(n)-∑[A045908(n)]`
-/

namespace A046697.P9714254874641044349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046697.P9714254874641044349

/-! ## A046697.P3452131989078563677

`Δ[∑[A044045(n)]-A181768(n)]`
-/

namespace A046697.P3452131989078563677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046697.P3452131989078563677

/-! ## A046697.P5975367397693548756

`A044045(n+1)-Δ[A181768(n)]`
-/

namespace A046697.P5975367397693548756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) - (f1 (n + 1) - f1 n)

end

end A046697.P5975367397693548756

/-! ## A046697.P14235292573594020683

`Δ[A044045(n)]-A030529(n+2)`
-/

namespace A046697.P14235292573594020683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A030529 (n + 2)

end

end A046697.P14235292573594020683

/-! ## A046697.P14026218130345741000

`A038392(n+2)-Δ[A181768(n)]`
-/

namespace A046697.P14026218130345741000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) - (f1 (n + 1) - f1 n)

end

end A046697.P14026218130345741000

/-! ## A046697.P8122313180557018044

`A055879(n+1)+A024311(n+1)`
-/

namespace A046697.P8122313180557018044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (n + 1) + A024311 (n + 1)

end

end A046697.P8122313180557018044

/-! ## A046697.P12335901341946528494

`A044046(n)+A044045(A028310(n))`
-/

namespace A046697.P12335901341946528494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 n + A044045 (A028310 n).toNat

end

end A046697.P12335901341946528494

/-! ## A046697.P13581362098256569821

`A044045(A028310(n)+1)-A002212(n)`
-/

namespace A046697.P13581362098256569821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (A028310 n + 1).toNat - A002212 n

end

end A046697.P13581362098256569821

/-! ## A046697.P706452839378122193

`A000007(n)+A044046(n)+A044045(n)`
-/

namespace A046697.P706452839378122193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A044046 n + A044045 n)

end

end A046697.P706452839378122193

/-! ## A046697.P6706367784164871183

`A044045(n+1)+A000007(n)-A002212(n)`
-/

namespace A046697.P6706367784164871183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) + (A000007 n - A002212 n)

end

end A046697.P6706367784164871183

/-! ## A046697.P9552078776448354693

`A038392(n+2)+A045868(n)-A002212(n+1)`
-/

namespace A046697.P9552078776448354693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) + (A045868 n - A002212 (n + 1))

end

end A046697.P9552078776448354693

/-!
# A046698: a(0) = 0, a(1) = 1, a(n) = a(a(n-1)) + a(a(n-2)) if n > 1.

The programs for A046698, the canonical program `A046698.P7385547556069971027` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046698 has offset 0).

The definition of A046698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A046698.P7385547556069971027`, by `A046698.P7385547556069971027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046698.P7385547556069971027

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046698

/-- `a(n-1)` -/
def P7385547556069971027.Spec : Prop :=
  ∀ n, (P7385547556069971027.a n : ℤ) = A046698 n

theorem P7385547556069971027.correct : P7385547556069971027.Spec := by
  intro n
  simp only [A046698]

end A046698

/-! ## A046698.P2377589415217908102

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046698.P2377589415217908102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 2] fun n a =>
  a (n - 2)

end

end A046698.P2377589415217908102

namespace A046698

/-- `a(n-2)` -/
def P2377589415217908102.Spec : Prop :=
  ∀ n, (P2377589415217908102.a n : ℤ) = A046698 n

end A046698

/-! ## A046698.P9019788629881825975

`1+a(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046698.P9019788629881825975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  1 + a (a (n - 1))

end

end A046698.P9019788629881825975

namespace A046698

/-- `1+a(a(n-1))` -/
def P9019788629881825975.Spec : Prop :=
  ∀ n, (P9019788629881825975.a n : ℤ) = A046698 n

end A046698

/-! ## A046698.P16215011140649265158

`1+a(a(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046698.P16215011140649265158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  1 + a (a (a (n - 1)))

end

end A046698.P16215011140649265158

namespace A046698

/-- `1+a(a(a(n-1)))` -/
def P16215011140649265158.Spec : Prop :=
  ∀ n, (P16215011140649265158.a n : ℤ) = A046698 n

end A046698

/-! ## A046698.P12138239371150468814

`1+a(a(a(a(n-1))))` with `a(0)=0, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046698.P12138239371150468814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  1 + a (a (a (a (n - 1))))

end

end A046698.P12138239371150468814

namespace A046698

/-- `1+a(a(a(a(n-1))))` -/
def P12138239371150468814.Spec : Prop :=
  ∀ n, (P12138239371150468814.a n : ℤ) = A046698 n

end A046698

/-! ## A046698.P5448304770090406625

`a(a(n-1))+a(a(n-2))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046698.P5448304770090406625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (a (n - 1)) + a (a (n - 2))

end

end A046698.P5448304770090406625

namespace A046698

/-- `a(a(n-1))+a(a(n-2))` -/
def P5448304770090406625.Spec : Prop :=
  ∀ n, (P5448304770090406625.a n : ℤ) = A046698 n

end A046698

/-!
# A046699: a(1) = a(2) = 1, a(n) = a(n - a(n-1)) + a(n-1 - a(n-2)) if n > 2.

The programs for A046699, the canonical program `A046699.P121068589245997773` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046699 has offset 1).

The definition of A046699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046699.P6712448678598353460

`∑[char[a(floor(n/2))+n]]` with `a(0)=0, a(1)=2`
-/

namespace A046699.P6712448678598353460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046699.P6712448678598353460

namespace A046699

/-- `∑[char[a(floor(n/2))+n]]` -/
def P6712448678598353460.Spec : Prop :=
  ∀ n, (P6712448678598353460.a n : ℤ) = A046699 (n + 1)

end A046699

/-! ## A046699.P4231810189250634959

`comp[∑[val(n+1, 2)+2]]-n+1`
-/

namespace A046699.P4231810189250634959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1

end

end A046699.P4231810189250634959

namespace A046699

/-- `comp[∑[val(n+1, 2)+2]]-n+1` -/
def P4231810189250634959.Spec : Prop :=
  ∀ n, P4231810189250634959.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P10649040174926480209

`∑[char[∑[val(2*(n+1), 2)]+1]]+1`
-/

namespace A046699.P10649040174926480209
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046699.P10649040174926480209

namespace A046699

/-- `∑[char[∑[val(2*(n+1), 2)]+1]]+1` -/
def P10649040174926480209.Spec : Prop :=
  ∀ n, (P10649040174926480209.a n : ℤ) = A046699 (n + 1)

end A046699

/-! ## A046699.P121068589245997773

`floor(a(n-a(n-1))+(a(n-1)+1)/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046699

/-- `floor(a(n-a(n-1))+(a(n-1)+1)/2)` -/
def P121068589245997773.Spec : Prop :=
  ∀ n, P121068589245997773.a n = A046699 (n + 1)

theorem P121068589245997773.correct : P121068589245997773.Spec := by
  intro n
  simp only [A046699, Nat.add_sub_cancel]

end A046699

/-! ## A046699.P16564245035682137332

`2-floor(a(n-1)/a(n-a(n-1))-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A046699.P16564245035682137332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - ⌊(a (n - 1) : ℚ) / (a ((n : ℤ) - a (n - 1)).toNat : ℚ) - (a (n - 1) : ℚ)⌋

end

end A046699.P16564245035682137332

namespace A046699

/-- `2-floor(a(n-1)/a(n-a(n-1))-a(n-1))` -/
def P16564245035682137332.Spec : Prop :=
  ∀ n, P16564245035682137332.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P2816878762191385582

`ceil(A007843(n)/2)`
-/

namespace A046699.P2816878762191385582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007843 n : ℚ) / 2⌉

end

end A046699.P2816878762191385582

namespace A046699

/-- `ceil(A007843(n)/2)` -/
def P2816878762191385582.Spec : Prop :=
  ∀ n, P2816878762191385582.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P9388519478135794610

`∑[char[A101925(n+1)]]+1`
-/

namespace A046699.P9388519478135794610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046699.P9388519478135794610

namespace A046699

/-- `∑[char[A101925(n+1)]]+1` -/
def P9388519478135794610.Spec : Prop :=
  ∀ n, (P9388519478135794610.a n : ℤ) = A046699 (n + 1)

end A046699

/-! ## A046699.P13081679204619673567

`comp[∑[A085058(n)]]+1-n`
-/

namespace A046699.P13081679204619673567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A046699.P13081679204619673567

namespace A046699

/-- `comp[∑[A085058(n)]]+1-n` -/
def P13081679204619673567.Spec : Prop :=
  ∀ n, P13081679204619673567.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P15059864053059531465

`A079559(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A046699.P15059864053059531465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079559 (n - 1) + a (n - 1)

end

end A046699.P15059864053059531465

namespace A046699

/-- `A079559(n-1)+a(n-1)` -/
def P15059864053059531465.Spec : Prop :=
  ∀ n, P15059864053059531465.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P8794925889749683072

`∑[char[∑[A001511(n+1)]+1]]+1`
-/

namespace A046699.P8794925889749683072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046699.P8794925889749683072

namespace A046699

/-- `∑[char[∑[A001511(n+1)]+1]]+1` -/
def P8794925889749683072.Spec : Prop :=
  ∀ n, (P8794925889749683072.a n : ℤ) = A046699 (n + 1)

end A046699

/-! ## A046699.P14397785386290496315

`char[A005187(n+1)+1]+a(n-1)` with `a(0)=1`
-/

namespace A046699.P14397785386290496315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A046699.P14397785386290496315

namespace A046699

/-- `char[A005187(n+1)+1]+a(n-1)` -/
def P14397785386290496315.Spec : Prop :=
  ∀ n, (P14397785386290496315.a n : ℤ) = A046699 (n + 1)

end A046699

/-! ## A046699.P11939241078988376334

`∑[char[2*(n+1)-(A000120(n+1)-1)]]+1`
-/

namespace A046699.P11939241078988376334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (A000120 (n + 1) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046699.P11939241078988376334

namespace A046699

/-- `∑[char[2*(n+1)-(A000120(n+1)-1)]]+1` -/
def P11939241078988376334.Spec : Prop :=
  ∀ n, (P11939241078988376334.a n : ℤ) = A046699 (n + 1)

end A046699

/-! ## A046699.P7473842857606712284

`A007843(A028310(n))/2`
-/

namespace A046699.P7473842857606712284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007843 (A028310 n).toNat : ℚ) / 2

end

end A046699.P7473842857606712284

namespace A046699

/-- `A007843(A028310(n))/2` -/
def P7473842857606712284.Spec : Prop :=
  ∀ n, P7473842857606712284.a n = (A046699 (n + 1) : ℚ)

end A046699

/-! ## A046699.P3136777977298692422

`A006949(A070939(n)-1+n)`
-/

namespace A046699.P3136777977298692422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A070939 n - 1 + (n : ℤ)).toNat

end

end A046699.P3136777977298692422

namespace A046699

/-- `A006949(A070939(n)-1+n)` -/
def P3136777977298692422.Spec : Prop :=
  ∀ n, P3136777977298692422.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P4451170758935860944

`A006949(n-(1-A070939(n)))`
-/

namespace A046699.P4451170758935860944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 ((n : ℤ) - (1 - A070939 n)).toNat

end

end A046699.P4451170758935860944

namespace A046699

/-- `A006949(n-(1-A070939(n)))` -/
def P4451170758935860944.Spec : Prop :=
  ∀ n, P4451170758935860944.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P3799167013913349021

`A007843(A000007(n)+n)/2`
-/

namespace A046699.P3799167013913349021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007843 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A046699.P3799167013913349021

namespace A046699

/-- `A007843(A000007(n)+n)/2` -/
def P3799167013913349021.Spec : Prop :=
  ∀ n, P3799167013913349021.a n = (A046699 (n + 1) : ℚ)

end A046699

/-! ## A046699.P3031708539957700163

`A007843(n)/(1-A057428(n))`
-/

namespace A046699.P3031708539957700163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007843 n : ℚ) / (1 - A057428 n : ℚ)

end

end A046699.P3031708539957700163

namespace A046699

/-- `A007843(n)/(1-A057428(n))` -/
def P3031708539957700163.Spec : Prop :=
  ∀ n, P3031708539957700163.a n = (A046699 (n + 1) : ℚ)

end A046699

/-! ## A046699.P16605388498363033946

`A288934(n+1)-A087156(n+1)`
-/

namespace A046699.P16605388498363033946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288934 (n + 1) - A087156 (n + 1)

end

end A046699.P16605388498363033946

namespace A046699

/-- `A288934(n+1)-A087156(n+1)` -/
def P16605388498363033946.Spec : Prop :=
  ∀ n, P16605388498363033946.a n = A046699 (n + 1)

end A046699

/-! ## A046699.P1538141326277314663

`∑[A079559(n+1-A061222(n)%(n+1))]`
-/

namespace A046699.P1538141326277314663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 ((n + 1 : ℤ) - Int.tmod (A061222 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046699.P1538141326277314663

namespace A046699

/-- `∑[A079559(n+1-A061222(n)%(n+1))]` -/
def P1538141326277314663.Spec : Prop :=
  ∀ n, P1538141326277314663.a n = A046699 (n + 1)

end A046699

