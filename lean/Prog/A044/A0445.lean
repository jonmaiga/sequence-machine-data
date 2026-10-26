import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A044500: Numbers n such that string 2,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044500, there is no canonical definition to state claims against.
-/

/-! ## A044500.P6921583017695738901

`filter[A043907(n+1), A179775(#)]`
-/

namespace A044500.P6921583017695738901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A044500.P6921583017695738901

/-! ## A044500.P11318526732640515094

`∩[A043907(n+1), A283550(n+1)]`
-/

namespace A044500.P11318526732640515094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044500.P11318526732640515094

/-! ## A044500.P3851311775401855321

`∩[A043907(n+1), A364728(n+1)]`
-/

namespace A044500.P3851311775401855321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044500.P3851311775401855321

/-! ## A044500.P11303194961847893852

`A044120(n+1)-A097031(A225198(n))`
-/

namespace A044500.P11303194961847893852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044120 (n + 1) - A097031 (A225198 n).toNat

end

end A044500.P11303194961847893852

/-! ## A044500.P14561197161011825601

`A044120(n+1)-A001511(A234498(n+1))`
-/

namespace A044500.P14561197161011825601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044120 (n + 1) - A001511 (A234498 (n + 1)).toNat

end

end A044500.P14561197161011825601

/-!
# A044501: Numbers n such that string 3,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044501, there is no canonical definition to state claims against.
-/

/-! ## A044501.P2982003889942482470

`A044121(n+1)-A137278(n²)`
-/

namespace A044501.P2982003889942482470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044121 (n + 1) - A137278 (n ^ 2)

end

end A044501.P2982003889942482470

/-! ## A044501.P11799112931376752581

`A044121(n+1)-A151722(n)!`
-/

namespace A044501.P11799112931376752581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044121 (n + 1) - (Nat.factorial (A151722 n).toNat : ℤ)

end

end A044501.P11799112931376752581

/-! ## A044501.P15616222191548881585

`A044121(n+1)-A001222(A033875(n+1))`
-/

namespace A044501.P15616222191548881585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044121 (n + 1) - A001222 (A033875 (n + 1)).toNat

end

end A044501.P15616222191548881585

/-! ## A044501.P12647915627838851730

`A044121(n+1)-A001222(A134573(n+1))`
-/

namespace A044501.P12647915627838851730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044121 (n + 1) - A001222 (A134573 (n + 1)).toNat

end

end A044501.P12647915627838851730

/-! ## A044501.P12053552931651614381

`A044121(n+1)-A001511(A234498(n+1))`
-/

namespace A044501.P12053552931651614381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044121 (n + 1) - A001511 (A234498 (n + 1)).toNat

end

end A044501.P12053552931651614381

/-!
# A044502: Numbers n such that string 3,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044502, there is no canonical definition to state claims against.
-/

/-! ## A044502.P14220322291553715820

`A044122(n+1)-A119788(∑[∑{d}[n, #]]+1)`
-/

namespace A044502.P14220322291553715820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044122 (n + 1) - A119788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A044502.P14220322291553715820

/-! ## A044502.P2964976818609167172

`A044122(n+1)-A001511(n^3+n+91)`
-/

namespace A044502.P2964976818609167172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044122 (n + 1) - A001511 (n ^ 3 + n + 91)

end

end A044502.P2964976818609167172

/-! ## A044502.P846787562892587805

`A044122(n+1)-A000035(A005491(n))`
-/

namespace A044502.P846787562892587805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044122 (n + 1) - A000035 (A005491 n).toNat

end

end A044502.P846787562892587805

/-! ## A044502.P11060208359432332264

`A044122(n+1)-A010057(A000578(n))`
-/

namespace A044502.P11060208359432332264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044122 (n + 1) - A010057 (A000578 n).toNat

end

end A044502.P11060208359432332264

/-! ## A044502.P8767933714566003881

`A044122(n+1)-A008835(A010737(n))`
-/

namespace A044502.P8767933714566003881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044122 (n + 1) - A008835 (A010737 n).toNat

end

end A044502.P8767933714566003881

/-!
# A044503: Numbers n such that string 3,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044503, there is no canonical definition to state claims against.
-/

/-! ## A044503.P15200538753595946472

`A050873(A015448(n))+A044502(n+1)`
-/

namespace A044503.P15200538753595946472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A015448 n).toNat + A044502 (n + 1)

end

end A044503.P15200538753595946472

/-! ## A044503.P631095443288183473

`A044502(n+1)+A040011(A260373(n))`
-/

namespace A044503.P631095443288183473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A040011 (A260373 n).toNat

end

end A044503.P631095443288183473

/-! ## A044503.P12529075934064010876

`A044123(n+1)-A123762(A025549(n+1))`
-/

namespace A044503.P12529075934064010876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044123 (n + 1) - A123762 (A025549 (n + 1)).toNat

end

end A044503.P12529075934064010876

/-!
# A044504: Numbers n such that string 3,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044504, there is no canonical definition to state claims against.
-/

/-! ## A044504.P10256843697387402529

`A345339(2*n)+A039702(A279785(2*n+3))`
-/

namespace A044504.P10256843697387402529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345339 (2 * n) + A039702 (A279785 (2 * n + 3)).toNat

end

end A044504.P10256843697387402529

/-! ## A044504.P18270112208688119838

`A017617(3*n+1)+A003557(A003261(n+1))`
-/

namespace A044504.P18270112208688119838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 (3 * n + 1) + A003557 (A003261 (n + 1)).toNat

end

end A044504.P18270112208688119838

/-! ## A044504.P7051700802124822904

`or(A017629(3*n+1), A156603(A051286(n)))`
-/

namespace A044504.P7051700802124822904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017629 (3 * n + 1)) (A156603 (A051286 n).toNat)

end

end A044504.P7051700802124822904

/-! ## A044504.P3216370645373807248

`A368472(A130442(n+1))+A017617(3*n+1)`
-/

namespace A044504.P3216370645373807248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (A130442 (n + 1)).toNat + A017617 (3 * n + 1)

end

end A044504.P3216370645373807248

/-!
# A044505: Numbers n such that string 3,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044505, there is no canonical definition to state claims against.
-/

/-! ## A044505.P13433814350770033382

`record[A044125(A046693(n))-1]`
-/

namespace A044505.P13433814350770033382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (A046693 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044505.P13433814350770033382

/-! ## A044505.P11240208691360491261

`A044125(n+1)-A001221(A199326(n+1))`
-/

namespace A044505.P11240208691360491261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) - A001221 (A199326 (n + 1)).toNat

end

end A044505.P11240208691360491261

/-! ## A044505.P8722468507427748372

`A044125(n+1)-A179926(A033274(n+1))`
-/

namespace A044505.P8722468507427748372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) - A179926 (A033274 (n + 1)).toNat

end

end A044505.P8722468507427748372

/-! ## A044505.P8238137770073627141

`A044125(n+1)-A001221(A338762(n+1))`
-/

namespace A044505.P8238137770073627141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) - A001221 (A338762 (n + 1)).toNat

end

end A044505.P8238137770073627141

/-! ## A044505.P17991803684058966030

`A044125(n+1)-A010051(A364689(2*n+1))`
-/

namespace A044505.P17991803684058966030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) - A010051 (A364689 (2 * n + 1)).toNat

end

end A044505.P17991803684058966030

/-!
# A044506: Numbers n such that string 3,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044506, there is no canonical definition to state claims against.
-/

/-! ## A044506.P9024524509114065214

`∩[A043909(n+1), A243750(n+1)]`
-/

namespace A044506.P9024524509114065214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044506.P9024524509114065214

/-! ## A044506.P2889459684875193512

`A044126(n+1)+A033999(A120027(n))`
-/

namespace A044506.P2889459684875193512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044126 (n + 1) + A033999 (A120027 n).toNat

end

end A044506.P2889459684875193512

/-! ## A044506.P1587197414932568985

`A044126(n+1)-A034802(A000217(n))`
-/

namespace A044506.P1587197414932568985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044126 (n + 1) - A034802 (A000217 n).toNat

end

end A044506.P1587197414932568985

/-! ## A044506.P9642787933254922569

`A044126(n+1)+A033999(A002236(n+1))`
-/

namespace A044506.P9642787933254922569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044126 (n + 1) + A033999 (A002236 (n + 1)).toNat

end

end A044506.P9642787933254922569

/-! ## A044506.P15611773846882651612

`A044126(n+1)-A001222(A338762(n+1))`
-/

namespace A044506.P15611773846882651612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044126 (n + 1) - A001222 (A338762 (n + 1)).toNat

end

end A044506.P15611773846882651612

/-!
# A044507: Numbers n such that string 4,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044507, there is no canonical definition to state claims against.
-/

/-! ## A044507.P6584410951761917942

`A044127(n+1)-A294338(A061793(n))`
-/

namespace A044507.P6584410951761917942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044127 (n + 1) - A294338 (A061793 n).toNat

end

end A044507.P6584410951761917942

/-! ## A044507.P14611214889751095266

`A044127(n+1)-A001222(A087387(n+1))`
-/

namespace A044507.P14611214889751095266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044127 (n + 1) - A001222 (A087387 (n + 1)).toNat

end

end A044507.P14611214889751095266

/-! ## A044507.P2161232396807370711

`A044127(n+1)-A051903(A061275(n+1))`
-/

namespace A044507.P2161232396807370711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044127 (n + 1) - A051903 (A061275 (n + 1)).toNat

end

end A044507.P2161232396807370711

/-! ## A044507.P8922657478184411800

`A044127(n+1)-A174965(A001209(n+1))`
-/

namespace A044507.P8922657478184411800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044127 (n + 1) - A174965 (A001209 (n + 1)).toNat

end

end A044507.P8922657478184411800

/-! ## A044507.P1495068966750964231

`A044127(n+1)-A081373(A107666(n+1))`
-/

namespace A044507.P1495068966750964231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044127 (n + 1) - A081373 (A107666 (n + 1)).toNat

end

end A044507.P1495068966750964231

/-!
# A044508: Numbers n such that string 4,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044508, there is no canonical definition to state claims against.
-/

/-! ## A044508.P14629872026177753073

`A044128(n+1)-A133233(∑[n])`
-/

namespace A044508.P14629872026177753073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044128 (n + 1) - A133233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044508.P14629872026177753073

/-! ## A044508.P12301414215463866751

`A044128(n+1)-A257993(A000978(n+1))`
-/

namespace A044508.P12301414215463866751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044128 (n + 1) - A257993 (A000978 (n + 1)).toNat

end

end A044508.P12301414215463866751

/-! ## A044508.P5863264484722939862

`A044128(n+1)-A007318(A061793(n)-1)`
-/

namespace A044508.P5863264484722939862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044128 (n + 1) - A007318 (A061793 n - 1).toNat

end

end A044508.P5863264484722939862

/-! ## A044508.P17130977392556853715

`A044128(n+1)-A007318(A061793(n))`
-/

namespace A044508.P17130977392556853715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044128 (n + 1) - A007318 (A061793 n).toNat

end

end A044508.P17130977392556853715

/-! ## A044508.P4776923678233014585

`A044128(n+1)-A001222(A000043(n+1))`
-/

namespace A044508.P4776923678233014585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044128 (n + 1) - A001222 (A000043 (n + 1)).toNat

end

end A044508.P4776923678233014585

/-!
# A044509: Numbers n such that string 4,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044509, there is no canonical definition to state claims against.
-/

/-! ## A044509.P9957991264023838074

`A057428(A027642(n))+A044129(n+1)`
-/

namespace A044509.P9957991264023838074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A027642 n).toNat + A044129 (n + 1)

end

end A044509.P9957991264023838074

/-! ## A044509.P6974904758799016464

`A057428(A051717(n))+A044129(n+1)`
-/

namespace A044509.P6974904758799016464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A051717 n).toNat + A044129 (n + 1)

end

end A044509.P6974904758799016464

/-! ## A044509.P13462169224051798251

`A057428(A178346(n))+A044129(n+1)`
-/

namespace A044509.P13462169224051798251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A178346 n).toNat + A044129 (n + 1)

end

end A044509.P13462169224051798251

/-! ## A044509.P10617201490971085876

`A044129(n+1)-A019425(A016116(n))`
-/

namespace A044509.P10617201490971085876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044129 (n + 1) - A019425 (A016116 n).toNat

end

end A044509.P10617201490971085876

/-! ## A044509.P12239609652444539987

`A057428(A096782(n+1))+A044129(n+1)`
-/

namespace A044509.P12239609652444539987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A096782 (n + 1)).toNat + A044129 (n + 1)

end

end A044509.P12239609652444539987

/-!
# A044510: Numbers n such that string 4,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044510, there is no canonical definition to state claims against.
-/

/-! ## A044510.P17121863774296012726

`or(p?[A110409(n)], A044129(n+1))`
-/

namespace A044510.P17121863774296012726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A044129 (n + 1))

end

end A044510.P17121863774296012726

/-! ## A044510.P10967575694210619467

`or(p?[A137867(n+1)], A044129(n+1))`
-/

namespace A044510.P10967575694210619467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A044129 (n + 1))

end

end A044510.P10967575694210619467

/-! ## A044510.P3416194026998449770

`or(A020639(A066570(n+1)), A044129(n+1))`
-/

namespace A044510.P3416194026998449770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A066570 (n + 1)).toNat) (A044129 (n + 1))

end

end A044510.P3416194026998449770

/-! ## A044510.P10415495832742623886

`or(A014963(A014963(n+1)²²), A044129(n+1))`
-/

namespace A044510.P10415495832742623886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 ((A014963 (n + 1) ^ 2) ^ 2).toNat) (A044129 (n + 1))

end

end A044510.P10415495832742623886

/-! ## A044510.P17969204565921976578

`or(A020639(n+1), A044129(A032559(n+1)))`
-/

namespace A044510.P17969204565921976578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (n + 1)) (A044129 (A032559 (n + 1)).toNat)

end

end A044510.P17969204565921976578

/-!
# A044511: Numbers n such that string 4,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044511, there is no canonical definition to state claims against.
-/

/-! ## A044511.P12934673177034706909

`A044131(n+1)-A188011(A119685(n+1))`
-/

namespace A044511.P12934673177034706909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044131 (n + 1) - A188011 (A119685 (n + 1)).toNat

end

end A044511.P12934673177034706909

/-! ## A044511.P15382543504171629841

`A209876(n+1)-A105697(A240234(n+1))`
-/

namespace A044511.P15382543504171629841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209876 (n + 1) - A105697 (A240234 (n + 1)).toNat

end

end A044511.P15382543504171629841

/-! ## A044511.P6061749208074585091

`A133872(A033844(n))+A017569(3*n+2)`
-/

namespace A044511.P6061749208074585091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A033844 n).toNat + A017569 (3 * n + 2)

end

end A044511.P6061749208074585091

/-! ## A044511.P14853848162962336669

`A017581(3*n+2)-A005614(A037231(n+1))`
-/

namespace A044511.P14853848162962336669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (3 * n + 2) - A005614 (A037231 (n + 1)).toNat

end

end A044511.P14853848162962336669

/-! ## A044511.P17854021432895261108

`A044131(n+1)-A213472(A213432(n))`
-/

namespace A044511.P17854021432895261108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044131 (n + 1) - A213472 (A213432 n).toNat

end

end A044511.P17854021432895261108

/-!
# A044512: Numbers n such that string 4,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044512, there is no canonical definition to state claims against.
-/

/-! ## A044512.P9200186043341826550

`∩[A043910(n+1), A124134(n+1)]`
-/

namespace A044512.P9200186043341826550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P9200186043341826550

/-! ## A044512.P14843077400525076347

`∩[A043910(n+1), A166257(n+1)]`
-/

namespace A044512.P14843077400525076347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P14843077400525076347

/-! ## A044512.P14952962958695846629

`∩[A043910(n+1), A173263(n+1)]`
-/

namespace A044512.P14952962958695846629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P14952962958695846629

/-! ## A044512.P6923377480149805309

`∩[A043910(n+1), A115405(n+1)]`
-/

namespace A044512.P6923377480149805309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P6923377480149805309

/-! ## A044512.P13267909716154800685

`∩[A043910(n+1), A204878(n+1)]`
-/

namespace A044512.P13267909716154800685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P13267909716154800685

/-!
# A044513: Numbers n such that string 5,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044513, there is no canonical definition to state claims against.
-/

/-! ## A044513.P11873271151277792517

`A044133(n+1)-A000034(n*(8*n+6))`
-/

namespace A044513.P11873271151277792517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044133 (n + 1) - A000034 (n * (8 * n + 6))

end

end A044513.P11873271151277792517

/-! ## A044513.P16114130037970990696

`A057428(A141214(n))+A044133(n+1)`
-/

namespace A044513.P16114130037970990696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A141214 n).toNat + A044133 (n + 1)

end

end A044513.P16114130037970990696

/-! ## A044513.P15052942280271327649

`A044133(n+1)-A010146(A001539(n))`
-/

namespace A044513.P15052942280271327649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044133 (n + 1) - A010146 (A001539 n).toNat

end

end A044513.P15052942280271327649

/-! ## A044513.P11796047461840281987

`A057428(A118057(n+1))+A044133(n+1)`
-/

namespace A044513.P11796047461840281987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A118057 (n + 1)).toNat + A044133 (n + 1)

end

end A044513.P11796047461840281987

/-! ## A044513.P10375088234916483575

`A044133(n+1)-A001221(A123107(n+1))`
-/

namespace A044513.P10375088234916483575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044133 (n + 1) - A001221 (A123107 (n + 1)).toNat

end

end A044513.P10375088234916483575

/-!
# A044514: Numbers n such that string 5,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044514, there is no canonical definition to state claims against.
-/

/-! ## A044514.P17049850871220444837

`A044134(n+1)%A093472(n)-1`
-/

namespace A044514.P17049850871220444837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044134 (n + 1)) (A093472 n) - 1

end

end A044514.P17049850871220444837

/-! ## A044514.P14555346442769204363

`A044134(n+1)-A035263(A017042(n))`
-/

namespace A044514.P14555346442769204363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044134 (n + 1) - A035263 (A017042 n).toNat

end

end A044514.P14555346442769204363

/-! ## A044514.P1831984914025764012

`A044134(n+1)-A001065(A073609(n))`
-/

namespace A044514.P1831984914025764012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044134 (n + 1) - A001065 (A073609 n).toNat

end

end A044514.P1831984914025764012

/-! ## A044514.P15833161214855200737

`A044134(n+1)-A057427(A020752(n))`
-/

namespace A044514.P15833161214855200737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044134 (n + 1) - A057427 (A020752 n).toNat

end

end A044514.P15833161214855200737

/-! ## A044514.P11183001118370715320

`A044134(n+1)-A001222(A157184(n+1))`
-/

namespace A044514.P11183001118370715320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044134 (n + 1) - A001222 (A157184 (n + 1)).toNat

end

end A044514.P11183001118370715320

/-!
# A044515: Numbers n such that string 5,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044515, there is no canonical definition to state claims against.
-/

/-! ## A044515.P1503941466426051895

`A057428(A046682(n))+A044135(n+1)`
-/

namespace A044515.P1503941466426051895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A046682 n).toNat + A044135 (n + 1)

end

end A044515.P1503941466426051895

/-! ## A044515.P9998379946794371892

`A062157(A340748(n+1))+A044135(n+1)`
-/

namespace A044515.P9998379946794371892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A340748 (n + 1)).toNat + A044135 (n + 1)

end

end A044515.P9998379946794371892

/-! ## A044515.P14808395371278516187

`A044135(n+1)-A055874(A069129(n+1))`
-/

namespace A044515.P14808395371278516187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044135 (n + 1) - A055874 (A069129 (n + 1)).toNat

end

end A044515.P14808395371278516187

/-! ## A044515.P15728184921830840260

`A057428(A110014(n+1))+A044135(n+1)`
-/

namespace A044515.P15728184921830840260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A110014 (n + 1)).toNat + A044135 (n + 1)

end

end A044515.P15728184921830840260

/-! ## A044515.P5310850320244219525

`A233583(A044135(n+1))`
-/

namespace A044515.P5310850320244219525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044135 (n + 1)).toNat

end

end A044515.P5310850320244219525

/-!
# A044516: Numbers n such that string 5,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044516, there is no canonical definition to state claims against.
-/

/-! ## A044516.P11605933366652591344

`A044136(n+1)-A007318(A185284(n))`
-/

namespace A044516.P11605933366652591344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044136 (n + 1) - A007318 (A185284 n).toNat

end

end A044516.P11605933366652591344

/-! ## A044516.P17030849694685226802

`A044136(n+1)-A001222(A133961(n+1))`
-/

namespace A044516.P17030849694685226802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044136 (n + 1) - A001222 (A133961 (n + 1)).toNat

end

end A044516.P17030849694685226802

/-! ## A044516.P6697907573989566861

`A124741(A044136(n+1))`
-/

namespace A044516.P6697907573989566861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044136 (n + 1)).toNat

end

end A044516.P6697907573989566861

/-!
# A044517: Numbers n such that string 5,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044517, there is no canonical definition to state claims against.
-/

/-! ## A044517.P2503195628314620850

`A044516(n+1)+A023120(A160562(2*n+3))`
-/

namespace A044517.P2503195628314620850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044516 (n + 1) + A023120 (A160562 (2 * n + 3)).toNat

end

end A044517.P2503195628314620850

/-! ## A044517.P16657820315587657334

`A044137(A331561(n+1))-1`
-/

namespace A044517.P16657820315587657334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044137 (A331561 (n + 1)).toNat - 1

end

end A044517.P16657820315587657334

/-!
# A044519: Numbers n such that string 0,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044519, there is no canonical definition to state claims against.
-/

/-! ## A044519.P12840765353615140451

`A268354(A157362(n+1))+A044567(n+1)`
-/

namespace A044519.P12840765353615140451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157362 (n + 1)).toNat + A044567 (n + 1)

end

end A044519.P12840765353615140451

/-! ## A044519.P8706313853819263972

`A268354(A157923(n+1))+A044567(n+1)`
-/

namespace A044519.P8706313853819263972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157923 (n + 1)).toNat + A044567 (n + 1)

end

end A044519.P8706313853819263972

/-! ## A044519.P6349418765616814484

`A268354(A157362(n+1))+A017053(A017053(n))`
-/

namespace A044519.P6349418765616814484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157362 (n + 1)).toNat + A017053 (A017053 n).toNat

end

end A044519.P6349418765616814484

/-! ## A044519.P456194459343450554

`A268354(A157923(n+1))+A017053(A017053(n))`
-/

namespace A044519.P456194459343450554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157923 (n + 1)).toNat + A017053 (A017053 n).toNat

end

end A044519.P456194459343450554

/-! ## A044519.P8977411981803834972

`A000045(A268354(n+1))+A044138(n+1)-A119788((n+8)²)`
-/

namespace A044519.P8977411981803834972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A268354 (n + 1)).toNat + (A044138 (n + 1) - A119788 ((n + 8) ^ 2))

end

end A044519.P8977411981803834972

/-!
# A044520: Numbers n such that string 0,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044520, there is no canonical definition to state claims against.
-/

/-! ## A044520.P333930640444493161

`A044140(n+1)-gcd(2, A154868(n+1))`
-/

namespace A044520.P333930640444493161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (n + 1) - (Int.gcd 2 (A154868 (n + 1)) : ℤ)

end

end A044520.P333930640444493161

/-! ## A044520.P1881690408271679912

`A044140(n+1)-A000035(A272920(n))`
-/

namespace A044520.P1881690408271679912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (n + 1) - A000035 (A272920 n).toNat

end

end A044520.P1881690408271679912

/-! ## A044520.P6632305616848628317

`A044140(n+1)-A001222(A091578(n+1))`
-/

namespace A044520.P6632305616848628317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (n + 1) - A001222 (A091578 (n + 1)).toNat

end

end A044520.P6632305616848628317

/-! ## A044520.P4954169511909201865

`A044140(n+1)-A000035(A101635(n+1))`
-/

namespace A044520.P4954169511909201865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (n + 1) - A000035 (A101635 (n + 1)).toNat

end

end A044520.P4954169511909201865

/-! ## A044520.P3600106586637271741

`A044140(n+1)-A001222(A144427(n+1))`
-/

namespace A044520.P3600106586637271741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (n + 1) - A001222 (A144427 (n + 1)).toNat

end

end A044520.P3600106586637271741

/-! ## A044520.P10930364236138584507

`A044140(n+1)-A001222(A154868(n+1))`
-/

namespace A044520.P10930364236138584507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (n + 1) - A001222 (A154868 (n + 1)).toNat

end

end A044520.P10930364236138584507

/-! ## A044520.P125450647465386727

`A044140(n+1)-A057427(2*A191126(n+1))`
-/

namespace A044520.P125450647465386727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (n + 1) - A057427 (2 * A191126 (n + 1)).toNat

end

end A044520.P125450647465386727

/-!
# A044521: Numbers n such that string 0,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044521, there is no canonical definition to state claims against.
-/

/-! ## A044521.P642141376969342674

`A044141(n+1)-gcd(3, A098820(n))`
-/

namespace A044521.P642141376969342674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) - (Int.gcd 3 (A098820 n) : ℤ)

end

end A044521.P642141376969342674

/-! ## A044521.P10105731621626635493

`A044141(n+1)-A125631(n+1)%2`
-/

namespace A044521.P10105731621626635493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) - Int.tmod (A125631 (n + 1)) 2

end

end A044521.P10105731621626635493

/-! ## A044521.P12718270316240572817

`A044141(n+1)+A033999(A324895(n))`
-/

namespace A044521.P12718270316240572817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) + A033999 (A324895 n).toNat

end

end A044521.P12718270316240572817

/-! ## A044521.P6043912505506131797

`A044141(n+1)-A265186(A067725(n))`
-/

namespace A044521.P6043912505506131797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) - A265186 (A067725 n).toNat

end

end A044521.P6043912505506131797

/-! ## A044521.P11502163670482925453

`A044141(n+1)+A033999(A125631(n+1))`
-/

namespace A044521.P11502163670482925453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) + A033999 (A125631 (n + 1)).toNat

end

end A044521.P11502163670482925453

/-! ## A044521.P8412447303595141352

`A044141(n+1)+A033999(A172039(n+1))`
-/

namespace A044521.P8412447303595141352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) + A033999 (A172039 (n + 1)).toNat

end

end A044521.P8412447303595141352

/-! ## A044521.P16475673243260688119

`A044141(n+1)-A000035(A003215(n+1))`
-/

namespace A044521.P16475673243260688119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) - A000035 (A003215 (n + 1)).toNat

end

end A044521.P16475673243260688119

/-! ## A044521.P10544442800785487636

`A044141(n+1)-A001222(A263980(n+1))`
-/

namespace A044521.P10544442800785487636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) - A001222 (A263980 (n + 1)).toNat

end

end A044521.P10544442800785487636

/-! ## A044521.P4849223614773979993

`A044141(n+1)-A001222(A173135(n+1))`
-/

namespace A044521.P4849223614773979993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) - A001222 (A173135 (n + 1)).toNat

end

end A044521.P4849223614773979993

/-!
# A044522: Numbers n such that string 0,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044522, there is no canonical definition to state claims against.
-/

/-! ## A044522.P1343517088841760769

`A044142(n+1)-A033999(∑[6*n])`
-/

namespace A044522.P1343517088841760769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) - A033999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044522.P1343517088841760769

/-! ## A044522.P9652594073879569810

`A044142(n+1)-A054977(A009998(n))`
-/

namespace A044522.P9652594073879569810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) - A054977 (A009998 n).toNat

end

end A044522.P9652594073879569810

/-! ## A044522.P8830489539887473252

`A044142(n+1)-A057077(A045944(n))`
-/

namespace A044522.P8830489539887473252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) - A057077 (A045944 n).toNat

end

end A044522.P8830489539887473252

/-! ## A044522.P2115820852079000012

`A044142(n+1)-A001222(A086472(n+1))`
-/

namespace A044522.P2115820852079000012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) - A001222 (A086472 (n + 1)).toNat

end

end A044522.P2115820852079000012

/-! ## A044522.P10295250182722598817

`A057077(A045944(n)+2)+A044142(n+1)`
-/

namespace A044522.P10295250182722598817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A045944 n + 2).toNat + A044142 (n + 1)

end

end A044522.P10295250182722598817

/-! ## A044522.P301559410024338566

`A044142(n+1)-A001222(A174010(n+1))`
-/

namespace A044522.P301559410024338566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) - A001222 (A174010 (n + 1)).toNat

end

end A044522.P301559410024338566

/-! ## A044522.P18166320334121378268

`A044142(n+1)-A001222(A299956(n+1))`
-/

namespace A044522.P18166320334121378268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (n + 1) - A001222 (A299956 (n + 1)).toNat

end

end A044522.P18166320334121378268

/-!
# A044523: Numbers n such that string 0,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044523, there is no canonical definition to state claims against.
-/

/-! ## A044523.P4769622319828323109

`A044143(n+1)-A133872(A000567(n))`
-/

namespace A044523.P4769622319828323109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A133872 (A000567 n).toNat

end

end A044523.P4769622319828323109

/-! ## A044523.P1597459227123682157

`A044143(n+1)-A057427(A100862(n))`
-/

namespace A044523.P1597459227123682157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A057427 (A100862 n).toNat

end

end A044523.P1597459227123682157

/-! ## A044523.P372361084433753218

`A044143(n+1)-A158388(A042957(n))`
-/

namespace A044523.P372361084433753218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A158388 (A042957 n).toNat

end

end A044523.P372361084433753218

/-! ## A044523.P11917091560348062387

`A044143(n+1)-A186729(A186729(n))`
-/

namespace A044523.P11917091560348062387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A186729 (A186729 n).toNat

end

end A044523.P11917091560348062387

/-! ## A044523.P16339618270825387109

`A044143(n+1)-A040364(A000567(n)+1)`
-/

namespace A044523.P16339618270825387109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A040364 (A000567 n + 1).toNat

end

end A044523.P16339618270825387109

/-! ## A044523.P3694010124790428153

`A044143(n+1)-A001221(A107807(n+1))`
-/

namespace A044523.P3694010124790428153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A001221 (A107807 (n + 1)).toNat

end

end A044523.P3694010124790428153

/-! ## A044523.P2411650085535676090

`A044143(n+1)-A057427(A088937(n+1))`
-/

namespace A044523.P2411650085535676090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A057427 (A088937 (n + 1)).toNat

end

end A044523.P2411650085535676090

/-! ## A044523.P12281637641589146434

`A044143(n+1)-A057427(A209583(n+1))`
-/

namespace A044523.P12281637641589146434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) - A057427 (A209583 (n + 1)).toNat

end

end A044523.P12281637641589146434

/-!
# A044524: Numbers n such that string 0,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044524, there is no canonical definition to state claims against.
-/

/-! ## A044524.P12663931302802128221

`A057428(A000009(n))+A044144(n+1)`
-/

namespace A044524.P12663931302802128221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000009 n).toNat + A044144 (n + 1)

end

end A044524.P12663931302802128221

/-! ## A044524.P11812507855335780502

`A044144(n+1)-A000035(A193844(n))`
-/

namespace A044524.P11812507855335780502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044144 (n + 1) - A000035 (A193844 n).toNat

end

end A044524.P11812507855335780502

/-! ## A044524.P9865415214351396287

`A057428(A272486(n+1))+A044144(n+1)`
-/

namespace A044524.P9865415214351396287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A272486 (n + 1)).toNat + A044144 (n + 1)

end

end A044524.P9865415214351396287

/-! ## A044524.P308205338468152454

`A044144(n+1)-A010122(A173699(n+1))`
-/

namespace A044524.P308205338468152454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044144 (n + 1) - A010122 (A173699 (n + 1)).toNat

end

end A044524.P308205338468152454

/-! ## A044524.P14313433449240663342

`A044144(n+1)-A079229(A193844(n)+1)`
-/

namespace A044524.P14313433449240663342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044144 (n + 1) - A079229 (A193844 n + 1).toNat

end

end A044524.P14313433449240663342

/-! ## A044524.P15328208619683836272

`A044144(n+1)-A001222(A352352(n+1))`
-/

namespace A044524.P15328208619683836272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044144 (n + 1) - A001222 (A352352 (n + 1)).toNat

end

end A044524.P15328208619683836272

/-!
# A044525: Numbers n such that string 0,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044525, there is no canonical definition to state claims against.
-/

/-! ## A044525.P5388720772544770115

`A298936(A298937(n))+A044524(n+1)`
-/

namespace A044525.P5388720772544770115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298936 (A298937 n).toNat + A044524 (n + 1)

end

end A044525.P5388720772544770115

/-! ## A044525.P9293887330985493156

`A055061(A280636(n+1))+A044524(n+1)`
-/

namespace A044525.P9293887330985493156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055061 (A280636 (n + 1)).toNat + A044524 (n + 1)

end

end A044525.P9293887330985493156

/-! ## A044525.P15536092563410395779

`A180172(A180207(n+1))+A044524(n+1)`
-/

namespace A044525.P15536092563410395779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180172 (A180207 (n + 1)).toNat + A044524 (n + 1)

end

end A044525.P15536092563410395779

/-! ## A044525.P13752855801882871664

`A204927(A184945(3*n+1)+1)+A044143(n+1)`
-/

namespace A044525.P13752855801882871664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204927 (A184945 (3 * n + 1) + 1).toNat + A044143 (n + 1)

end

end A044525.P13752855801882871664

/-!
# A044528: Numbers n such that string 1,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044528, there is no canonical definition to state claims against.
-/

/-! ## A044528.P6945912190799970833

`A044148(n+1)-A241578(∑[n])`
-/

namespace A044528.P6945912190799970833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A241578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044528.P6945912190799970833

/-! ## A044528.P11829386779633076020

`A044148(n+1)-A165591(3^n)`
-/

namespace A044528.P11829386779633076020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A165591 (3 ^ n)

end

end A044528.P11829386779633076020

/-! ## A044528.P175794551181003064

`A044148(n+1)-A165596(3^n)`
-/

namespace A044528.P175794551181003064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A165596 (3 ^ n)

end

end A044528.P175794551181003064

/-! ## A044528.P10982643840379963132

`A044148(n+1)-A014963(A176641(n))`
-/

namespace A044528.P10982643840379963132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A014963 (A176641 n).toNat

end

end A044528.P10982643840379963132

/-!
# A044529: Numbers n such that string 1,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044529, there is no canonical definition to state claims against.
-/

/-! ## A044529.P15710322541924117262

`A044149(n+1)-A262553(A037270(n))`
-/

namespace A044529.P15710322541924117262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044149 (n + 1) - A262553 (A037270 n).toNat

end

end A044529.P15710322541924117262

/-! ## A044529.P10276403215962570847

`A044149(n+1)-A342017(A000108(n))`
-/

namespace A044529.P10276403215962570847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044149 (n + 1) - A342017 (A000108 n).toNat

end

end A044529.P10276403215962570847

/-! ## A044529.P14283223925611433581

`A153881(A060230(n+1))+A044149(n+1)`
-/

namespace A044529.P14283223925611433581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A060230 (n + 1)).toNat + A044149 (n + 1)

end

end A044529.P14283223925611433581

/-! ## A044529.P14759666704404259392

`A044149(n+1)-A323014(A179256(n+1))`
-/

namespace A044529.P14759666704404259392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044149 (n + 1) - A323014 (A179256 (n + 1)).toNat

end

end A044529.P14759666704404259392

/-! ## A044529.P1980941526692495303

`A153881(A124818(n+2)+2)+A044149(n+1)`
-/

namespace A044529.P1980941526692495303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A124818 (n + 2) + 2).toNat + A044149 (n + 1)

end

end A044529.P1980941526692495303

/-!
# A044530: Numbers n such that string 1,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044530, there is no canonical definition to state claims against.
-/

/-! ## A044530.P14120652889929673020

`A057428(A080877(n))+A044150(n+1)`
-/

namespace A044530.P14120652889929673020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A080877 n).toNat + A044150 (n + 1)

end

end A044530.P14120652889929673020

/-! ## A044530.P12536554196880922910

`A057428(A280148(n))+A044150(n+1)`
-/

namespace A044530.P12536554196880922910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A280148 n).toNat + A044150 (n + 1)

end

end A044530.P12536554196880922910

/-! ## A044530.P16180140016927958257

`A057428(A290528(n))+A044150(n+1)`
-/

namespace A044530.P16180140016927958257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A290528 n).toNat + A044150 (n + 1)

end

end A044530.P16180140016927958257

/-! ## A044530.P7095896569172612808

`A044150(n+1)-A356167(A042841(n))`
-/

namespace A044530.P7095896569172612808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044150 (n + 1) - A356167 (A042841 n).toNat

end

end A044530.P7095896569172612808

/-! ## A044530.P4534000256723528556

`A044150(n+1)-A001222(A085054(n+1))`
-/

namespace A044530.P4534000256723528556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044150 (n + 1) - A001222 (A085054 (n + 1)).toNat

end

end A044530.P4534000256723528556

/-!
# A044531: Numbers n such that string 1,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044531, there is no canonical definition to state claims against.
-/

/-! ## A044531.P10407066250941880012

`A044151(A077168(n))-1`
-/

namespace A044531.P10407066250941880012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044151 (A077168 n).toNat - 1

end

end A044531.P10407066250941880012

/-! ## A044531.P16734443472787131971

`A044151(n+1)-A251725(2^n)`
-/

namespace A044531.P16734443472787131971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044151 (n + 1) - A251725 (2 ^ n)

end

end A044531.P16734443472787131971

/-! ## A044531.P12174334457876752877

`A044151(n+1)-A284252(2^n)`
-/

namespace A044531.P12174334457876752877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044151 (n + 1) - A284252 (2 ^ n)

end

end A044531.P12174334457876752877

/-! ## A044531.P960997778810359976

`A057428(A000079(n))+A044151(n+1)`
-/

namespace A044531.P960997778810359976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000079 n).toNat + A044151 (n + 1)

end

end A044531.P960997778810359976

/-! ## A044531.P10876804486237050402

`A044151(n+1)-A332294(A030096(n+1))`
-/

namespace A044531.P10876804486237050402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044151 (n + 1) - A332294 (A030096 (n + 1)).toNat

end

end A044531.P10876804486237050402

/-!
# A044532: Numbers n such that string 1,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044532, there is no canonical definition to state claims against.
-/

/-! ## A044532.P4320482842039429258

`A044152(A187829(n+1))-1`
-/

namespace A044532.P4320482842039429258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (A187829 (n + 1)).toNat - 1

end

end A044532.P4320482842039429258

/-! ## A044532.P3274141033922630804

`A044152(n+1)-A001222(A201914(n))`
-/

namespace A044532.P3274141033922630804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A001222 (A201914 n).toNat

end

end A044532.P3274141033922630804

/-! ## A044532.P12479841359201776720

`A044152(n+1)-A040361(A161341(n+1))`
-/

namespace A044532.P12479841359201776720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A040361 (A161341 (n + 1)).toNat

end

end A044532.P12479841359201776720

/-! ## A044532.P2254830015810526754

`A044152(n+1)-A001222(A233523(n+1))`
-/

namespace A044532.P2254830015810526754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A001222 (A233523 (n + 1)).toNat

end

end A044532.P2254830015810526754

/-! ## A044532.P10623550061398789831

`A044152(n+1)-A023532(A260017(n+1))`
-/

namespace A044532.P10623550061398789831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A023532 (A260017 (n + 1)).toNat

end

end A044532.P10623550061398789831

/-!
# A044533: Numbers n such that string 2,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044533, there is no canonical definition to state claims against.
-/

/-! ## A044533.P2234482138596442514

`A044153(n+1)-A113863(A136712(n))`
-/

namespace A044533.P2234482138596442514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A113863 (A136712 n).toNat

end

end A044533.P2234482138596442514

/-! ## A044533.P6026501811155902741

`A305807(A065107(n+1))+A044153(n+1)`
-/

namespace A044533.P6026501811155902741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A065107 (n + 1)).toNat + A044153 (n + 1)

end

end A044533.P6026501811155902741

/-! ## A044533.P745175121619718122

`A044153(n+1)-A001222(A211003(n+1))`
-/

namespace A044533.P745175121619718122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A001222 (A211003 (n + 1)).toNat

end

end A044533.P745175121619718122

/-! ## A044533.P11020745159519347163

`A044153(n+1)-A001222(A345905(n+1))`
-/

namespace A044533.P11020745159519347163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A001222 (A345905 (n + 1)).toNat

end

end A044533.P11020745159519347163

/-! ## A044533.P15786353671140374499

`A044153(n+1)-A078572(A292090(n+5))`
-/

namespace A044533.P15786353671140374499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A078572 (A292090 (n + 5)).toNat

end

end A044533.P15786353671140374499

/-!
# A044534: Numbers n such that string 2,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044534, there is no canonical definition to state claims against.
-/

/-! ## A044534.P6919282525442425555

`A044153(n+1)+(A044153(n+1)-A001222(A065107(n+1)))%7`
-/

namespace A044534.P6919282525442425555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) + Int.tmod (A044153 (n + 1) - A001222 (A065107 (n + 1)).toNat) 7

end

end A044534.P6919282525442425555

/-! ## A044534.P9214790985319085164

`A044153(n+1)+(A044153(n+1)-A001222(A211003(n+1)))%7`
-/

namespace A044534.P9214790985319085164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) + Int.tmod (A044153 (n + 1) - A001222 (A211003 (n + 1)).toNat) 7

end

end A044534.P9214790985319085164

/-! ## A044534.P16610829862309931573

`A044153(n+1)+(A044153(n+1)-A014963(A068293(n+1)))%7`
-/

namespace A044534.P16610829862309931573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) + Int.tmod (A044153 (n + 1) - A014963 (A068293 (n + 1)).toNat) 7

end

end A044534.P16610829862309931573

/-! ## A044534.P10692920892524638489

`or(A044153(n+1), A127775(A063894(n+3)))`
-/

namespace A044534.P10692920892524638489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044153 (n + 1)) (A127775 (A063894 (n + 3)).toNat)

end

end A044534.P10692920892524638489

/-! ## A044534.P5008349064171955371

`A044153(n+1)+(A044153(n+1)-A014963(A006542(n+4)))%7`
-/

namespace A044534.P5008349064171955371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) + Int.tmod (A044153 (n + 1) - A014963 (A006542 (n + 4)).toNat) 7

end

end A044534.P5008349064171955371

/-!
# A044535: Numbers n such that string 2,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044535, there is no canonical definition to state claims against.
-/

/-! ## A044535.P3451382353563935983

`A304205(n+1)+A304182(A304162(n+4))`
-/

namespace A044535.P3451382353563935983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A304182 (A304162 (n + 4)).toNat

end

end A044535.P3451382353563935983

/-! ## A044535.P7858108678166709448

`A094518(A208016(n+1))+A304205(n+1)+4`
-/

namespace A044535.P7858108678166709448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (A208016 (n + 1)).toNat + (A304205 (n + 1) + 4)

end

end A044535.P7858108678166709448

/-!
# A044536: Numbers n such that string 2,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044536, there is no canonical definition to state claims against.
-/

/-! ## A044536.P12993017968064350710

`A044156(n+1)-A247073(∑[n+1])`
-/

namespace A044536.P12993017968064350710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044156 (n + 1) - A247073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044536.P12993017968064350710

/-! ## A044536.P9162203026943633885

`A044156(n+1)-A057427(ceil(exp((n-1)/2)))`
-/

namespace A044536.P9162203026943633885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044156 (n + 1) - A057427 ⌈Real.exp (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌉.toNat

end

end A044536.P9162203026943633885

/-! ## A044536.P13137302569925789284

`A057428(A085157(n))+A044156(n+1)`
-/

namespace A044536.P13137302569925789284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A085157 n).toNat + A044156 (n + 1)

end

end A044536.P13137302569925789284

/-! ## A044536.P231821578031388429

`A057428(A102462(n))+A044156(n+1)`
-/

namespace A044536.P231821578031388429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A102462 n).toNat + A044156 (n + 1)

end

end A044536.P231821578031388429

/-! ## A044536.P15654079671794522211

`A044156(n+1)-A295924(A000219(n))`
-/

namespace A044536.P15654079671794522211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044156 (n + 1) - A295924 (A000219 n).toNat

end

end A044536.P15654079671794522211

/-!
# A044537: Numbers n such that string 2,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044537, there is no canonical definition to state claims against.
-/

/-! ## A044537.P2663367061724470998

`A044157(n+1)-A151722(n)!`
-/

namespace A044537.P2663367061724470998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044157 (n + 1) - (Nat.factorial (A151722 n).toNat : ℤ)

end

end A044537.P2663367061724470998

/-! ## A044537.P15996657006564774658

`A044157(n+1)-A151818(n)!`
-/

namespace A044537.P15996657006564774658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044157 (n + 1) - (Nat.factorial (A151818 n).toNat : ℤ)

end

end A044537.P15996657006564774658

/-! ## A044537.P837194948789206260

`A057428(A081437(n))+A044157(n+1)`
-/

namespace A044537.P837194948789206260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A081437 n).toNat + A044157 (n + 1)

end

end A044537.P837194948789206260

/-! ## A044537.P13553157611993157645

`A057428(A235353(n+1))+A044157(n+1)`
-/

namespace A044537.P13553157611993157645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A235353 (n + 1)).toNat + A044157 (n + 1)

end

end A044537.P13553157611993157645

/-! ## A044537.P4392111181429813817

`A057428(A252305(n+1))+A044157(n+1)`
-/

namespace A044537.P4392111181429813817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A252305 (n + 1)).toNat + A044157 (n + 1)

end

end A044537.P4392111181429813817

/-!
# A044538: Numbers n such that string 2,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044538, there is no canonical definition to state claims against.
-/

/-! ## A044538.P15839759506387417604

`A044158(n+1)-A119788(∑[∑{d}[n, #]]+1)`
-/

namespace A044538.P15839759506387417604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044158 (n + 1) - A119788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A044538.P15839759506387417604

/-! ## A044538.P12867962698410246197

`A044158(n+1)-A136755(A113340(n))`
-/

namespace A044538.P12867962698410246197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044158 (n + 1) - A136755 (A113340 n).toNat

end

end A044538.P12867962698410246197

/-! ## A044538.P8592664619440775308

`A260196(A142762(n+1))+A044158(n+1)`
-/

namespace A044538.P8592664619440775308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A142762 (n + 1)).toNat + A044158 (n + 1)

end

end A044538.P8592664619440775308

/-! ## A044538.P13908732395909044095

`A044158(n+1)-A006519(A001567(n+1))`
-/

namespace A044538.P13908732395909044095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044158 (n + 1) - A006519 (A001567 (n + 1)).toNat

end

end A044538.P13908732395909044095

/-! ## A044538.P3898406721373444514

`A044158(n+1)-A010051(A003459(n+1))`
-/

namespace A044538.P3898406721373444514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044158 (n + 1) - A010051 (A003459 (n + 1)).toNat

end

end A044538.P3898406721373444514

/-!
# A044539: Numbers n such that string 2,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044539, there is no canonical definition to state claims against.
-/

/-! ## A044539.P17796278793064154203

`A233583(A044159(n+1))`
-/

namespace A044539.P17796278793064154203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044159 (n + 1)).toNat

end

end A044539.P17796278793064154203

/-! ## A044539.P15785060084124841440

`A044159(n+1)-A014963(A075280(n+1))`
-/

namespace A044539.P15785060084124841440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044159 (n + 1) - A014963 (A075280 (n + 1)).toNat

end

end A044539.P15785060084124841440

/-! ## A044539.P17280897224396036749

`A044159(n+1)-A166486(A054800(n+1))`
-/

namespace A044539.P17280897224396036749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044159 (n + 1) - A166486 (A054800 (n + 1)).toNat

end

end A044539.P17280897224396036749

/-! ## A044539.P13101894161027347222

`A044159(n+1)-A225654(A000040(n+1))`
-/

namespace A044539.P13101894161027347222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044159 (n + 1) - A225654 (A000040 (n + 1)).toNat

end

end A044539.P13101894161027347222

/-! ## A044539.P10021480420888110912

`A044159(n+1)-A014963(A075285(n+2))`
-/

namespace A044539.P10021480420888110912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044159 (n + 1) - A014963 (A075285 (n + 2)).toNat

end

end A044539.P10021480420888110912

/-!
# A044540: Numbers n such that string 3,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044540, there is no canonical definition to state claims against.
-/

/-! ## A044540.P6732904009123459642

`A233583(A044160(n+1)-2)+2`
-/

namespace A044540.P6732904009123459642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044160 (n + 1) - 2).toNat + 2

end

end A044540.P6732904009123459642

/-! ## A044540.P516587982752746231

`A044160(n+1)-A000034(A045946(n))`
-/

namespace A044540.P516587982752746231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044160 (n + 1) - A000034 (A045946 n).toNat

end

end A044540.P516587982752746231

/-! ## A044540.P14310588790099096243

`A044160(n+1)-A200370(A000124(n))`
-/

namespace A044540.P14310588790099096243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044160 (n + 1) - A200370 (A000124 n).toNat

end

end A044540.P14310588790099096243

/-! ## A044540.P6282775353416796905

`A044160(n+1)-A010888(A060544(2*n+1))`
-/

namespace A044540.P6282775353416796905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044160 (n + 1) - A010888 (A060544 (2 * n + 1)).toNat

end

end A044540.P6282775353416796905

/-! ## A044540.P8735478446328734014

`A233583(A044160(n+1))`
-/

namespace A044540.P8735478446328734014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044160 (n + 1)).toNat

end

end A044540.P8735478446328734014

/-!
# A044541: Numbers n such that string 3,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044541, there is no canonical definition to state claims against.
-/

/-! ## A044541.P6639826579046344884

`A044161(n+1)-A000035(A001539(n))`
-/

namespace A044541.P6639826579046344884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044161 (n + 1) - A000035 (A001539 n).toNat

end

end A044541.P6639826579046344884

/-! ## A044541.P9044236443103585880

`A044161(n+1)-A000035(A005894(n))`
-/

namespace A044541.P9044236443103585880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044161 (n + 1) - A000035 (A005894 n).toNat

end

end A044541.P9044236443103585880

/-! ## A044541.P3551162735453240016

`A044161(n+1)-A000035(A142369(n+1))`
-/

namespace A044541.P3551162735453240016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044161 (n + 1) - A000035 (A142369 (n + 1)).toNat

end

end A044541.P3551162735453240016

/-! ## A044541.P5825055678592433399

`A233583(A044161(n+1)-n)+n`
-/

namespace A044541.P5825055678592433399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044161 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A044541.P5825055678592433399

/-! ## A044541.P6809320927054689254

`A233583(A044161(n+1))`
-/

namespace A044541.P6809320927054689254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044161 (n + 1)).toNat

end

end A044541.P6809320927054689254

/-!
# A044542: Numbers n such that string 3,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044542, there is no canonical definition to state claims against.
-/

/-! ## A044542.P9440565403398872437

`A335823(Δ[A044541(n+1)])+A044161(n+1)`
-/

namespace A044542.P9440565403398872437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335823 (f1 (n + 1) - f1 n).toNat + A044161 (n + 1)

end

end A044542.P9440565403398872437

/-! ## A044542.P9185023142777571654

`A248909(A079819(n))+A044541(n+1)`
-/

namespace A044542.P9185023142777571654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A079819 n).toNat + A044541 (n + 1)

end

end A044542.P9185023142777571654

/-!
# A044543: Numbers n such that string 3,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044543, there is no canonical definition to state claims against.
-/

/-! ## A044543.P9605837140640088063

`A168065(A338507(2^n))+A016993(A016993(n)+2)`
-/

namespace A044543.P9605837140640088063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168065 (A338507 (2 ^ n)).toNat + A016993 (A016993 n + 2).toNat

end

end A044543.P9605837140640088063

/-!
# A044544: Numbers k such that string 3,4 occurs in the base 7 representation of k but not of k+1.

The programs for A044544, there is no canonical definition to state claims against.
-/

/-! ## A044544.P13329368735408607261

`record[A057979(A044521(n+1))]`
-/

namespace A044544.P13329368735408607261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P13329368735408607261

/-! ## A044544.P18237490803275176625

`record[A025480(A044521(n+1)-1)]`
-/

namespace A044544.P18237490803275176625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044521 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P18237490803275176625

/-! ## A044544.P17641347550273055165

`record[A106466(A044521(n+1)-3)]`
-/

namespace A044544.P17641347550273055165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A044521 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P17641347550273055165

/-! ## A044544.P1092343062198135299

`record[A025480(xor(1, A044521(n+1)))]`
-/

namespace A044544.P1092343062198135299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A044521 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P1092343062198135299

/-! ## A044544.P1257363886650272021

`A044164(n+1)-A057427(A182900(n))`
-/

namespace A044544.P1257363886650272021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044164 (n + 1) - A057427 (A182900 n).toNat

end

end A044544.P1257363886650272021

/-!
# A044545: Numbers n such that string 3,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044545, there is no canonical definition to state claims against.
-/

/-! ## A044545.P8560592755808124832

`A044164(n+1)+A268354(A044164(n+1))-1`
-/

namespace A044545.P8560592755808124832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044164 (n + 1) + (A268354 (A044164 (n + 1)).toNat - 1)

end

end A044545.P8560592755808124832

/-! ## A044545.P4245928482968586982

`record[A057979(A044523(n+1))]`
-/

namespace A044545.P4245928482968586982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044545.P4245928482968586982

/-! ## A044545.P17746555499163080053

`A044165(n+1)-A001222(A134266(n+1))`
-/

namespace A044545.P17746555499163080053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044165 (n + 1) - A001222 (A134266 (n + 1)).toNat

end

end A044545.P17746555499163080053

/-! ## A044545.P2855325730234656743

`A326405(A093929(2*n+1))+A044165(n+1)`
-/

namespace A044545.P2855325730234656743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326405 (A093929 (2 * n + 1)).toNat + A044165 (n + 1)

end

end A044545.P2855325730234656743

/-! ## A044545.P6569010413953734468

`A044165(n+1)-A001222(A000043(n+1))`
-/

namespace A044545.P6569010413953734468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044165 (n + 1) - A001222 (A000043 (n + 1)).toNat

end

end A044545.P6569010413953734468

/-!
# A044546: Numbers n such that string 3,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044546, there is no canonical definition to state claims against.
-/

/-! ## A044546.P7182589427426013474

`A044166(n+1)-A151815(n)!`
-/

namespace A044546.P7182589427426013474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044166 (n + 1) - (Nat.factorial (A151815 n).toNat : ℤ)

end

end A044546.P7182589427426013474

/-! ## A044546.P14243731598586491836

`A044166(n+1)-A276837(∑[n])`
-/

namespace A044546.P14243731598586491836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044166 (n + 1) - A276837 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044546.P14243731598586491836

/-! ## A044546.P6193158571652837136

`A057428(A028287(n))+A044166(n+1)`
-/

namespace A044546.P6193158571652837136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028287 n).toNat + A044166 (n + 1)

end

end A044546.P6193158571652837136

/-! ## A044546.P9919954685641937685

`A057428(A008292(n+1))+A044166(n+1)`
-/

namespace A044546.P9919954685641937685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008292 (n + 1)).toNat + A044166 (n + 1)

end

end A044546.P9919954685641937685

/-! ## A044546.P3713318267425245491

`A057428(A183688(n+1))+A044166(n+1)`
-/

namespace A044546.P3713318267425245491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A183688 (n + 1)).toNat + A044166 (n + 1)

end

end A044546.P3713318267425245491

/-!
# A044547: Numbers n such that string 4,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044547, there is no canonical definition to state claims against.
-/

/-! ## A044547.P11680746273791226536

`A044167(n+1)-A007913(A017294(n))`
-/

namespace A044547.P11680746273791226536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044167 (n + 1) - A007913 (A017294 n).toNat

end

end A044547.P11680746273791226536

/-! ## A044547.P16715901929206834382

`A044167(n+1)-A000034(A033583(n))`
-/

namespace A044547.P16715901929206834382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044167 (n + 1) - A000034 (A033583 n).toNat

end

end A044547.P16715901929206834382

/-! ## A044547.P7932782181662460736

`A044167(n+1)-A001222(A062064(n+1))`
-/

namespace A044547.P7932782181662460736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044167 (n + 1) - A001222 (A062064 (n + 1)).toNat

end

end A044547.P7932782181662460736

/-! ## A044547.P12120900310628537091

`A044167(n+1)-A102669(A182711(3*n+5))`
-/

namespace A044547.P12120900310628537091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044167 (n + 1) - A102669 (A182711 (3 * n + 5)).toNat

end

end A044547.P12120900310628537091

/-! ## A044547.P17635653806350595947

`A113520(A044167(n+1))`
-/

namespace A044547.P17635653806350595947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044167 (n + 1)).toNat

end

end A044547.P17635653806350595947

/-!
# A044548: Numbers n such that string 4,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044548, there is no canonical definition to state claims against.
-/

/-! ## A044548.P5979506309168207570

`A132270(7*A044168(n+1))`
-/

namespace A044548.P5979506309168207570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (7 * A044168 (n + 1)).toNat

end

end A044548.P5979506309168207570

/-! ## A044548.P4628840044940259393

`A092220(A001504(n))+A044168(n+1)`
-/

namespace A044548.P4628840044940259393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (A001504 n).toNat + A044168 (n + 1)

end

end A044548.P4628840044940259393

/-! ## A044548.P3664877960964880147

`A044168(n+1)-A003415(A001269(n))`
-/

namespace A044548.P3664877960964880147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044168 (n + 1) - A003415 (A001269 n).toNat

end

end A044548.P3664877960964880147

/-! ## A044548.P786611165377407272

`A044168(n+1)-A010689(A007290(n))`
-/

namespace A044548.P786611165377407272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044168 (n + 1) - A010689 (A007290 n).toNat

end

end A044548.P786611165377407272

/-! ## A044548.P15690430233513848666

`A044168(n+1)-A003415(A052480(n))`
-/

namespace A044548.P15690430233513848666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044168 (n + 1) - A003415 (A052480 n).toNat

end

end A044548.P15690430233513848666

/-!
# A044549: Numbers n such that string 4,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044549, there is no canonical definition to state claims against.
-/

/-! ## A044549.P3666379152801253023

`A057428(A325832(n))+A044169(n+1)`
-/

namespace A044549.P3666379152801253023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A325832 n).toNat + A044169 (n + 1)

end

end A044549.P3666379152801253023

/-! ## A044549.P10585976845274406808

`A044169(n+1)-A001222(A066775(n+1))`
-/

namespace A044549.P10585976845274406808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044169 (n + 1) - A001222 (A066775 (n + 1)).toNat

end

end A044549.P10585976845274406808

/-! ## A044549.P1449038065796454811

`A044169(n+1)-A001222(A333424(n+1))`
-/

namespace A044549.P1449038065796454811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044169 (n + 1) - A001222 (A333424 (n + 1)).toNat

end

end A044549.P1449038065796454811

/-! ## A044549.P4065442176251115853

`A044169(n+1)-A057427(A339732(n))`
-/

namespace A044549.P4065442176251115853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044169 (n + 1) - A057427 (A339732 n).toNat

end

end A044549.P4065442176251115853

/-! ## A044549.P13758337905895354025

`A044169(n+1)-A001221(A240768(n+1))`
-/

namespace A044549.P13758337905895354025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044169 (n + 1) - A001221 (A240768 (n + 1)).toNat

end

end A044549.P13758337905895354025

/-!
# A044550: Numbers n such that string 4,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044550, there is no canonical definition to state claims against.
-/

/-! ## A044550.P5558796448983731436

`A321654(A156951(n))+A044168(n+1)`
-/

namespace A044550.P5558796448983731436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321654 (A156951 n).toNat + A044168 (n + 1)

end

end A044550.P5558796448983731436

/-! ## A044550.P13277383792902604544

`A293551(A055575(n+1))+A044168(n+1)`
-/

namespace A044550.P13277383792902604544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055575 (n + 1)).toNat + A044168 (n + 1)

end

end A044550.P13277383792902604544

/-! ## A044550.P1750908662505449752

`A086960(A338029(n+1))+A044167(n+1)`
-/

namespace A044550.P1750908662505449752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (A338029 (n + 1)).toNat + A044167 (n + 1)

end

end A044550.P1750908662505449752

/-!
# A044551: Numbers n such that string 4,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044551, there is no canonical definition to state claims against.
-/

/-! ## A044551.P1064241947096039793

`A157271(A044027(2*(n+1))-(2*n+1))`
-/

namespace A044551.P1064241947096039793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044027 (2 * (n + 1)) - (2 * n + 1 : ℤ)).toNat

end

end A044551.P1064241947096039793

/-! ## A044551.P4109555106440365848

`A120263(A175126(n)^n+2)+49*n+31`
-/

namespace A044551.P4109555106440365848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A175126 n ^ n + 2).toNat + (49 * n + 31 : ℤ)

end

end A044551.P4109555106440365848

/-! ## A044551.P8689891630014074217

`A185036(A154693(n))+A044170(n+1)`
-/

namespace A044551.P8689891630014074217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A154693 n).toNat + A044170 (n + 1)

end

end A044551.P8689891630014074217

/-!
# A044552: Numbers n such that string 4,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044552, there is no canonical definition to state claims against.
-/

/-! ## A044552.P6818538380895748591

`A044172(n+1)-A007318(A185284(n))`
-/

namespace A044552.P6818538380895748591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - A007318 (A185284 n).toNat

end

end A044552.P6818538380895748591

/-! ## A044552.P9724133457229123557

`A044172(n+1)+A008683(A007530(n+1))`
-/

namespace A044552.P9724133457229123557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) + A008683 (A007530 (n + 1)).toNat

end

end A044552.P9724133457229123557

/-! ## A044552.P3959230659186329654

`A044172(n+1)-A054977(A238486(n+1))`
-/

namespace A044552.P3959230659186329654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - A054977 (A238486 (n + 1)).toNat

end

end A044552.P3959230659186329654

/-! ## A044552.P13834981476153539161

`A044172(n+1)-A165022(A217089(2*n+3))`
-/

namespace A044552.P13834981476153539161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - A165022 (A217089 (2 * n + 3)).toNat

end

end A044552.P13834981476153539161

/-! ## A044552.P13230863436208279948

`A044172(n+1)-A007318(A093557(3*n+2))`
-/

namespace A044552.P13230863436208279948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - A007318 (A093557 (3 * n + 2)).toNat

end

end A044552.P13230863436208279948

/-!
# A044553: Numbers n such that string 4,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044553, there is no canonical definition to state claims against.
-/

/-! ## A044553.P12667067372610048987

`A044173(n+1)-A001511(∏[2-n²%3]-1)`
-/

namespace A044553.P12667067372610048987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044173 (n + 1) - A001511 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A044553.P12667067372610048987

/-! ## A044553.P3804261673253478

`A044173(n+1)-A054977(A117401(n))`
-/

namespace A044553.P3804261673253478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044173 (n + 1) - A054977 (A117401 n).toNat

end

end A044553.P3804261673253478

/-! ## A044553.P7711660134496809036

`A044173(n+1)-A001222(A099109(n+1))`
-/

namespace A044553.P7711660134496809036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044173 (n + 1) - A001222 (A099109 (n + 1)).toNat

end

end A044553.P7711660134496809036

/-! ## A044553.P2007098941650508338

`A044173(n+1)-A001222(A128390(n+1))`
-/

namespace A044553.P2007098941650508338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044173 (n + 1) - A001222 (A128390 (n + 1)).toNat

end

end A044553.P2007098941650508338

/-! ## A044553.P15393752853199636653

`A044173(n+1)-A054977(A317089(n+1))`
-/

namespace A044553.P15393752853199636653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044173 (n + 1) - A054977 (A317089 (n + 1)).toNat

end

end A044553.P15393752853199636653

/-!
# A044554: Numbers n such that string 5,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044554, there is no canonical definition to state claims against.
-/

/-! ## A044554.P9533970905370778783

`A044174(n+1)+A008683(A325088(n+1))`
-/

namespace A044554.P9533970905370778783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044174 (n + 1) + A008683 (A325088 (n + 1)).toNat

end

end A044554.P9533970905370778783

/-! ## A044554.P1174189858883110712

`A044174(n+1)+A008683(A325089(n+1))`
-/

namespace A044554.P1174189858883110712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044174 (n + 1) + A008683 (A325089 (n + 1)).toNat

end

end A044554.P1174189858883110712

/-! ## A044554.P5314641303534940066

`A044174(n+1)+A008683(A341085(n+1))`
-/

namespace A044554.P5314641303534940066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044174 (n + 1) + A008683 (A341085 (n + 1)).toNat

end

end A044554.P5314641303534940066

/-! ## A044554.P16735630266182484812

`A044174(n+1)-A050377(A090686(n+4))`
-/

namespace A044554.P16735630266182484812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044174 (n + 1) - A050377 (A090686 (n + 4)).toNat

end

end A044554.P16735630266182484812

/-! ## A044554.P5684513373549236421

`A044174(n+1)-A320656(A243758(n))`
-/

namespace A044554.P5684513373549236421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044174 (n + 1) - A320656 (A243758 n).toNat

end

end A044554.P5684513373549236421

/-!
# A044555: Numbers n such that string 5,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044555, there is no canonical definition to state claims against.
-/

/-! ## A044555.P11656800089711453959

`(A044175(n+1)-1)%A166227(n+1)`
-/

namespace A044555.P11656800089711453959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044175 (n + 1) - 1) (A166227 (n + 1))

end

end A044555.P11656800089711453959

/-! ## A044555.P14043333253976211643

`A044175(n+1)-A174546(A317144(2*n+1))`
-/

namespace A044555.P14043333253976211643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044175 (n + 1) - A174546 (A317144 (2 * n + 1)).toNat

end

end A044555.P14043333253976211643

/-! ## A044555.P10014905502433591084

`A044175(n+1)-A057427(A000326(2*(n+1)))`
-/

namespace A044555.P10014905502433591084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044175 (n + 1) - A057427 (A000326 (2 * (n + 1))).toNat

end

end A044555.P10014905502433591084

/-! ## A044555.P9936061406529196189

`A044175(n+1)-A001222(A181741(n+1))`
-/

namespace A044555.P9936061406529196189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044175 (n + 1) - A001222 (A181741 (n + 1)).toNat

end

end A044555.P9936061406529196189

/-! ## A044555.P1592100516352472920

`A044175(n+1)-A001222(A088486(n+1))`
-/

namespace A044555.P1592100516352472920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044175 (n + 1) - A001222 (A088486 (n + 1)).toNat

end

end A044555.P1592100516352472920

/-!
# A044556: Numbers n such that string 5,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044556, there is no canonical definition to state claims against.
-/

/-! ## A044556.P10221918613764763559

`A057428(A005186(n))+A044176(n+1)`
-/

namespace A044556.P10221918613764763559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A005186 n).toNat + A044176 (n + 1)

end

end A044556.P10221918613764763559

/-! ## A044556.P5553236533679251338

`A044176(n+1)+A008683(A145047(n+1))`
-/

namespace A044556.P5553236533679251338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044176 (n + 1) + A008683 (A145047 (n + 1)).toNat

end

end A044556.P5553236533679251338

/-! ## A044556.P18375730253129014381

`A044176(n+1)+A008683(A145048(n+1))`
-/

namespace A044556.P18375730253129014381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044176 (n + 1) + A008683 (A145048 (n + 1)).toNat

end

end A044556.P18375730253129014381

/-! ## A044556.P677080773530363857

`A044176(n+1)-A000035(A052333(n+1))`
-/

namespace A044556.P677080773530363857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044176 (n + 1) - A000035 (A052333 (n + 1)).toNat

end

end A044556.P677080773530363857

/-! ## A044556.P1202739965601684741

`A044176(n+1)-A001221(A188836(n+1))`
-/

namespace A044556.P1202739965601684741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044176 (n + 1) - A001221 (A188836 (n + 1)).toNat

end

end A044556.P1202739965601684741

/-!
# A044557: Numbers n such that string 5,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044557, there is no canonical definition to state claims against.
-/

/-! ## A044557.P13558768755366177505

`A044177(n+1)-A000108(A151622(n))`
-/

namespace A044557.P13558768755366177505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044177 (n + 1) - A000108 (A151622 n).toNat

end

end A044557.P13558768755366177505

/-! ## A044557.P7327146043118906971

`A044177(n+1)-A057427(A092559(n+1))`
-/

namespace A044557.P7327146043118906971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044177 (n + 1) - A057427 (A092559 (n + 1)).toNat

end

end A044557.P7327146043118906971

/-! ## A044557.P11772692827434895167

`A044177(n+1)-A001222(A180441(n+1))`
-/

namespace A044557.P11772692827434895167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044177 (n + 1) - A001222 (A180441 (n + 1)).toNat

end

end A044557.P11772692827434895167

/-! ## A044557.P12717180368741975728

`A044177(n+1)-A001222(A325085(n+1))`
-/

namespace A044557.P12717180368741975728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044177 (n + 1) - A001222 (A325085 (n + 1)).toNat

end

end A044557.P12717180368741975728

/-! ## A044557.P2737152986427309624

`A044177(n+1)-A001222(A325086(n+1))`
-/

namespace A044557.P2737152986427309624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044177 (n + 1) - A001222 (A325086 (n + 1)).toNat

end

end A044557.P2737152986427309624

/-!
# A044558: Numbers n such that string 5,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044558, there is no canonical definition to state claims against.
-/

/-! ## A044558.P3696764050586188558

`or(A044177(n+1), A321538(A334581(n)))`
-/

namespace A044558.P3696764050586188558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044177 (n + 1)) (A321538 (A334581 n).toNat)

end

end A044558.P3696764050586188558

/-! ## A044558.P5437448097837417485

`A044176(n+1)+A014963(A147208(n+1))`
-/

namespace A044558.P5437448097837417485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044176 (n + 1) + A014963 (A147208 (n + 1)).toNat

end

end A044558.P5437448097837417485

/-! ## A044558.P14032819079683870792

`or(A044177(n+1), A122357(A256069(n)))`
-/

namespace A044558.P14032819079683870792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044177 (n + 1)) (A122357 (A256069 n).toNat)

end

end A044558.P14032819079683870792

/-!
# A044559: Numbers n such that string 5,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044559, there is no canonical definition to state claims against.
-/

/-! ## A044559.P7229277980423088528

`record[A057979(A044551(n+2))]`
-/

namespace A044559.P7229277980423088528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044551 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044559.P7229277980423088528

/-! ## A044559.P17135072172926015757

`A004526(A044551(2*(n+1)))`
-/

namespace A044559.P17135072172926015757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044551 (2 * (n + 1))).toNat

end

end A044559.P17135072172926015757

/-! ## A044559.P4971620088659282890

`A057979(A044551(2*n+2))`
-/

namespace A044559.P4971620088659282890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044551 (2 * n + 2)).toNat

end

end A044559.P4971620088659282890

/-! ## A044559.P6231743961120480867

`A060681(A044551(2*(n+1))-1)`
-/

namespace A044559.P6231743961120480867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A044551 (2 * (n + 1)) - 1).toNat

end

end A044559.P6231743961120480867

/-! ## A044559.P4678048483000532523

`A110654(A044551(2*(n+1))-1)`
-/

namespace A044559.P4678048483000532523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A044551 (2 * (n + 1)) - 1).toNat

end

end A044559.P4678048483000532523

/-! ## A044559.P17816131291689517084

`A166514(A044551(2*(n+1))-1)`
-/

namespace A044559.P17816131291689517084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044551 (2 * (n + 1)) - 1).toNat

end

end A044559.P17816131291689517084

/-!
# A044560: Numbers k such that string 5,6 occurs in the base 7 representation of k but not of k+1.

The programs for A044560, there is no canonical definition to state claims against.
-/

/-! ## A044560.P13558637331769807823

`∩[A043931(n+1), A047287(n+1)]`
-/

namespace A044560.P13558637331769807823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P13558637331769807823

/-! ## A044560.P4309189036976457157

`∩[A043931(n+1), A047295(n+1)]`
-/

namespace A044560.P4309189036976457157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P4309189036976457157

/-! ## A044560.P6702093676755874789

`∩[A043931(n+1), A047299(n+1)]`
-/

namespace A044560.P6702093676755874789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P6702093676755874789

/-! ## A044560.P800577037586626671

`∩[A043931(n+1), A047301(n+1)]`
-/

namespace A044560.P800577037586626671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P800577037586626671

/-! ## A044560.P5866186108306934744

`∩[A043931(n+1), A047302(n+1)]`
-/

namespace A044560.P5866186108306934744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P5866186108306934744

/-! ## A044560.P779665226393815115

`∩[A043931(n+1), A314458(n)]`
-/

namespace A044560.P779665226393815115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P779665226393815115

/-! ## A044560.P14635902084768791161

`filter[A043931(n+1), A011657(#)]`
-/

namespace A044560.P14635902084768791161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011657 (f1 j).toNat = 1) n)

end

end A044560.P14635902084768791161

/-! ## A044560.P1348038335645806982

`filter[A043931(n+1), A098457(#)]`
-/

namespace A044560.P1348038335645806982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098457 (f1 j).toNat = 1) n)

end

end A044560.P1348038335645806982

/-! ## A044560.P8671796052008243747

`filter[A043931(n+1), A258869(#)]`
-/

namespace A044560.P8671796052008243747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A258869 (f1 j).toNat = 1) n)

end

end A044560.P8671796052008243747

/-! ## A044560.P1002146061626366937

`filter[A043931(n+1), A274950(#)]`
-/

namespace A044560.P1002146061626366937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A274950 (f1 j).toNat = 1) n)

end

end A044560.P1002146061626366937

/-!
# A044561: Numbers n such that string 6,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044561, there is no canonical definition to state claims against.
-/

/-! ## A044561.P6463108456897621021

`record[A057979(A044555(n+2))]`
-/

namespace A044561.P6463108456897621021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044555 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044561.P6463108456897621021

/-! ## A044561.P6731628973251308910

`A044181(n+1)-A057427(A107235(n))`
-/

namespace A044561.P6731628973251308910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044181 (n + 1) - A057427 (A107235 n).toNat

end

end A044561.P6731628973251308910

/-! ## A044561.P15245023639873224959

`A044181(n+1)-A001222(A095103(n+1))`
-/

namespace A044561.P15245023639873224959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044181 (n + 1) - A001222 (A095103 (n + 1)).toNat

end

end A044561.P15245023639873224959

/-! ## A044561.P10025846511870965483

`A307445(A112804(n+1))+A044181(n+1)`
-/

namespace A044561.P10025846511870965483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A112804 (n + 1)).toNat + A044181 (n + 1)

end

end A044561.P10025846511870965483

/-! ## A044561.P4805282142666770651

`A233583(A044181(n+1))`
-/

namespace A044561.P4805282142666770651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044181 (n + 1)).toNat

end

end A044561.P4805282142666770651

/-!
# A044562: Numbers n such that string 6,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044562, there is no canonical definition to state claims against.
-/

/-! ## A044562.P4228332523321357691

`A044182(n+1)-A007318(A112355(n+1))`
-/

namespace A044562.P4228332523321357691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044182 (n + 1) - A007318 (A112355 (n + 1)).toNat

end

end A044562.P4228332523321357691

/-! ## A044562.P149624094254912826

`A044182(n+1)-A001222(A155030(n+1))`
-/

namespace A044562.P149624094254912826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044182 (n + 1) - A001222 (A155030 (n + 1)).toNat

end

end A044562.P149624094254912826

/-! ## A044562.P12018621388920266711

`A044182(n+1)-A001221(A050784(2*n+1))`
-/

namespace A044562.P12018621388920266711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044182 (n + 1) - A001221 (A050784 (2 * n + 1)).toNat

end

end A044562.P12018621388920266711

/-! ## A044562.P10053858695933405810

`A057428(A044205(3*n+4))+A044182(n+1)`
-/

namespace A044562.P10053858695933405810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A044205 (3 * n + 4)).toNat + A044182 (n + 1)

end

end A044562.P10053858695933405810

/-! ## A044562.P12768795318131634967

`A233583(A044182(n+1))`
-/

namespace A044562.P12768795318131634967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044182 (n + 1)).toNat

end

end A044562.P12768795318131634967

/-!
# A044564: Numbers n such that string 6,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044564, there is no canonical definition to state claims against.
-/

/-! ## A044564.P5294484561003065960

`A044184(n+1)-A000035(A002146(n))`
-/

namespace A044564.P5294484561003065960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (n + 1) - A000035 (A002146 n).toNat

end

end A044564.P5294484561003065960

/-! ## A044564.P1502487119838821521

`A044184(n+1)-A001222(A155884(n))`
-/

namespace A044564.P1502487119838821521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (n + 1) - A001222 (A155884 n).toNat

end

end A044564.P1502487119838821521

/-! ## A044564.P17141084363226734490

`A044184(n+1)-A057427(A124560(n))`
-/

namespace A044564.P17141084363226734490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (n + 1) - A057427 (A124560 n).toNat

end

end A044564.P17141084363226734490

/-! ## A044564.P18392522797667934277

`A044184(n+1)+A033999(A060845(n+1))`
-/

namespace A044564.P18392522797667934277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (n + 1) + A033999 (A060845 (n + 1)).toNat

end

end A044564.P18392522797667934277

/-! ## A044564.P16932413197859554711

`A044184(n+1)+A008683(A182365(n+1))`
-/

namespace A044564.P16932413197859554711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (n + 1) + A008683 (A182365 (n + 1)).toNat

end

end A044564.P16932413197859554711

/-! ## A044564.P2743126667261981608

`A044184(n+1)-A098725(A069682(n+1))`
-/

namespace A044564.P2743126667261981608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (n + 1) - A098725 (A069682 (n + 1)).toNat

end

end A044564.P2743126667261981608

/-! ## A044564.P2107999361515993857

`A044184(n+1)-A001222(A336790(n+1))`
-/

namespace A044564.P2107999361515993857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (n + 1) - A001222 (A336790 (n + 1)).toNat

end

end A044564.P2107999361515993857

/-!
# A044565: Numbers n such that string 6,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044565, there is no canonical definition to state claims against.
-/

/-! ## A044565.P18361757071341055005

`A057428(A025065(n))+A044185(n+1)`
-/

namespace A044565.P18361757071341055005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A025065 n).toNat + A044185 (n + 1)

end

end A044565.P18361757071341055005

/-! ## A044565.P1247181282665847761

`A057428(A250261(n)²)+A044185(n+1)`
-/

namespace A044565.P1247181282665847761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A250261 n ^ 2).toNat + A044185 (n + 1)

end

end A044565.P1247181282665847761

/-! ## A044565.P12405099410442856767

`A057428(A056773(n+1))+A044185(n+1)`
-/

namespace A044565.P12405099410442856767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A056773 (n + 1)).toNat + A044185 (n + 1)

end

end A044565.P12405099410442856767

/-! ## A044565.P2022088293622890787

`A057428(A140599(n+1))+A044185(n+1)`
-/

namespace A044565.P2022088293622890787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A140599 (n + 1)).toNat + A044185 (n + 1)

end

end A044565.P2022088293622890787

/-! ## A044565.P1227049098836516072

`A044185(n+1)-A001222(A229609(n+1))`
-/

namespace A044565.P1227049098836516072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044185 (n + 1) - A001222 (A229609 (n + 1)).toNat

end

end A044565.P1227049098836516072

/-! ## A044565.P13652865558586725328

`A044185(n+1)-A001222(A229610(n+1))`
-/

namespace A044565.P13652865558586725328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044185 (n + 1) - A001222 (A229610 (n + 1)).toNat

end

end A044565.P13652865558586725328

/-! ## A044565.P12427618355007260829

`A044185(n+1)-A020985(A056672(n+1)²)`
-/

namespace A044565.P12427618355007260829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044185 (n + 1) - A020985 (A056672 (n + 1) ^ 2).toNat

end

end A044565.P12427618355007260829

/-! ## A044565.P17255409524451609962

`A044185(n+1)-A176346(A014106(n))`
-/

namespace A044565.P17255409524451609962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044185 (n + 1) - A176346 (A014106 n).toNat

end

end A044565.P17255409524451609962

/-!
# A044566: Numbers n such that string 6,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044566, there is no canonical definition to state claims against.
-/

/-! ## A044566.P17387745563830145976

`or(A044185(n+1), A185284(A276094(n)²))`
-/

namespace A044566.P17387745563830145976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044185 (n + 1)) (A185284 (A276094 n ^ 2).toNat)

end

end A044566.P17387745563830145976

/-! ## A044566.P2670916977525222164

`A147220(A135223(n+1))+A044184(n+1)`
-/

namespace A044566.P2670916977525222164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (A135223 (n + 1)).toNat + A044184 (n + 1)

end

end A044566.P2670916977525222164

/-! ## A044566.P588182578818586829

`or(A033718(A025529(n+1)), A044185(n+1))`
-/

namespace A044566.P588182578818586829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033718 (A025529 (n + 1)).toNat) (A044185 (n + 1))

end

end A044566.P588182578818586829

/-!
# A044567: Numbers n such that string 6,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044567, there is no canonical definition to state claims against.
-/

/-! ## A044567.P16186803253786234448

`49*(n+1)-A001221(A032758(n+1))`
-/

namespace A044567.P16186803253786234448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * (n + 1) : ℤ) - A001221 (A032758 (n + 1)).toNat

end

end A044567.P16186803253786234448

/-! ## A044567.P8103360414893657273

`49*(n+1)-A034947(A000203(n+1)²)`
-/

namespace A044567.P8103360414893657273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * (n + 1) : ℤ) - A034947 (A000203 (n + 1) ^ 2).toNat

end

end A044567.P8103360414893657273

/-! ## A044567.P17829691786503644322

`49*(n+1)-A071035(A000203(n+1)²)`
-/

namespace A044567.P17829691786503644322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * (n + 1) : ℤ) - A071035 (A000203 (n + 1) ^ 2).toNat

end

end A044567.P17829691786503644322

/-! ## A044567.P3514699196911078867

`(49*(n+1)-1)*A001222(A087877(n+1))`
-/

namespace A044567.P3514699196911078867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((49 * (n + 1) : ℤ) - 1) * A001222 (A087877 (n + 1)).toNat

end

end A044567.P3514699196911078867

/-! ## A044567.P17917811671458071788

`49*n+50-A100063(A000217(3*n+2))`
-/

namespace A044567.P17917811671458071788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n + 50 : ℤ) - A100063 (A000217 (3 * n + 2)).toNat

end

end A044567.P17917811671458071788

/-!
# A044568: Numbers n such that string 0,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044568, there is no canonical definition to state claims against.
-/

/-! ## A044568.P5881923697450177267

`A100710(A044250(n+1))`
-/

namespace A044568.P5881923697450177267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100710 (A044250 (n + 1)).toNat

end

end A044568.P5881923697450177267

/-! ## A044568.P277095841062306328

`A233583(A044187(n+1)+A008834(n+1))`
-/

namespace A044568.P277095841062306328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044187 (n + 1) + A008834 (n + 1)).toNat

end

end A044568.P277095841062306328

/-! ## A044568.P2844090751520813404

`A233583(A044187(n+1))+A056191(n+1)`
-/

namespace A044568.P2844090751520813404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044187 (n + 1)).toNat + A056191 (n + 1)

end

end A044568.P2844090751520813404

/-! ## A044568.P16881886107692915702

`A233583(A008834(n+1)+A158071(n+1)-1)`
-/

namespace A044568.P16881886107692915702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A008834 (n + 1) + (A158071 (n + 1) - 1)).toNat

end

end A044568.P16881886107692915702

/-! ## A044568.P16744375024009033578

`A056191(A187829(n+1))+A004771(A004771(n))`
-/

namespace A044568.P16744375024009033578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (A187829 (n + 1)).toNat + A004771 (A004771 n).toNat

end

end A044568.P16744375024009033578

/-!
# A044569: Numbers n such that string 0,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044569, there is no canonical definition to state claims against.
-/

/-! ## A044569.P7107809426933896329

`or(A044188(n+1)-1, A044188(n+1))`
-/

namespace A044569.P7107809426933896329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044188 (n + 1) - 1) (A044188 (n + 1))

end

end A044569.P7107809426933896329

/-! ## A044569.P6371385939830171121

`or(A044188(n+1), A322016(A044188(n+1)))`
-/

namespace A044569.P6371385939830171121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044188 (n + 1)) (A322016 (A044188 (n + 1)).toNat)

end

end A044569.P6371385939830171121

/-! ## A044569.P1679081809287644597

`A086799(A044188(n+1))`
-/

namespace A044569.P1679081809287644597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044188 (n + 1)).toNat

end

end A044569.P1679081809287644597

/-! ## A044569.P6226688628818065995

`A087960(A051890(n))+A044189(n+1)`
-/

namespace A044569.P6226688628818065995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A051890 n).toNat + A044189 (n + 1)

end

end A044569.P6226688628818065995

/-! ## A044569.P14683136661758951068

`A117569(A051890(n)+1)+A044189(n+1)`
-/

namespace A044569.P14683136661758951068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A051890 n + 1).toNat + A044189 (n + 1)

end

end A044569.P14683136661758951068

/-! ## A044569.P4080330856582941842

`A044189(n+1)-A053164(A070045(n+1))`
-/

namespace A044569.P4080330856582941842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044189 (n + 1) - A053164 (A070045 (n + 1)).toNat

end

end A044569.P4080330856582941842

/-! ## A044569.P1070791528962083679

`A044189(n+1)-A001222(A088524(n+3))`
-/

namespace A044569.P1070791528962083679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044189 (n + 1) - A001222 (A088524 (n + 3)).toNat

end

end A044569.P1070791528962083679

/-! ## A044569.P4816173096594500548

`(A044189(n+1)-1)%A000203(A348826(n+1))`
-/

namespace A044569.P4816173096594500548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044189 (n + 1) - 1) (A000203 (A348826 (n + 1)).toNat)

end

end A044569.P4816173096594500548

/-!
# A044570: Numbers n such that string 0,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044570, there is no canonical definition to state claims against.
-/

/-! ## A044570.P13151295244098837909

`A057168(A044189(n+1)-1)`
-/

namespace A044570.P13151295244098837909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044189 (n + 1) - 1).toNat

end

end A044570.P13151295244098837909

/-! ## A044570.P17576194508593972779

`A057168(A099837(3*n+1)+A044189(n+1))`
-/

namespace A044570.P17576194508593972779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A099837 (3 * n + 1) + A044189 (n + 1)).toNat

end

end A044570.P17576194508593972779

/-! ## A044570.P4702219784018173135

`A057168(A057428(2*n+3)+A044189(n+1))`
-/

namespace A044570.P4702219784018173135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A057428 (2 * n + 3) + A044189 (n + 1)).toNat

end

end A044570.P4702219784018173135

/-! ## A044570.P11877562388903933194

`A044190(n+1)-A040484(p?[17*n-1])`
-/

namespace A044570.P11877562388903933194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044190 (n + 1) - A040484 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044570.P11877562388903933194

/-! ## A044570.P6031360175800586708

`A044190(n+1)-A168182(p?[17*n-1])`
-/

namespace A044570.P6031360175800586708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044190 (n + 1) - A168182 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044570.P6031360175800586708

/-! ## A044570.P16279659207382405904

`A057428(A307855(n))+A044190(n+1)`
-/

namespace A044570.P16279659207382405904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A307855 n).toNat + A044190 (n + 1)

end

end A044570.P16279659207382405904

/-! ## A044570.P522170486603428516

`A057428(A113724(n+1))+A044190(n+1)`
-/

namespace A044570.P522170486603428516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A113724 (n + 1)).toNat + A044190 (n + 1)

end

end A044570.P522170486603428516

/-! ## A044570.P4541524110468239922

`A044190(n+1)-A059841(A160159(n+1))`
-/

namespace A044570.P4541524110468239922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044190 (n + 1) - A059841 (A160159 (n + 1)).toNat

end

end A044570.P4541524110468239922

/-! ## A044570.P5635920898847606350

`A044190(n+1)-A178334(A093697(n+1))`
-/

namespace A044570.P5635920898847606350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044190 (n + 1) - A178334 (A093697 (n + 1)).toNat

end

end A044570.P5635920898847606350

/-! ## A044570.P16707363031081583314

`A044190(n+1)-A140345(A139919(n+1))`
-/

namespace A044570.P16707363031081583314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044190 (n + 1) - A140345 (A139919 (n + 1)).toNat

end

end A044570.P16707363031081583314

/-!
# A044571: Numbers n such that string 0,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044571, there is no canonical definition to state claims against.
-/

/-! ## A044571.P4978725642617926841

`or(A044190(n+1)-1, A044190(n+1))`
-/

namespace A044571.P4978725642617926841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044190 (n + 1) - 1) (A044190 (n + 1))

end

end A044571.P4978725642617926841

/-! ## A044571.P16098731997208367619

`A086799(A044190(n+1))`
-/

namespace A044571.P16098731997208367619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044190 (n + 1)).toNat

end

end A044571.P16098731997208367619

/-! ## A044571.P6535108968148292030

`A044191(n+1)+A033999(A307701(n+1))`
-/

namespace A044571.P6535108968148292030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044191 (n + 1) + A033999 (A307701 (n + 1)).toNat

end

end A044571.P6535108968148292030

/-! ## A044571.P13870283571825298219

`A044191(n+1)-A000688(A073489(n+1))`
-/

namespace A044571.P13870283571825298219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044191 (n + 1) - A000688 (A073489 (n + 1)).toNat

end

end A044571.P13870283571825298219

/-! ## A044571.P7171540475480782475

`A044191(n+1)-A010137(A139997(n+1))`
-/

namespace A044571.P7171540475480782475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044191 (n + 1) - A010137 (A139997 (n + 1)).toNat

end

end A044571.P7171540475480782475

/-! ## A044571.P6437582203140864494

`A044191(n+1)-A304042(A299757(n+1))`
-/

namespace A044571.P6437582203140864494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044191 (n + 1) - A304042 (A299757 (n + 1)).toNat

end

end A044571.P6437582203140864494

/-! ## A044571.P8424458008996141122

`A044191(n+1)-A000035(A142152(n+1))`
-/

namespace A044571.P8424458008996141122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044191 (n + 1) - A000035 (A142152 (n + 1)).toNat

end

end A044571.P8424458008996141122

/-! ## A044571.P1339231165840626909

`A044191(n+1)-A001222(A181562(n+1))`
-/

namespace A044571.P1339231165840626909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044191 (n + 1) - A001222 (A181562 (n + 1)).toNat

end

end A044571.P1339231165840626909

/-!
# A044572: Numbers n such that string 0,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044572, there is no canonical definition to state claims against.
-/

/-! ## A044572.P8555248411391812733

`(A044192(n+1)-1)%A260705(n+1)`
-/

namespace A044572.P8555248411391812733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044192 (n + 1) - 1) (A260705 (n + 1))

end

end A044572.P8555248411391812733

/-! ## A044572.P15962953318654238765

`A044192(n+1)-ceil(acot(A260300(n+1)))`
-/

namespace A044572.P15962953318654238765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044192 (n + 1) - ⌈SequenceMachineLib.acot (A260300 (n + 1) : ℝ)⌉

end

end A044572.P15962953318654238765

/-! ## A044572.P8349331935221331028

`A057428(A003114(n))+A044192(n+1)`
-/

namespace A044572.P8349331935221331028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003114 n).toNat + A044192 (n + 1)

end

end A044572.P8349331935221331028

/-! ## A044572.P78400920281918456

`A057428(A225644(n))+A044192(n+1)`
-/

namespace A044572.P78400920281918456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A225644 n).toNat + A044192 (n + 1)

end

end A044572.P78400920281918456

/-! ## A044572.P9856813706185026095

`A057428(A269918(n))+A044192(n+1)`
-/

namespace A044572.P9856813706185026095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A269918 n).toNat + A044192 (n + 1)

end

end A044572.P9856813706185026095

/-! ## A044572.P7883432847682731780

`A057428(A278241(n))+A044192(n+1)`
-/

namespace A044572.P7883432847682731780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A278241 n).toNat + A044192 (n + 1)

end

end A044572.P7883432847682731780

/-! ## A044572.P9679281021435817574

`A044192(n+1)-A292438(A255185(n))`
-/

namespace A044572.P9679281021435817574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044192 (n + 1) - A292438 (A255185 n).toNat

end

end A044572.P9679281021435817574

/-! ## A044572.P1890691311586679177

`A044192(n+1)-A337335(A284554(n))`
-/

namespace A044572.P1890691311586679177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044192 (n + 1) - A337335 (A284554 n).toNat

end

end A044572.P1890691311586679177

/-! ## A044572.P681509039988592731

`A044192(n+1)+A008836(A268629(n+1))`
-/

namespace A044572.P681509039988592731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044192 (n + 1) + A008836 (A268629 (n + 1)).toNat

end

end A044572.P681509039988592731

/-! ## A044572.P16570353617337537133

`A044192(n+1)-A001222(A104822(n+1))`
-/

namespace A044572.P16570353617337537133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044192 (n + 1) - A001222 (A104822 (n + 1)).toNat

end

end A044572.P16570353617337537133

/-!
# A044573: Numbers n such that string 0,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044573, there is no canonical definition to state claims against.
-/

/-! ## A044573.P2654603740359063369

`or(A044192(n+1)-1, A044192(n+1))`
-/

namespace A044573.P2654603740359063369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044192 (n + 1) - 1) (A044192 (n + 1))

end

end A044573.P2654603740359063369

/-! ## A044573.P2016000753444844815

`A086799(A044192(n+1))`
-/

namespace A044573.P2016000753444844815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044192 (n + 1)).toNat

end

end A044573.P2016000753444844815

/-! ## A044573.P10524304739054830850

`A057168(A044192(C(n+1, n)))-1`
-/

namespace A044573.P10524304739054830850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044192 (Nat.choose (n + 1) n)).toNat - 1

end

end A044573.P10524304739054830850

/-! ## A044573.P8549387427163391113

`A057168(A044192(2*n-n+1))-1`
-/

namespace A044573.P8549387427163391113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044192 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat - 1

end

end A044573.P8549387427163391113

/-! ## A044573.P17640660944521125131

`A057428(n+1)+A057168(A044192(n+1))`
-/

namespace A044573.P17640660944521125131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A057168 (A044192 (n + 1)).toNat

end

end A044573.P17640660944521125131

/-!
# A044574: Numbers n such that string 0,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044574, there is no canonical definition to state claims against.
-/

/-! ## A044574.P13700390462305903590

`A057168(A044193(n+1)-1)`
-/

namespace A044574.P13700390462305903590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044193 (n + 1) - 1).toNat

end

end A044574.P13700390462305903590

/-! ## A044574.P17926387252362096910

`A057168(A057428(n+1)+A044193(n+1))`
-/

namespace A044574.P17926387252362096910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A057428 (n + 1) + A044193 (n + 1)).toNat

end

end A044574.P17926387252362096910

/-! ## A044574.P15356387245695953658

`A057428(A291168(n))+A044194(n+1)`
-/

namespace A044574.P15356387245695953658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A291168 n).toNat + A044194 (n + 1)

end

end A044574.P15356387245695953658

/-! ## A044574.P17315163892332510832

`A057428(A056057(n+1))+A044194(n+1)`
-/

namespace A044574.P17315163892332510832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A056057 (n + 1)).toNat + A044194 (n + 1)

end

end A044574.P17315163892332510832

/-! ## A044574.P1457018623665420235

`A044194(n+1)+A008836(A139847(n+1))`
-/

namespace A044574.P1457018623665420235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1) + A008836 (A139847 (n + 1)).toNat

end

end A044574.P1457018623665420235

/-! ## A044574.P5593861675305500280

`A044194(n+1)+A008836(A139969(n+1))`
-/

namespace A044574.P5593861675305500280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1) + A008836 (A139969 (n + 1)).toNat

end

end A044574.P5593861675305500280

/-! ## A044574.P13197066502826752911

`A044194(n+1)+A008836(A140633(n+1))`
-/

namespace A044574.P13197066502826752911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1) + A008836 (A140633 (n + 1)).toNat

end

end A044574.P13197066502826752911

/-! ## A044574.P10046436124502050985

`A044194(n+1)-A007318(A244846(n+1))`
-/

namespace A044574.P10046436124502050985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1) - A007318 (A244846 (n + 1)).toNat

end

end A044574.P10046436124502050985

/-! ## A044574.P2672653390957788557

`A044194(n+1)-A121262(A271915(n+1))`
-/

namespace A044574.P2672653390957788557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1) - A121262 (A271915 (n + 1)).toNat

end

end A044574.P2672653390957788557

/-! ## A044574.P32589320358636223

`A044194(n+1)-A001222(A340817(n+2))`
-/

namespace A044574.P32589320358636223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1) - A001222 (A340817 (n + 2)).toNat

end

end A044574.P32589320358636223

/-!
# A044575: Numbers n such that string 0,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044575, there is no canonical definition to state claims against.
-/

/-! ## A044575.P12769147973004397656

`or(A044194(n+1)-1, A044194(n+1))`
-/

namespace A044575.P12769147973004397656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044194 (n + 1) - 1) (A044194 (n + 1))

end

end A044575.P12769147973004397656

/-! ## A044575.P4847665367192834818

`A086799(A044194(n+1))`
-/

namespace A044575.P4847665367192834818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044194 (n + 1)).toNat

end

end A044575.P4847665367192834818

/-! ## A044575.P13610345486444224223

`or(7, A044574(n+1)+A008836(A056057(n+1)))`
-/

namespace A044575.P13610345486444224223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A044574 (n + 1) + A008836 (A056057 (n + 1)).toNat)

end

end A044575.P13610345486444224223

/-! ## A044575.P8004510499580961798

`or(7, A044574(n+1)+A000035(A139847(n+1)))`
-/

namespace A044575.P8004510499580961798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A044574 (n + 1) + A000035 (A139847 (n + 1)).toNat)

end

end A044575.P8004510499580961798

/-! ## A044575.P11185635268119480409

`or(7, A044574(n+1)+A000035(A140633(n+1)))`
-/

namespace A044575.P11185635268119480409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A044574 (n + 1) + A000035 (A140633 (n + 1)).toNat)

end

end A044575.P11185635268119480409

/-! ## A044575.P251155678501164621

`or(7, A044574(n+1)+A007318(A244846(n+1)))`
-/

namespace A044575.P251155678501164621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A044574 (n + 1) + A007318 (A244846 (n + 1)).toNat)

end

end A044575.P251155678501164621

/-! ## A044575.P3187872262413076284

`or(7, (A044574(n+1)+1)%A111278(A107631(n+1)))`
-/

namespace A044575.P3187872262413076284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (Int.tmod (A044574 (n + 1) + 1) (A111278 (A107631 (n + 1)).toNat))

end

end A044575.P3187872262413076284

/-! ## A044575.P11424070436734202345

`or(7, A057427(A090501(n+1))+A044574(n+1))`
-/

namespace A044575.P11424070436734202345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A057427 (A090501 (n + 1)).toNat + A044574 (n + 1))

end

end A044575.P11424070436734202345

/-! ## A044575.P10723860213674201749

`or(A006020(n+1), A086799(A044191(n+1)))`
-/

namespace A044575.P10723860213674201749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006020 (n + 1)) (A086799 (A044191 (n + 1)).toNat)

end

end A044575.P10723860213674201749

/-! ## A044575.P17513773161685423134

`or(7, A044574(n+1)+A001222(A309934(n+1)))`
-/

namespace A044575.P17513773161685423134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A044574 (n + 1) + A001222 (A309934 (n + 1)).toNat)

end

end A044575.P17513773161685423134

/-!
# A044576: Numbers n such that string 1,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044576, there is no canonical definition to state claims against.
-/

/-! ## A044576.P17489982768091234546

`filter[A043932(n+1), A125720(#)]`
-/

namespace A044576.P17489982768091234546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125720 (f1 j).toNat = 1) n)

end

end A044576.P17489982768091234546

/-! ## A044576.P15816942357230728086

`∩[A043932(n+1), A050622(n+1)]`
-/

namespace A044576.P15816942357230728086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044576.P15816942357230728086

/-! ## A044576.P6613987253100653

`∑[A348676((A348687(n+2)+3)²+5)]`
-/

namespace A044576.P6613987253100653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348676 ((A348687 (n + 2) + 3) ^ 2 + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044576.P6613987253100653

/-! ## A044576.P14438152427030733508

`A305075(lt[A305054(3*n+1), A305079(n+1)])`
-/

namespace A044576.P14438152427030733508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A044576.P14438152427030733508

/-! ## A044576.P254338669780314709

`∩[A043932(n+1), A282025(n)]`
-/

namespace A044576.P254338669780314709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044576.P254338669780314709

/-!
# A044577: Numbers n such that string 1,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044577, there is no canonical definition to state claims against.
-/

/-! ## A044577.P4137894803466836680

`or(A044196(n+1)-1, A044196(n+1))`
-/

namespace A044577.P4137894803466836680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044196 (n + 1) - 1) (A044196 (n + 1))

end

end A044577.P4137894803466836680

/-! ## A044577.P1703001418478852988

`A086799(A044196(n+1))`
-/

namespace A044577.P1703001418478852988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044196 (n + 1)).toNat

end

end A044577.P1703001418478852988

/-!
# A044578: Numbers k such that string 1,2 occurs in the base 8 representation of k but not of k+1.

The programs for A044578, there is no canonical definition to state claims against.
-/

/-! ## A044578.P2822697579250790025

`A044197(n+1)-A214546(A044197(n+1))`
-/

namespace A044578.P2822697579250790025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044197 (n + 1) - A214546 (A044197 (n + 1)).toNat

end

end A044578.P2822697579250790025

/-! ## A044578.P3408384622900286334

`A044198(n+1)-A168184(A114146(n))`
-/

namespace A044578.P3408384622900286334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) - A168184 (A114146 n).toNat

end

end A044578.P3408384622900286334

/-! ## A044578.P12316522424961624423

`A044198(n+1)-A057427(A307465(n))`
-/

namespace A044578.P12316522424961624423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) - A057427 (A307465 n).toNat

end

end A044578.P12316522424961624423

/-! ## A044578.P2326705710131705916

`A044198(n+1)-A168184(A321659(n))`
-/

namespace A044578.P2326705710131705916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) - A168184 (A321659 n).toNat

end

end A044578.P2326705710131705916

/-! ## A044578.P8373320827576648714

`A044198(n+1)-A285518(A299279(3*n))`
-/

namespace A044578.P8373320827576648714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) - A285518 (A299279 (3 * n)).toNat

end

end A044578.P8373320827576648714

/-!
# A044579: Numbers n such that string 1,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044579, there is no canonical definition to state claims against.
-/

/-! ## A044579.P7716456354817498104

`or(A044198(n+1)-1, A044198(n+1))`
-/

namespace A044579.P7716456354817498104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044198 (n + 1) - 1) (A044198 (n + 1))

end

end A044579.P7716456354817498104

/-! ## A044579.P7563717857028320981

`or(3, A322018(A044198(n+1)))`
-/

namespace A044579.P7563717857028320981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A322018 (A044198 (n + 1)).toNat)

end

end A044579.P7563717857028320981

/-! ## A044579.P11545740861202499051

`A086799(A044198(n+1))`
-/

namespace A044579.P11545740861202499051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044198 (n + 1)).toNat

end

end A044579.P11545740861202499051

/-! ## A044579.P380525889114366022

`A044199(n+1)-A010051(A153378(n+1))`
-/

namespace A044579.P380525889114366022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044199 (n + 1) - A010051 (A153378 (n + 1)).toNat

end

end A044579.P380525889114366022

/-! ## A044579.P17376614616864815137

`A044199(n+1)-A010051(A004061(n+3))`
-/

namespace A044579.P17376614616864815137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044199 (n + 1) - A010051 (A004061 (n + 3)).toNat

end

end A044579.P17376614616864815137

/-!
# A044580: Numbers n such that string 1,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044580, there is no canonical definition to state claims against.
-/

/-! ## A044580.P674937704958567211

`A044200(A077168(n))-1`
-/

namespace A044580.P674937704958567211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (A077168 n).toNat - 1

end

end A044580.P674937704958567211

/-! ## A044580.P2404137668235293403

`A308778(∑[n]²)+A044200(n+1)`
-/

namespace A044580.P2404137668235293403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + A044200 (n + 1)

end

end A044580.P2404137668235293403

/-! ## A044580.P13069302897340609013

`A044200(n+1)-A094404(A000041(n))`
-/

namespace A044580.P13069302897340609013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (n + 1) - A094404 (A000041 n).toNat

end

end A044580.P13069302897340609013

/-! ## A044580.P10914839932850259994

`A044200(n+1)-A168185(A001006(n))`
-/

namespace A044580.P10914839932850259994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (n + 1) - A168185 (A001006 n).toNat

end

end A044580.P10914839932850259994

/-! ## A044580.P14931980888553771329

`A044200(n+1)-A168185(A001333(n))`
-/

namespace A044580.P14931980888553771329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (n + 1) - A168185 (A001333 n).toNat

end

end A044580.P14931980888553771329

/-!
# A044581: Numbers k such that string 1,5 occurs in the base 8 representation of k but not of k+1.

The programs for A044581, there is no canonical definition to state claims against.
-/

/-! ## A044581.P10675485885101105672

`or(A044200(n+1)-1, A044200(n+1))`
-/

namespace A044581.P10675485885101105672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044200 (n + 1) - 1) (A044200 (n + 1))

end

end A044581.P10675485885101105672

/-! ## A044581.P6231466976251700967

`A135534(A044200(n+1))+A044200(n+1)`
-/

namespace A044581.P6231466976251700967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044200 (n + 1)).toNat + A044200 (n + 1)

end

end A044581.P6231466976251700967

/-! ## A044581.P16623631266840344043

`A086799(A044200(n+1))`
-/

namespace A044581.P16623631266840344043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044200 (n + 1)).toNat

end

end A044581.P16623631266840344043

/-! ## A044581.P9159467345505734964

`A044201(A187829(n+1))-1`
-/

namespace A044581.P9159467345505734964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044201 (A187829 (n + 1)).toNat - 1

end

end A044581.P9159467345505734964

/-! ## A044581.P16664636478753861546

`A044201(n+1)-A028240(n)!`
-/

namespace A044581.P16664636478753861546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044201 (n + 1) - (Nat.factorial (A028240 n).toNat : ℤ)

end

end A044581.P16664636478753861546

/-!
# A044582: Numbers n such that string 1,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044582, there is no canonical definition to state claims against.
-/

/-! ## A044582.P709512433553539272

`A057168(A044201(n+1)-1)`
-/

namespace A044582.P709512433553539272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044201 (n + 1) - 1).toNat

end

end A044582.P709512433553539272

/-! ## A044582.P3295263118021965172

`A044202(n+1)-A001222(A066195(n))`
-/

namespace A044582.P3295263118021965172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044202 (n + 1) - A001222 (A066195 n).toNat

end

end A044582.P3295263118021965172

/-! ## A044582.P262573498187209180

`A044202(n+1)-A057077(A257621(n))²`
-/

namespace A044582.P262573498187209180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044202 (n + 1) - A057077 (A257621 n).toNat ^ 2

end

end A044582.P262573498187209180

/-! ## A044582.P6879759506300595998

`A153881(A135036(n+4))+A044202(n+1)`
-/

namespace A044582.P6879759506300595998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A135036 (n + 4)).toNat + A044202 (n + 1)

end

end A044582.P6879759506300595998

/-! ## A044582.P8749712530819011253

`A010893(A222587(n+1))+A044202(n+1)-1`
-/

namespace A044582.P8749712530819011253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A222587 (n + 1)).toNat + 13) + (A044202 (n + 1) - 1)

end

end A044582.P8749712530819011253

/-!
# A044583: Numbers n such that string 1,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044583, there is no canonical definition to state claims against.
-/

/-! ## A044583.P14388186735668441383

`or(A044202(n+1)-1, A044202(n+1))`
-/

namespace A044583.P14388186735668441383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044202 (n + 1) - 1) (A044202 (n + 1))

end

end A044583.P14388186735668441383

/-! ## A044583.P6943070978140183312

`A135534(A044202(n+1))+A044202(n+1)`
-/

namespace A044583.P6943070978140183312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044202 (n + 1)).toNat + A044202 (n + 1)

end

end A044583.P6943070978140183312

/-! ## A044583.P2824421768076308283

`A086799(A044202(n+1))`
-/

namespace A044583.P2824421768076308283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044202 (n + 1)).toNat

end

end A044583.P2824421768076308283

/-! ## A044583.P5884965783944610641

`A044203(n+1)-A146096(A271517(n+3))`
-/

namespace A044583.P5884965783944610641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044203 (n + 1) - A146096 (A271517 (n + 3)).toNat

end

end A044583.P5884965783944610641

/-! ## A044583.P10582396545050795803

`∩[A043944(n+1), A309274(n+1)]`
-/

namespace A044583.P10582396545050795803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044583.P10582396545050795803

/-!
# A044584: Numbers n such that string 2,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044584, there is no canonical definition to state claims against.
-/

/-! ## A044584.P1935638822272365388

`A233583(A044204(n+1))`
-/

namespace A044584.P1935638822272365388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044204 (n + 1)).toNat

end

end A044584.P1935638822272365388

/-! ## A044584.P14638431404839439951

`A044204(n+1)-A112071(3*n+4)%2`
-/

namespace A044584.P14638431404839439951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044204 (n + 1) - Int.tmod (A112071 (3 * n + 4)) 2

end

end A044584.P14638431404839439951

/-! ## A044584.P2586844662639778059

`A057428(A003242(n))+A044204(n+1)`
-/

namespace A044584.P2586844662639778059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003242 n).toNat + A044204 (n + 1)

end

end A044584.P2586844662639778059

/-! ## A044584.P13427307756042709854

`A044204(n+1)-A127236(A174617(n))`
-/

namespace A044584.P13427307756042709854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044204 (n + 1) - A127236 (A174617 n).toNat

end

end A044584.P13427307756042709854

/-! ## A044584.P11041375253030615184

`A044204(n+1)-A242179(A228169(n))²`
-/

namespace A044584.P11041375253030615184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044204 (n + 1) - A242179 (A228169 n).toNat ^ 2

end

end A044584.P11041375253030615184

/-!
# A044585: Numbers n such that string 2,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044585, there is no canonical definition to state claims against.
-/

/-! ## A044585.P13233490588485826772

`or(A044204(n+1)-1, A044204(n+1))`
-/

namespace A044585.P13233490588485826772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044204 (n + 1) - 1) (A044204 (n + 1))

end

end A044585.P13233490588485826772

/-! ## A044585.P4520450270567122942

`or(A057428(n)+A044204(n+1), A044204(n+1))`
-/

namespace A044585.P4520450270567122942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044204 (n + 1)) (A044204 (n + 1))

end

end A044585.P4520450270567122942

/-! ## A044585.P2210246121398450655

`A086799(A044204(n+1))`
-/

namespace A044585.P2210246121398450655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044204 (n + 1)).toNat

end

end A044585.P2210246121398450655

/-! ## A044585.P8052051251592190649

`or(A044584(n+1), A233583(A044584(n+1)+2))`
-/

namespace A044585.P8052051251592190649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044584 (n + 1)) (A233583 (A044584 (n + 1) + 2).toNat)

end

end A044585.P8052051251592190649

/-!
# A044586: Numbers n such that string 2,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044586, there is no canonical definition to state claims against.
-/

/-! ## A044586.P11569868304528141880

`A057168(A044205(n+1)-1)`
-/

namespace A044586.P11569868304528141880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044205 (n + 1) - 1).toNat

end

end A044586.P11569868304528141880

/-! ## A044586.P7883960200297538890

`A044205(n+1)+A029906(A229278(n))`
-/

namespace A044586.P7883960200297538890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044205 (n + 1) + A029906 (A229278 n).toNat

end

end A044586.P7883960200297538890

/-!
# A044587: Numbers n such that string 2,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044587, there is no canonical definition to state claims against.
-/

/-! ## A044587.P12792719458797397097

`or(A044206(n+1)-1, A044206(n+1))`
-/

namespace A044587.P12792719458797397097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044206 (n + 1) - 1) (A044206 (n + 1))

end

end A044587.P12792719458797397097

/-! ## A044587.P16132075900809644902

`A086799(A044206(n+1))`
-/

namespace A044587.P16132075900809644902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044206 (n + 1)).toNat

end

end A044587.P16132075900809644902

/-! ## A044587.P742700718085812858

`A044207(n+1)-A257000(A069798(n+1))`
-/

namespace A044587.P742700718085812858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044207 (n + 1) - A257000 (A069798 (n + 1)).toNat

end

end A044587.P742700718085812858

/-! ## A044587.P4606070673539747750

`A044207(n+1)-A168184(A330913(n+1))`
-/

namespace A044587.P4606070673539747750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044207 (n + 1) - A168184 (A330913 (n + 1)).toNat

end

end A044587.P4606070673539747750

/-! ## A044587.P11148182648307155415

`A044207(n+1)-A100994(A008035(3*n+4)+1)`
-/

namespace A044587.P11148182648307155415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044207 (n + 1) - A100994 (A008035 (3 * n + 4) + 1).toNat

end

end A044587.P11148182648307155415

/-!
# A044588: Numbers n such that string 2,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044588, there is no canonical definition to state claims against.
-/

/-! ## A044588.P8665827049479836229

`A044208(∑[∑[A111332(n)]])-1`
-/

namespace A044588.P8665827049479836229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A044588.P8665827049479836229

/-! ## A044588.P3851509730064681050

`A044208(n+1)-A111332(n)!`
-/

namespace A044588.P3851509730064681050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044208 (n + 1) - (Nat.factorial (A111332 n).toNat : ℤ)

end

end A044588.P3851509730064681050

/-! ## A044588.P3085607134565897245

`(A044208(n+1)-1)%A304626(n+4)`
-/

namespace A044588.P3085607134565897245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044208 (n + 1) - 1) (A304626 (n + 4))

end

end A044588.P3085607134565897245

/-! ## A044588.P7896032749948474422

`A044208(n+1)-A000108(A111332(n)²)`
-/

namespace A044588.P7896032749948474422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044208 (n + 1) - A000108 (A111332 n ^ 2).toNat

end

end A044588.P7896032749948474422

/-! ## A044588.P2720465863539550471

`A044208(n+1)-A305832(A000040(n+1))`
-/

namespace A044588.P2720465863539550471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044208 (n + 1) - A305832 (A000040 (n + 1)).toNat

end

end A044588.P2720465863539550471

/-!
# A044589: Numbers n such that string 2,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044589, there is no canonical definition to state claims against.
-/

/-! ## A044589.P389021348044974810

`or(A044208(n+1)-1, A044208(n+1))`
-/

namespace A044589.P389021348044974810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044208 (n + 1) - 1) (A044208 (n + 1))

end

end A044589.P389021348044974810

/-! ## A044589.P11900807688771363194

`or(A044208(n+1), A140670(A044208(n+1)))`
-/

namespace A044589.P11900807688771363194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044208 (n + 1)) (A140670 (A044208 (n + 1)).toNat)

end

end A044589.P11900807688771363194

/-! ## A044589.P132693336666536803

`A086799(A044208(n+1))`
-/

namespace A044589.P132693336666536803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044208 (n + 1)).toNat

end

end A044589.P132693336666536803

/-! ## A044589.P16413437464838667288

`A044209(n+1)-A003557(A213078(n+1))`
-/

namespace A044589.P16413437464838667288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044209 (n + 1) - A003557 (A213078 (n + 1)).toNat

end

end A044589.P16413437464838667288

/-! ## A044589.P12787497495600843015

`A044209(n+1)-A173441(A081091(n+1))`
-/

namespace A044589.P12787497495600843015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044209 (n + 1) - A173441 (A081091 (n + 1)).toNat

end

end A044589.P12787497495600843015

/-!
# A044590: Numbers n such that string 2,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044590, there is no canonical definition to state claims against.
-/

/-! ## A044590.P7154957799434934946

`A044209(n+1)-A214546(A044209(n+1))`
-/

namespace A044590.P7154957799434934946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044209 (n + 1) - A214546 (A044209 (n + 1)).toNat

end

end A044590.P7154957799434934946

/-! ## A044590.P12160906413744205811

`A044210(n+1)-A000035(A037165(n+1))`
-/

namespace A044590.P12160906413744205811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044210 (n + 1) - A000035 (A037165 (n + 1)).toNat

end

end A044590.P12160906413744205811

/-! ## A044590.P2494716544069175287

`A044210(n+1)-A000035(A046020(n+1))`
-/

namespace A044590.P2494716544069175287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044210 (n + 1) - A000035 (A046020 (n + 1)).toNat

end

end A044590.P2494716544069175287

/-! ## A044590.P5025560274803784838

`A044210(n+1)-A054977(A001248(n+1))`
-/

namespace A044590.P5025560274803784838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044210 (n + 1) - A054977 (A001248 (n + 1)).toNat

end

end A044590.P5025560274803784838

/-! ## A044590.P3372963139386882377

`A044210(n+1)-A054977(A092269(n+1))`
-/

namespace A044590.P3372963139386882377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044210 (n + 1) - A054977 (A092269 (n + 1)).toNat

end

end A044590.P3372963139386882377

/-!
# A044591: Numbers n such that string 2,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044591, there is no canonical definition to state claims against.
-/

/-! ## A044591.P10935690804400417977

`or(A044210(n+1)-1, A044210(n+1))`
-/

namespace A044591.P10935690804400417977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044210 (n + 1) - 1) (A044210 (n + 1))

end

end A044591.P10935690804400417977

/-! ## A044591.P10616805908293266925

`A086799(A044210(n+1))`
-/

namespace A044591.P10616805908293266925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044210 (n + 1)).toNat

end

end A044591.P10616805908293266925

/-! ## A044591.P2444017917977329925

`∩[A043949(n+1), A166257(n+1)]`
-/

namespace A044591.P2444017917977329925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044591.P2444017917977329925

/-! ## A044591.P4259583879518403960

`∩[A043949(n+1), A217460(n+1)]`
-/

namespace A044591.P4259583879518403960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044591.P4259583879518403960

/-! ## A044591.P1857894020777962915

`∩[A043949(n+1), A173263(n+1)]`
-/

namespace A044591.P1857894020777962915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044591.P1857894020777962915

/-!
# A044592: Numbers n such that string 3,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044592, there is no canonical definition to state claims against.
-/

/-! ## A044592.P16340881326796679497

`A044212(n+1)-A097479(n)!`
-/

namespace A044592.P16340881326796679497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044212 (n + 1) - (Nat.factorial (A097479 n).toNat : ℤ)

end

end A044592.P16340881326796679497

/-! ## A044592.P18231036246019099804

`A057428((n+1)*(∑[n]+1))+A044212(n+1)`
-/

namespace A044592.P18231036246019099804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)) + A044212 (n + 1)

end

end A044592.P18231036246019099804

/-! ## A044592.P5195328153017565542

`A044212(n+1)-A097325(A166464(n))`
-/

namespace A044592.P5195328153017565542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044212 (n + 1) - A097325 (A166464 n).toNat

end

end A044592.P5195328153017565542

/-! ## A044592.P5609783565043813816

`(A044212(n+1)-1)%A007095(A062041(n+1))`
-/

namespace A044592.P5609783565043813816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044212 (n + 1) - 1) (A007095 (A062041 (n + 1)).toNat)

end

end A044592.P5609783565043813816

/-! ## A044592.P16000969174315090387

`A243109(A044213(n+1)%A248075(n+1))-A097479(n)!`
-/

namespace A044592.P16000969174315090387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (Int.tmod (A044213 (n + 1)) (A248075 (n + 1))).toNat - (Nat.factorial (A097479 n).toNat : ℤ)

end

end A044592.P16000969174315090387

/-!
# A044593: Numbers n such that string 3,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044593, there is no canonical definition to state claims against.
-/

/-! ## A044593.P4889050576380753156

`or(A044212(n+1)-1, A044212(n+1))`
-/

namespace A044593.P4889050576380753156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044212 (n + 1) - 1) (A044212 (n + 1))

end

end A044593.P4889050576380753156

/-! ## A044593.P4795561019101829194

`or(A057428(n)+A044212(n+1), A044212(n+1))`
-/

namespace A044593.P4795561019101829194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044212 (n + 1)) (A044212 (n + 1))

end

end A044593.P4795561019101829194

/-! ## A044593.P12991067908400363529

`A086799(A044212(n+1))`
-/

namespace A044593.P12991067908400363529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044212 (n + 1)).toNat

end

end A044593.P12991067908400363529

/-! ## A044593.P8549455114764232047

`A044213(n+1)-A304118(3*n+5)`
-/

namespace A044593.P8549455114764232047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044213 (n + 1) - A304118 (3 * n + 5)

end

end A044593.P8549455114764232047

/-! ## A044593.P3479856752715390278

`A044213(n+1)-A296121(p?[9*n-4])`
-/

namespace A044593.P3479856752715390278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044213 (n + 1) - A296121 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044593.P3479856752715390278

/-!
# A044594: Numbers n such that string 3,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044594, there is no canonical definition to state claims against.
-/

/-! ## A044594.P14154941199783035649

`A044213(n+1)-A214546(A044213(n+1))`
-/

namespace A044594.P14154941199783035649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044213 (n + 1) - A214546 (A044213 (n + 1)).toNat

end

end A044594.P14154941199783035649

/-! ## A044594.P10656269695975787916

`or(A003327(A139466(3*n+5)), A044592(n+1))`
-/

namespace A044594.P10656269695975787916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003327 (A139466 (3 * n + 5)).toNat) (A044592 (n + 1))

end

end A044594.P10656269695975787916

/-! ## A044594.P3954784698071138837

`A140977(A044593(n+1))`
-/

namespace A044594.P3954784698071138837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044593 (n + 1)).toNat

end

end A044594.P3954784698071138837

/-! ## A044594.P1627623368187858888

`A140977(A044213(n+1)-1)`
-/

namespace A044594.P1627623368187858888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044213 (n + 1) - 1).toNat

end

end A044594.P1627623368187858888

/-! ## A044594.P6590372160928144692

`A140977(or(9, A044592(n+1)))`
-/

namespace A044594.P6590372160928144692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (Int.lor 9 (A044592 (n + 1))).toNat

end

end A044594.P6590372160928144692

/-!
# A044595: Numbers n such that string 3,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044595, there is no canonical definition to state claims against.
-/

/-! ## A044595.P8984229628740769301

`or(A044214(n+1)-1, A044214(n+1))`
-/

namespace A044595.P8984229628740769301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044214 (n + 1) - 1) (A044214 (n + 1))

end

end A044595.P8984229628740769301

/-! ## A044595.P6919379359877529889

`A086799(A044214(n+1))`
-/

namespace A044595.P6919379359877529889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044214 (n + 1)).toNat

end

end A044595.P6919379359877529889

/-! ## A044595.P3309179625170119267

`record[A140977(A044211(n+1)-1)]`
-/

namespace A044595.P3309179625170119267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044211 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044595.P3309179625170119267

/-! ## A044595.P9649100305099424770

`record[A140977(A044213(n+1))-1]`
-/

namespace A044595.P9649100305099424770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044213 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044595.P9649100305099424770

/-! ## A044595.P15298414860584458317

`record[or(9, A140977(A044593(n+1)))]`
-/

namespace A044595.P15298414860584458317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A140977 (A044593 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044595.P15298414860584458317

/-!
# A044596: Numbers n such that string 3,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044596, there is no canonical definition to state claims against.
-/

/-! ## A044596.P6146243768047171767

`A057168(A044215(n+1)-2)`
-/

namespace A044596.P6146243768047171767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044215 (n + 1) - 2).toNat

end

end A044596.P6146243768047171767

/-! ## A044596.P17814493879827720244

`A044216(n+1)-A000035(A061722(n))`
-/

namespace A044596.P17814493879827720244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044216 (n + 1) - A000035 (A061722 n).toNat

end

end A044596.P17814493879827720244

/-! ## A044596.P331546776475660510

`A044216(n+1)-A001222(A273756(n))`
-/

namespace A044596.P331546776475660510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044216 (n + 1) - A001222 (A273756 n).toNat

end

end A044596.P331546776475660510

/-! ## A044596.P5075476109800695434

`A044216(n+1)-A010051(A000978(n+1))`
-/

namespace A044596.P5075476109800695434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044216 (n + 1) - A010051 (A000978 (n + 1)).toNat

end

end A044596.P5075476109800695434

/-!
# A044597: Numbers n such that string 3,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044597, there is no canonical definition to state claims against.
-/

/-! ## A044597.P3744318206374606129

`or(A044216(n+1)-1, A044216(n+1))`
-/

namespace A044597.P3744318206374606129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044216 (n + 1) - 1) (A044216 (n + 1))

end

end A044597.P3744318206374606129

/-! ## A044597.P9170647991065762774

`or(A044216(n+1), A140670(A044216(n+1)))`
-/

namespace A044597.P9170647991065762774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044216 (n + 1)) (A140670 (A044216 (n + 1)).toNat)

end

end A044597.P9170647991065762774

/-! ## A044597.P15922121691295636360

`A086799(A044216(n+1))`
-/

namespace A044597.P15922121691295636360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044216 (n + 1)).toNat

end

end A044597.P15922121691295636360

/-! ## A044597.P11561676981553119559

`A102283(∑[18*n]+2)+A044217(n+1)`
-/

namespace A044597.P11561676981553119559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A044217 (n + 1)

end

end A044597.P11561676981553119559

/-! ## A044597.P16307734847693947434

`A044217(n+1)-A054977(A000041(n))`
-/

namespace A044597.P16307734847693947434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044217 (n + 1) - A054977 (A000041 n).toNat

end

end A044597.P16307734847693947434

/-!
# A044598: Numbers n such that string 3,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044598, there is no canonical definition to state claims against.
-/

/-! ## A044598.P17571493355088027050

`A044217(n+1)-A214546(A044217(n+1))`
-/

namespace A044598.P17571493355088027050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044217 (n + 1) - A214546 (A044217 (n + 1)).toNat

end

end A044598.P17571493355088027050

/-! ## A044598.P17840543786203168765

`A044218(n+1)-A001222(A050968(n+1))`
-/

namespace A044598.P17840543786203168765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044218 (n + 1) - A001222 (A050968 (n + 1)).toNat

end

end A044598.P17840543786203168765

/-! ## A044598.P16112081543061730435

`A044218(n+1)-A057979(A298299(n+1))`
-/

namespace A044598.P16112081543061730435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044218 (n + 1) - A057979 (A298299 (n + 1)).toNat

end

end A044598.P16112081543061730435

/-! ## A044598.P12928136996631430061

`A044218(n+1)-A090387(A360780(2*n+1))`
-/

namespace A044598.P12928136996631430061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044218 (n + 1) - A090387 (A360780 (2 * n + 1)).toNat

end

end A044598.P12928136996631430061

/-! ## A044598.P2469298627511842797

`A044218(n+1)-A033630(A226675(n+1))`
-/

namespace A044598.P2469298627511842797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044218 (n + 1) - A033630 (A226675 (n + 1)).toNat

end

end A044598.P2469298627511842797

/-!
# A044599: Numbers n such that string 3,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044599, there is no canonical definition to state claims against.
-/

/-! ## A044599.P3600917167114666164

`or(A044218(n+1)-1, A044218(n+1))`
-/

namespace A044599.P3600917167114666164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044218 (n + 1) - 1) (A044218 (n + 1))

end

end A044599.P3600917167114666164

/-! ## A044599.P2385035300216140119

`or(A044218(n+1), A088837(A044218(n+1)))`
-/

namespace A044599.P2385035300216140119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044218 (n + 1)) (A088837 (A044218 (n + 1)).toNat)

end

end A044599.P2385035300216140119

/-! ## A044599.P12746065228772070567

`A086799(A044218(n+1))`
-/

namespace A044599.P12746065228772070567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044218 (n + 1)).toNat

end

end A044599.P12746065228772070567

/-! ## A044599.P17695517746532153408

`A044219(n+1)-A059841(A035008(n))`
-/

namespace A044599.P17695517746532153408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044219 (n + 1) - A059841 (A035008 n).toNat

end

end A044599.P17695517746532153408

/-! ## A044599.P12280953840526477603

`A086799(A102283(∑[18*n]+2)+A044217(n+1)+1)`
-/

namespace A044599.P12280953840526477603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A102283 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A044217 (n + 1) + 1).toNat

end

end A044599.P12280953840526477603

