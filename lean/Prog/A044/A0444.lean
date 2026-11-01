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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

/-!
# A044400: Numbers n such that string 6,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044400, there is no canonical definition to state claims against.
-/

/-! ## A044400.P3749705238552203467

`A057427(A027366(n))+A044780(n+1)`
-/

namespace A044400.P3749705238552203467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A027366 n).toNat + A044780 (n + 1)

end

end A044400.P3749705238552203467

/-! ## A044400.P5376423127591264879

`A044780(1+n)+A033999(A215461(n))`
-/

namespace A044400.P5376423127591264879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044780 (1 + n) + A033999 (A215461 n).toNat

end

end A044400.P5376423127591264879

/-! ## A044400.P10206948509315269229

`A134451(A307855(n))+A044780(n+1)`
-/

namespace A044400.P10206948509315269229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A307855 n).toNat + A044780 (n + 1)

end

end A044400.P10206948509315269229

/-! ## A044400.P2587273319795093029

`A044780(n+1)+A000035(A139918(n+1))`
-/

namespace A044400.P2587273319795093029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044780 (n + 1) + A000035 (A139918 (n + 1)).toNat

end

end A044400.P2587273319795093029

/-! ## A044400.P5343124011924342539

`A044780(n+1)+A000035(A327346(n+1))`
-/

namespace A044400.P5343124011924342539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044780 (n + 1) + A000035 (A327346 (n + 1)).toNat

end

end A044400.P5343124011924342539

/-! ## A044400.P18068746009772098833

`A044780(n+1)+A000035(A139919(n+1))`
-/

namespace A044400.P18068746009772098833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044780 (n + 1) + A000035 (A139919 (n + 1)).toNat

end

end A044400.P18068746009772098833

/-! ## A044400.P1031542358040600283

`A044780(n+1)+A038500(A322385(n+1))`
-/

namespace A044400.P1031542358040600283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044780 (n + 1) + A038500 (A322385 (n + 1)).toNat

end

end A044400.P1031542358040600283

/-! ## A044400.P12416352355549995804

`A044780(n+1)+A001222(A181956(n))`
-/

namespace A044400.P12416352355549995804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044780 (n + 1) + A001222 (A181956 n).toNat

end

end A044400.P12416352355549995804

/-!
# A044401: Numbers n such that string 6,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044401, there is no canonical definition to state claims against.
-/

/-! ## A044401.P14799504031662066039

`(A044781(n+1)+1)%A160688(n+1)`
-/

namespace A044401.P14799504031662066039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044781 (n + 1) + 1) (A160688 (n + 1))

end

end A044401.P14799504031662066039

/-! ## A044401.P18237240998934311955

`A054977(A283983(n))+A044781(n+1)`
-/

namespace A044401.P18237240998934311955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A283983 n).toNat + A044781 (n + 1)

end

end A044401.P18237240998934311955

/-! ## A044401.P7475632255292143600

`A293668(A064200(n))+A044781(n+1)`
-/

namespace A044401.P7475632255292143600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (A064200 n).toNat + A044781 (n + 1)

end

end A044401.P7475632255292143600

/-! ## A044401.P10858572910950927476

`A337335(A284554(n))+A044781(n+1)`
-/

namespace A044401.P10858572910950927476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 (A284554 n).toNat + A044781 (n + 1)

end

end A044401.P10858572910950927476

/-! ## A044401.P8597132458108414185

`A054977(A029459(n+1))+A044781(n+1)`
-/

namespace A044401.P8597132458108414185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A029459 (n + 1)).toNat + A044781 (n + 1)

end

end A044401.P8597132458108414185

/-! ## A044401.P14988194753881541422

`A044781(n+1)+A043545(A142793(n+1))`
-/

namespace A044401.P14988194753881541422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044781 (n + 1) + A043545 (A142793 (n + 1)).toNat

end

end A044401.P14988194753881541422

/-!
# A044402: Numbers n such that string 7,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044402, there is no canonical definition to state claims against.
-/

/-! ## A044402.P9540885420222736152

`∩[A043222(n+1), A311196(n)]`
-/

namespace A044402.P9540885420222736152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044402.P9540885420222736152

/-! ## A044402.P5026013698220628121

`∩[A043222(n+1), A311285(n)]`
-/

namespace A044402.P5026013698220628121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044402.P5026013698220628121

/-! ## A044402.P11177725815422785658

`record[A038608(A043222(1+n))]`
-/

namespace A044402.P11177725815422785658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A043222 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044402.P11177725815422785658

/-! ## A044402.P14911647769771402154

`filter[A043222(n+1), A059841(#)]`
-/

namespace A044402.P14911647769771402154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044402.P14911647769771402154

/-! ## A044402.P11157761192647189205

`filter[A043222(n+1), A135528(#)]`
-/

namespace A044402.P11157761192647189205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044402.P11157761192647189205

/-! ## A044402.P6015262086528564395

`filter[A043222(n+1), A179850(#)]`
-/

namespace A044402.P6015262086528564395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179850 (f1 j).toNat = 1) n)

end

end A044402.P6015262086528564395

/-! ## A044402.P6844381336317516694

`filter[A043222(n+1), A232990(#)]`
-/

namespace A044402.P6844381336317516694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044402.P6844381336317516694

/-! ## A044402.P6299891228639876387

`filter[A043222(n+1), A266591(#)]`
-/

namespace A044402.P6299891228639876387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044402.P6299891228639876387

/-! ## A044402.P6805634905849480378

`filter[A043222(n+1), A267043(#)]`
-/

namespace A044402.P6805634905849480378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044402.P6805634905849480378

/-! ## A044402.P1199814124758532955

`filter[A043222(n+1), A285383(#)]`
-/

namespace A044402.P1199814124758532955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285383 (f1 j).toNat = 1) n)

end

end A044402.P1199814124758532955

/-! ## A044402.P11097242967888198837

`filter[A043222(n+1), A285384(#)]`
-/

namespace A044402.P11097242967888198837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285384 (f1 j).toNat = 1) n)

end

end A044402.P11097242967888198837

/-!
# A044403: Numbers n such that string 7,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044403, there is no canonical definition to state claims against.
-/

/-! ## A044403.P11314834482829296509

`A044404(n+1)+A044404(n+1)-A327481(n+1)%2-A044785(n+1)`
-/

namespace A044403.P11314834482829296509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) + (A044404 (n + 1) - Int.tmod (A327481 (n + 1)) 2) - A044785 (n + 1)

end

end A044403.P11314834482829296509

/-! ## A044403.P9866409504135385605

`A054977(A101278(n))+A044783(n+1)`
-/

namespace A044403.P9866409504135385605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A101278 n).toNat + A044783 (n + 1)

end

end A044403.P9866409504135385605

/-! ## A044403.P2815030911798143605

`A057427(A139969(n+1))+A044783(n+1)`
-/

namespace A044403.P2815030911798143605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A139969 (n + 1)).toNat + A044783 (n + 1)

end

end A044403.P2815030911798143605

/-! ## A044403.P1241249788531559677

`A057427(A224361(n+1))+A044783(n+1)`
-/

namespace A044403.P1241249788531559677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A224361 (n + 1)).toNat + A044783 (n + 1)

end

end A044403.P1241249788531559677

/-! ## A044403.P16140080014970820479

`A057427(A327165(n+1))+A044783(n+1)`
-/

namespace A044403.P16140080014970820479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A327165 (n + 1)).toNat + A044783 (n + 1)

end

end A044403.P16140080014970820479

/-! ## A044403.P11855246766729631786

`A044783(n+1)+A001222(A340817(n+2))`
-/

namespace A044403.P11855246766729631786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044783 (n + 1) + A001222 (A340817 (n + 2)).toNat

end

end A044403.P11855246766729631786

/-!
# A044404: Numbers n such that string 7,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044404, there is no canonical definition to state claims against.
-/

/-! ## A044404.P265443757543100764

`A044784(n+1)+A327481(n+1)%2`
-/

namespace A044404.P265443757543100764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044784 (n + 1) + Int.tmod (A327481 (n + 1)) 2

end

end A044404.P265443757543100764

/-! ## A044404.P10949157015392946166

`A246064(A246066(n))+A044784(n+1)`
-/

namespace A044404.P10949157015392946166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246064 (A246066 n).toNat + A044784 (n + 1)

end

end A044404.P10949157015392946166

/-! ## A044404.P11645105661118529287

`A044784(1+n)-A057428(A211970(n))`
-/

namespace A044404.P11645105661118529287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044784 (1 + n) - A057428 (A211970 n).toNat

end

end A044404.P11645105661118529287

/-! ## A044404.P5498924015578373110

`A044784(n+1)-A057428(A246066(n)²)`
-/

namespace A044404.P5498924015578373110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044784 (n + 1) - A057428 (A246066 n ^ 2).toNat

end

end A044404.P5498924015578373110

/-! ## A044404.P7736993042033727639

`A044784(n+1)+A003557(A139876(n+1))`
-/

namespace A044404.P7736993042033727639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044784 (n + 1) + A003557 (A139876 (n + 1)).toNat

end

end A044404.P7736993042033727639

/-! ## A044404.P12239164777651528164

`A044784(n+1)+A001222(A237115(n+1))`
-/

namespace A044404.P12239164777651528164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044784 (n + 1) + A001222 (A237115 (n + 1)).toNat

end

end A044404.P12239164777651528164

/-! ## A044404.P4320857927459706045

`A044784(n+1)+A033999(A218875(n+1))`
-/

namespace A044404.P4320857927459706045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044784 (n + 1) + A033999 (A218875 (n + 1)).toNat

end

end A044404.P4320857927459706045

/-! ## A044404.P9666794106759596129

`A227481(A059647(n+1))+A044784(n+1)`
-/

namespace A044404.P9666794106759596129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A059647 (n + 1)).toNat + A044784 (n + 1)

end

end A044404.P9666794106759596129

/-!
# A044405: Numbers n such that string 7,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044405, there is no canonical definition to state claims against.
-/

/-! ## A044405.P4491343242590449385

`A044785(1+n)+A010236(A273851(n))`
-/

namespace A044405.P4491343242590449385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044785 (1 + n) + A010236 (A273851 n).toNat

end

end A044405.P4491343242590449385

/-! ## A044405.P12827639260133792901

`A071935(A331852(n)²)+A044785(n+1)`
-/

namespace A044405.P12827639260133792901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (A331852 n ^ 2).toNat + A044785 (n + 1)

end

end A044405.P12827639260133792901

/-! ## A044405.P3225414557428099599

`A044785(n+1)+A033999(A043569(n+1))`
-/

namespace A044405.P3225414557428099599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044785 (n + 1) + A033999 (A043569 (n + 1)).toNat

end

end A044405.P3225414557428099599

/-! ## A044405.P2400320253926705263

`A108103(A139848(n+1))+A044785(n+1)`
-/

namespace A044405.P2400320253926705263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A139848 (n + 1)).toNat + A044785 (n + 1)

end

end A044405.P2400320253926705263

/-! ## A044405.P12464771637044937125

`A108103(A139855(n+1))+A044785(n+1)`
-/

namespace A044405.P12464771637044937125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A139855 (n + 1)).toNat + A044785 (n + 1)

end

end A044405.P12464771637044937125

/-! ## A044405.P3385248910909867224

`A044785(n+1)+A007814(A273851(n)+1)`
-/

namespace A044405.P3385248910909867224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044785 (n + 1) + A007814 (A273851 n + 1).toNat

end

end A044405.P3385248910909867224

/-! ## A044405.P14091030054127013291

`A342956(A139867(n+1))+A044785(n+1)`
-/

namespace A044405.P14091030054127013291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342956 (A139867 (n + 1)).toNat + A044785 (n + 1)

end

end A044405.P14091030054127013291

/-! ## A044405.P1253861802765599229

`A044785(n+1)+A033999(A273851(n)+1)²`
-/

namespace A044405.P1253861802765599229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044785 (n + 1) + A033999 (A273851 n + 1).toNat ^ 2

end

end A044405.P1253861802765599229

/-! ## A044405.P7078781645547314778

`A044785(n+1)%A038817(A273851(n)+1)+1`
-/

namespace A044405.P7078781645547314778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044785 (n + 1)) (A038817 (A273851 n + 1).toNat) + 1

end

end A044405.P7078781645547314778

/-!
# A044406: Numbers n such that string 7,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044406, there is no canonical definition to state claims against.
-/

/-! ## A044406.P8041945107248290942

`(A044786(n+1)+1)%A250812(3*n+2)`
-/

namespace A044406.P8041945107248290942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044786 (n + 1) + 1) (A250812 (3 * n + 2))

end

end A044406.P8041945107248290942

/-! ## A044406.P6920531245957169672

`A057427(A008137(n))+A044786(n+1)`
-/

namespace A044406.P6920531245957169672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008137 n).toNat + A044786 (n + 1)

end

end A044406.P6920531245957169672

/-! ## A044406.P15709161672209119369

`A185263(A126696(n))+A044786(n+1)`
-/

namespace A044406.P15709161672209119369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185263 (A126696 n).toNat + A044786 (n + 1)

end

end A044406.P15709161672209119369

/-! ## A044406.P13337007083675841500

`A056926(A020194(n+1))+A044786(n+1)`
-/

namespace A044406.P13337007083675841500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A020194 (n + 1)).toNat + A044786 (n + 1)

end

end A044406.P13337007083675841500

/-! ## A044406.P3341873178192895684

`A057427(A065279(n+1))+A044786(n+1)`
-/

namespace A044406.P3341873178192895684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A065279 (n + 1)).toNat + A044786 (n + 1)

end

end A044406.P3341873178192895684

/-! ## A044406.P14644063583257141266

`A057427(A067945(n+1))+A044786(n+1)`
-/

namespace A044406.P14644063583257141266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A067945 (n + 1)).toNat + A044786 (n + 1)

end

end A044406.P14644063583257141266

/-! ## A044406.P3750304989895125179

`A044786(n+1)+A000035(A139932(n+1))`
-/

namespace A044406.P3750304989895125179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044786 (n + 1) + A000035 (A139932 (n + 1)).toNat

end

end A044406.P3750304989895125179

/-! ## A044406.P18122708605145268442

`A044786(n+1)+A000035(A139974(n+1))`
-/

namespace A044406.P18122708605145268442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044786 (n + 1) + A000035 (A139974 (n + 1)).toNat

end

end A044406.P18122708605145268442

/-! ## A044406.P5105395333945069664

`A044786(n+1)+A000035(A142399(n+1))`
-/

namespace A044406.P5105395333945069664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044786 (n + 1) + A000035 (A142399 (n + 1)).toNat

end

end A044406.P5105395333945069664

/-! ## A044406.P381089085572423914

`A057427(A092893(n+1))+A044786(n+1)`
-/

namespace A044406.P381089085572423914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A092893 (n + 1)).toNat + A044786 (n + 1)

end

end A044406.P381089085572423914

/-!
# A044407: Numbers n such that string 7,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044407, there is no canonical definition to state claims against.
-/

/-! ## A044407.P8473080180019348840

`A257253(∑[n]+1)+A044787(n+1)`
-/

namespace A044407.P8473080180019348840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257253 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A044787 (n + 1)

end

end A044407.P8473080180019348840

/-! ## A044407.P2145516572131461540

`A044787(n+1)+gcd(11, A333851(n+1))`
-/

namespace A044407.P2145516572131461540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044787 (n + 1) + (Int.gcd 11 (A333851 (n + 1)) : ℤ)

end

end A044407.P2145516572131461540

/-! ## A044407.P13354244676686642700

`A057427(C(n, 2)+(n+2)²)+A044787(n+1)`
-/

namespace A044407.P13354244676686642700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose n 2 + (n + 2) ^ 2) + A044787 (n + 1)

end

end A044407.P13354244676686642700

/-! ## A044407.P6734799663715892424

`A057427(A182001(n))+A044787(n+1)`
-/

namespace A044407.P6734799663715892424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A182001 n).toNat + A044787 (n + 1)

end

end A044407.P6734799663715892424

/-! ## A044407.P2636486776875755585

`A044787(n+1)+A000034(A338086(n))`
-/

namespace A044407.P2636486776875755585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044787 (n + 1) + A000034 (A338086 n).toNat

end

end A044407.P2636486776875755585

/-! ## A044407.P11255734286528493305

`A057427(A332728(n))+A044787(n+1)`
-/

namespace A044407.P11255734286528493305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A332728 n).toNat + A044787 (n + 1)

end

end A044407.P11255734286528493305

/-! ## A044407.P691769335217526979

`A044787(n+1)+A000034(A216072(n+1))`
-/

namespace A044407.P691769335217526979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044787 (n + 1) + A000034 (A216072 (n + 1)).toNat

end

end A044407.P691769335217526979

/-!
# A044408: Numbers n such that string 7,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044408, there is no canonical definition to state claims against.
-/

/-! ## A044408.P2848208197412264834

`A057427(A104249(n))+A044788(n+1)`
-/

namespace A044408.P2848208197412264834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A104249 n).toNat + A044788 (n + 1)

end

end A044408.P2848208197412264834

/-! ## A044408.P561662078934564516

`A044788(1+n)+A000035(A345735(n))`
-/

namespace A044408.P561662078934564516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044788 (1 + n) + A000035 (A345735 n).toNat

end

end A044408.P561662078934564516

/-! ## A044408.P15136439909929281519

`A057427(∑[A357187(n)])+A044788(n+1)`
-/

namespace A044408.P15136439909929281519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044788 (n + 1)

end

end A044408.P15136439909929281519

/-! ## A044408.P12207683015134828486

`A057427(A064126(n+1))+A044788(n+1)`
-/

namespace A044408.P12207683015134828486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A064126 (n + 1)).toNat + A044788 (n + 1)

end

end A044408.P12207683015134828486

/-! ## A044408.P4057476055054157041

`A060576(A134808(n+1))+A044788(n+1)`
-/

namespace A044408.P4057476055054157041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A134808 (n + 1)).toNat + A044788 (n + 1)

end

end A044408.P4057476055054157041

/-! ## A044408.P14177503693344291285

`A057427(A352998(n+1))+A044788(n+1)`
-/

namespace A044408.P14177503693344291285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A352998 (n + 1)).toNat + A044788 (n + 1)

end

end A044408.P14177503693344291285

/-! ## A044408.P10506279752961920446

`A044788(n+1)+A001222(A162390(n+1))`
-/

namespace A044408.P10506279752961920446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044788 (n + 1) + A001222 (A162390 (n + 1)).toNat

end

end A044408.P10506279752961920446

/-!
# A044409: Numbers n such that string 7,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044409, there is no canonical definition to state claims against.
-/

/-! ## A044409.P2987597868440114612

`A043243(2*n+1)+A043219(A053501(n))`
-/

namespace A044409.P2987597868440114612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (2 * n + 1) + A043219 (A053501 n).toNat

end

end A044409.P2987597868440114612

/-! ## A044409.P15098181228190933589

`A043243(n+1)+A043219(A053501(n)+n)`
-/

namespace A044409.P15098181228190933589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (n + 1) + A043219 (A053501 n + (n : ℤ)).toNat

end

end A044409.P15098181228190933589

/-! ## A044409.P13861702804557605472

`A043243(n+1)+A043219(A078213(n+1))`
-/

namespace A044409.P13861702804557605472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (n + 1) + A043219 (A078213 (n + 1)).toNat

end

end A044409.P13861702804557605472

/-! ## A044409.P6161887081999300498

`A007095(A044321(A032944(A032944(A032944(n+1)))))`
-/

namespace A044409.P6161887081999300498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A044321 (A032944 (A032944 (A032944 (n + 1)).toNat).toNat).toNat).toNat

end

end A044409.P6161887081999300498

/-!
# A044410: Numbers n such that string 7,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044410, there is no canonical definition to state claims against.
-/

/-! ## A044410.P17025415567313686091

`record[A175676(A044366(n+3))]`
-/

namespace A044410.P17025415567313686091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044366 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044410.P17025415567313686091

/-! ## A044410.P12256884821893179951

`A044411(n+1)-A283314(A139625(n+1))`
-/

namespace A044410.P12256884821893179951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A283314 (A139625 (n + 1)).toNat

end

end A044410.P12256884821893179951

/-! ## A044410.P6766636175449179393

`A044411(n+1)-(n+2)^A055641(A325513(n))`
-/

namespace A044410.P6766636175449179393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044411 (n + 1) : ℚ) - (n + 2 : ℚ) ^ (A055641 (A325513 n).toNat : ℤ)

end

end A044410.P6766636175449179393

/-!
# A044411: Numbers n such that string 7,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044411, there is no canonical definition to state claims against.
-/

/-! ## A044411.P18222385586867101323

`A054977(A008762(n))+A044791(n+1)`
-/

namespace A044411.P18222385586867101323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A008762 n).toNat + A044791 (n + 1)

end

end A044411.P18222385586867101323

/-! ## A044411.P8969093874597255836

`A052125(A124148(n+1))+A044791(n+1)`
-/

namespace A044411.P8969093874597255836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A124148 (n + 1)).toNat + A044791 (n + 1)

end

end A044411.P8969093874597255836

/-! ## A044411.P615668301076958891

`A054977(A238705(n+1))+A044791(n+1)`
-/

namespace A044411.P615668301076958891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A238705 (n + 1)).toNat + A044791 (n + 1)

end

end A044411.P615668301076958891

/-! ## A044411.P14732431899120495284

`A054977(A318559(n+1))+A044791(n+1)`
-/

namespace A044411.P14732431899120495284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A318559 (n + 1)).toNat + A044791 (n + 1)

end

end A044411.P14732431899120495284

/-! ## A044411.P926230113893357720

`A054977(A386114(n+1))+A044791(n+1)`
-/

namespace A044411.P926230113893357720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A386114 (n + 1)).toNat + A044791 (n + 1)

end

end A044411.P926230113893357720

/-! ## A044411.P14975296303476894898

`A054977((n+1)*A084937(n+1))+A044791(n+1)`
-/

namespace A044411.P14975296303476894898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n + 1 : ℤ) * A084937 (n + 1)).toNat + A044791 (n + 1)

end

end A044411.P14975296303476894898

/-! ## A044411.P8477286613703452708

`A054977(∑[A028310(2*n+1)+29])+A044791(n+1)`
-/

namespace A044411.P8477286613703452708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n + 1) + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044791 (n + 1)

end

end A044411.P8477286613703452708

/-! ## A044411.P12530056632475981527

`A054977(A050499(n+2)*(A000959(n+1)+1)-1)+A044791(n+1)`
-/

namespace A044411.P12530056632475981527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A050499 (n + 2) * (A000959 (n + 1) + 1) - 1).toNat + A044791 (n + 1)

end

end A044411.P12530056632475981527

/-! ## A044411.P3750757420978522363

`A054977(A050499(2*(n+1))*(A036991(n+1)+1)-1)+A044791(n+1)`
-/

namespace A044411.P3750757420978522363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A050499 (2 * (n + 1)) * (A036991 (n + 1) + 1) - 1).toNat + A044791 (n + 1)

end

end A044411.P3750757420978522363

/-! ## A044411.P5289518613921409131

`A054977(A057501(2*n+3)*(A057872(n)+1)-1)+A044791(n+1)`
-/

namespace A044411.P5289518613921409131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A057501 (2 * n + 3) * (A057872 n + 1) - 1).toNat + A044791 (n + 1)

end

end A044411.P5289518613921409131

/-!
# A044412: Numbers n such that string 8,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044412, there is no canonical definition to state claims against.
-/

/-! ## A044412.P9642551457267474457

`filter[A043223(1+n), A198517(#)]`
-/

namespace A044412.P9642551457267474457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043223 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044412.P9642551457267474457

/-! ## A044412.P15151834498758959525

`A044792(1+n)+abs(A155040(n))`
-/

namespace A044412.P15151834498758959525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (1 + n) + |A155040 n|

end

end A044412.P15151834498758959525

/-! ## A044412.P923360395823651322

`A044792(n+1)+A151909(n)!`
-/

namespace A044412.P923360395823651322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (n + 1) + (Nat.factorial (A151909 n).toNat : ℤ)

end

end A044412.P923360395823651322

/-! ## A044412.P5951125282081907827

`A044792(n+1)+A028310(A151909(n)²)`
-/

namespace A044412.P5951125282081907827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (n + 1) + A028310 (A151909 n ^ 2).toNat

end

end A044412.P5951125282081907827

/-! ## A044412.P7778501817726576938

`A044792(n+1)+A072256(A151909(n)²)`
-/

namespace A044412.P7778501817726576938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (n + 1) + A072256 (A151909 n ^ 2).toNat

end

end A044412.P7778501817726576938

/-! ## A044412.P7383071425812658474

`A044792(n+1)+A000010(A151909(n)+1)`
-/

namespace A044412.P7383071425812658474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (n + 1) + A000010 (A151909 n + 1).toNat

end

end A044412.P7383071425812658474

/-! ## A044412.P12520843890631666557

`A044792(n+1)+A002322(A151909(n)+1)`
-/

namespace A044412.P12520843890631666557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (n + 1) + A002322 (A151909 n + 1).toNat

end

end A044412.P12520843890631666557

/-! ## A044412.P2633221278489078676

`A044792(n+1)+A007318(A151909(n)+1)`
-/

namespace A044412.P2633221278489078676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (n + 1) + A007318 (A151909 n + 1).toNat

end

end A044412.P2633221278489078676

/-! ## A044412.P15924152033639539171

`A044792(n+1)+A001221(A282242(n+1))`
-/

namespace A044412.P15924152033639539171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044792 (n + 1) + A001221 (A282242 (n + 1)).toNat

end

end A044412.P15924152033639539171

/-! ## A044412.P3764661318154259934

`A151909(n*A151909(n))+A044792(n+1)`
-/

namespace A044412.P3764661318154259934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 ((n : ℤ) * A151909 n).toNat + A044792 (n + 1)

end

end A044412.P3764661318154259934

/-!
# A044413: Numbers n such that string 8,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044413, there is no canonical definition to state claims against.
-/

/-! ## A044413.P4876233985348889068

`A054977(A272451(n))+A044793(n+1)`
-/

namespace A044413.P4876233985348889068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A272451 n).toNat + A044793 (n + 1)

end

end A044413.P4876233985348889068

/-! ## A044413.P2901604504768693260

`A044793(n+1)+A000688(A001133(n+1))`
-/

namespace A044413.P2901604504768693260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044793 (n + 1) + A000688 (A001133 (n + 1)).toNat

end

end A044413.P2901604504768693260

/-! ## A044413.P9290652445199354942

`A044793(1+n)+A001065(A001133(n+1))`
-/

namespace A044413.P9290652445199354942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044793 (1 + n) + A001065 (A001133 (n + 1)).toNat

end

end A044413.P9290652445199354942

/-! ## A044413.P16972478804295302349

`A054977(A001126(n+1))+A044793(n+1)`
-/

namespace A044413.P16972478804295302349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A001126 (n + 1)).toNat + A044793 (n + 1)

end

end A044413.P16972478804295302349

/-! ## A044413.P3452487374823991958

`A054977(A133288(n+1))+A044793(n+1)`
-/

namespace A044413.P3452487374823991958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A133288 (n + 1)).toNat + A044793 (n + 1)

end

end A044413.P3452487374823991958

/-! ## A044413.P2660746643747469137

`A044793(n+1)+A001065(A200997(n+1))`
-/

namespace A044413.P2660746643747469137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044793 (n + 1) + A001065 (A200997 (n + 1)).toNat

end

end A044413.P2660746643747469137

/-! ## A044413.P18167186370391039490

`A044793(n+1)+A034947(A200997(n+1)²)`
-/

namespace A044413.P18167186370391039490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044793 (n + 1) + A034947 (A200997 (n + 1) ^ 2).toNat

end

end A044413.P18167186370391039490

/-! ## A044413.P12562397494307907797

`A082062(A200997(n+1)²)+A044793(n+1)`
-/

namespace A044413.P12562397494307907797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082062 (A200997 (n + 1) ^ 2).toNat + A044793 (n + 1)

end

end A044413.P12562397494307907797

/-! ## A044413.P3656722627538644602

`A157928(A200997(n+1)²)+A044793(n+1)`
-/

namespace A044413.P3656722627538644602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A200997 (n + 1) ^ 2).toNat + A044793 (n + 1)

end

end A044413.P3656722627538644602

/-! ## A044413.P13282532373706289009

`A245477(A200997(n+1)²)+A044793(n+1)`
-/

namespace A044413.P13282532373706289009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (A200997 (n + 1) ^ 2).toNat + A044793 (n + 1)

end

end A044413.P13282532373706289009

/-!
# A044414: Numbers n such that string 8,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044414, there is no canonical definition to state claims against.
-/

/-! ## A044414.P4685270944728470721

`A246676(A044794(1+n))+1`
-/

namespace A044414.P4685270944728470721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A044794 (1 + n)).toNat + 1

end

end A044414.P4685270944728470721

/-! ## A044414.P947059774202081077

`A255407(A044794(1+n)+1)`
-/

namespace A044414.P947059774202081077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A044794 (1 + n) + 1).toNat

end

end A044414.P947059774202081077

/-! ## A044414.P18357599795594760048

`A295920(A152813(n))+A044794(n+1)`
-/

namespace A044414.P18357599795594760048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (A152813 n).toNat + A044794 (n + 1)

end

end A044414.P18357599795594760048

/-! ## A044414.P17250516028515329236

`A044794(n+1)+A008835(A131642(n+1))`
-/

namespace A044414.P17250516028515329236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044794 (n + 1) + A008835 (A131642 (n + 1)).toNat

end

end A044414.P17250516028515329236

/-! ## A044414.P10231760035747589564

`A059981(A089783(n+1))+A044794(n+1)`
-/

namespace A044414.P10231760035747589564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059981 (A089783 (n + 1)).toNat + A044794 (n + 1)

end

end A044414.P10231760035747589564

/-! ## A044414.P2198055377447028338

`A131642(A131642(n+1)+n)+A044794(n+1)`
-/

namespace A044414.P2198055377447028338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131642 (A131642 (n + 1) + (n : ℤ)).toNat + A044794 (n + 1)

end

end A044414.P2198055377447028338

/-! ## A044414.P14277250681558113566

`A323436(A014973(n+1))+A044794(n+1)`
-/

namespace A044414.P14277250681558113566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A014973 (n + 1)).toNat + A044794 (n + 1)

end

end A044414.P14277250681558113566

/-! ## A044414.P5058587798172431837

`A295923(A139421(n+1))+A044794(n+1)`
-/

namespace A044414.P5058587798172431837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295923 (A139421 (n + 1)).toNat + A044794 (n + 1)

end

end A044414.P5058587798172431837

/-! ## A044414.P14884463384120707832

`A044794(n+1)-A057428(A263752(n+1))`
-/

namespace A044414.P14884463384120707832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044794 (n + 1) - A057428 (A263752 (n + 1)).toNat

end

end A044414.P14884463384120707832

/-! ## A044414.P16875828282723968478

`A044794(n+1)+A001222(A100742(n+1))`
-/

namespace A044414.P16875828282723968478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044794 (n + 1) + A001222 (A100742 (n + 1)).toNat

end

end A044414.P16875828282723968478

/-!
# A044415: Numbers n such that string 8,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044415, there is no canonical definition to state claims against.
-/

/-! ## A044415.P8031664149524610755

`A044795(1+n)+A000001(A290695(n))`
-/

namespace A044415.P8031664149524610755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044795 (1 + n) + A000001 (A290695 n).toNat

end

end A044415.P8031664149524610755

/-! ## A044415.P4851827372846782324

`A044795(n+1)+A003557(A290695(n))`
-/

namespace A044415.P4851827372846782324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044795 (n + 1) + A003557 (A290695 n).toNat

end

end A044415.P4851827372846782324

/-! ## A044415.P5088302113833756765

`A044795(n+1)+A003557(A103579(n+1))`
-/

namespace A044415.P5088302113833756765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044795 (n + 1) + A003557 (A103579 (n + 1)).toNat

end

end A044415.P5088302113833756765

/-! ## A044415.P4557954076579550030

`A178334(A141810(n+1))+A044795(n+1)`
-/

namespace A044415.P4557954076579550030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A141810 (n + 1)).toNat + A044795 (n + 1)

end

end A044415.P4557954076579550030

/-! ## A044415.P16845106707415207210

`A285097(A044391(n+1))+A044795(n+1)`
-/

namespace A044415.P16845106707415207210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A044391 (n + 1)).toNat + A044795 (n + 1)

end

end A044415.P16845106707415207210

/-! ## A044415.P1024633802589190011

`A285097(A044395(n+1))+A044795(n+1)`
-/

namespace A044415.P1024633802589190011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A044395 (n + 1)).toNat + A044795 (n + 1)

end

end A044415.P1024633802589190011

/-! ## A044415.P9455787388396592861

`A285097(A044403(n+1))+A044795(n+1)`
-/

namespace A044415.P9455787388396592861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A044403 (n + 1)).toNat + A044795 (n + 1)

end

end A044415.P9455787388396592861

/-! ## A044415.P16407213221229411777

`A285097(A044411(n+1))+A044795(n+1)`
-/

namespace A044415.P16407213221229411777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A044411 (n + 1)).toNat + A044795 (n + 1)

end

end A044415.P16407213221229411777

/-! ## A044415.P5075624184705490652

`A044795(n+1)+A001221(A290695(n)+2)`
-/

namespace A044415.P5075624184705490652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044795 (n + 1) + A001221 (A290695 n + 2).toNat

end

end A044415.P5075624184705490652

/-! ## A044415.P11488500273791072714

`A044795(n+1)+A007318(C(A290695(n), 2))`
-/

namespace A044415.P11488500273791072714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044795 (n + 1) + A007318 (Nat.choose (A290695 n).toNat 2)

end

end A044415.P11488500273791072714

/-!
# A044416: Numbers k such that string '84' occurs in the base 10 representation of k but not of k-1.

The programs for A044416, there is no canonical definition to state claims against.
-/

/-! ## A044416.P1211797360530654718

`A044796(1+n)+A151878(n)!`
-/

namespace A044416.P1211797360530654718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (1 + n) + (Nat.factorial (A151878 n).toNat : ℤ)

end

end A044416.P1211797360530654718

/-! ## A044416.P17036607788395349704

`A044796(n+1)+A035263(A102083(n))`
-/

namespace A044416.P17036607788395349704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (n + 1) + A035263 (A102083 n).toNat

end

end A044416.P17036607788395349704

/-! ## A044416.P12322385952416640051

`A044796(1+n)+A002325(A140513(n))`
-/

namespace A044416.P12322385952416640051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (1 + n) + A002325 (A140513 n).toNat

end

end A044416.P12322385952416640051

/-! ## A044416.P15205063631529994727

`A164660(A151878(n))+A044796(n+1)`
-/

namespace A044416.P15205063631529994727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 (A151878 n).toNat + A044796 (n + 1)

end

end A044416.P15205063631529994727

/-! ## A044416.P9280314999924872351

`A044796(n+1)+A000108(A151878(n)²)`
-/

namespace A044416.P9280314999924872351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (n + 1) + A000108 (A151878 n ^ 2).toNat

end

end A044416.P9280314999924872351

/-! ## A044416.P3058402014219619655

`A044796(n+1)+A002095(A151878(n)²)`
-/

namespace A044416.P3058402014219619655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (n + 1) + A002095 (A151878 n ^ 2).toNat

end

end A044416.P3058402014219619655

/-! ## A044416.P17146366726638744294

`A044796(n+1)+A026520(A151878(n)²)`
-/

namespace A044416.P17146366726638744294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (n + 1) + A026520 (A151878 n ^ 2).toNat

end

end A044416.P17146366726638744294

/-! ## A044416.P9968311312900520197

`A291168(A151878(n)²)+A044796(n+1)`
-/

namespace A044416.P9968311312900520197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A151878 n ^ 2).toNat + A044796 (n + 1)

end

end A044416.P9968311312900520197

/-! ## A044416.P12343990095989310382

`A044796(n+1)+A000010(A151878(n)+1)`
-/

namespace A044416.P12343990095989310382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (n + 1) + A000010 (A151878 n + 1).toNat

end

end A044416.P12343990095989310382

/-! ## A044416.P4701632297854274356

`A044796(n+1)+A000045(A151878(n)+1)`
-/

namespace A044416.P4701632297854274356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044796 (n + 1) + A000045 (A151878 n + 1).toNat

end

end A044416.P4701632297854274356

/-!
# A044417: Numbers n such that string 8,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044417, there is no canonical definition to state claims against.
-/

/-! ## A044417.P14320663864705874259

`A044797(1+n)+A036225(A353305(n))`
-/

namespace A044417.P14320663864705874259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044797 (1 + n) + A036225 (A353305 n).toNat

end

end A044417.P14320663864705874259

/-! ## A044417.P12219998876752396294

`A057427(A026403(1+n))+A044797(n+1)`
-/

namespace A044417.P12219998876752396294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A026403 (1 + n)).toNat + A044797 (n + 1)

end

end A044417.P12219998876752396294

/-! ## A044417.P16810528429534882690

`A044797(n+1)+A036225(A092962(n+1))`
-/

namespace A044417.P16810528429534882690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044797 (n + 1) + A036225 (A092962 (n + 1)).toNat

end

end A044417.P16810528429534882690

/-! ## A044417.P13530781167842804342

`A044797(n+1)-A260196(A353305(n)+2)`
-/

namespace A044417.P13530781167842804342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044797 (n + 1) - A260196 (A353305 n + 2).toNat

end

end A044417.P13530781167842804342

/-! ## A044417.P16209874858221015720

`A044797(n+1)+A010052(A092962(n+1)²)`
-/

namespace A044417.P16209874858221015720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044797 (n + 1) + A010052 (A092962 (n + 1) ^ 2).toNat

end

end A044417.P16209874858221015720

/-! ## A044417.P16788129948692907708

`A057427(∑[A057728(n+1)])+A044797(n+1)`
-/

namespace A044417.P16788129948692907708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044797 (n + 1)

end

end A044417.P16788129948692907708

/-! ## A044417.P9768123634873694970

`A044797(n+1)%A054833(A353305(n)+1)+1`
-/

namespace A044417.P9768123634873694970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044797 (n + 1)) (A054833 (A353305 n + 1).toNat) + 1

end

end A044417.P9768123634873694970

/-! ## A044417.P4978342730217535476

`A044797(n+1)+A003961(A353305(n)+1)%2`
-/

namespace A044417.P4978342730217535476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044797 (n + 1) + Int.tmod (A003961 (A353305 n + 1).toNat) 2

end

end A044417.P4978342730217535476

/-! ## A044417.P12947670548759670469

`A044797(n+1)+A000040(A353305(n)+3)%2`
-/

namespace A044417.P12947670548759670469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044797 (n + 1) + Int.tmod (A000040 (A353305 n + 3).toNat) 2

end

end A044417.P12947670548759670469

/-! ## A044417.P1711936912506964934

`A044797(n+1)+A151878(n)!`
-/

namespace A044417.P1711936912506964934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044797 (n + 1) + (Nat.factorial (A151878 n).toNat : ℤ)

end

end A044417.P1711936912506964934

/-!
# A044418: Numbers n such that string 8,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044418, there is no canonical definition to state claims against.
-/

/-! ## A044418.P10689217711788963683

`A044798(n+1)+A000272(Δ[A097876(n)])`
-/

namespace A044418.P10689217711788963683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) + A000272 (f1 (n + 1) - f1 n).toNat

end

end A044418.P10689217711788963683

/-! ## A044418.P10100424542729639634

`A044798(1+n)+A002033(Δ[A097876(n)])`
-/

namespace A044418.P10100424542729639634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (1 + n) + A002033 (f1 (n + 1) - f1 n).toNat

end

end A044418.P10100424542729639634

/-! ## A044418.P6005018782966469854

`A044798(n+1)+A003520(Δ[A097876(n)])`
-/

namespace A044418.P6005018782966469854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) + A003520 (f1 (n + 1) - f1 n).toNat

end

end A044418.P6005018782966469854

/-! ## A044418.P13622457947565410627

`A044798(n+1)+A005676(Δ[A097876(n)])`
-/

namespace A044418.P13622457947565410627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) + A005676 (f1 (n + 1) - f1 n).toNat

end

end A044418.P13622457947565410627

/-! ## A044418.P16203542256782105587

`A044798(n+1)+A007318(Δ[A097876(n)])`
-/

namespace A044418.P16203542256782105587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) + A007318 (f1 (n + 1) - f1 n).toNat

end

end A044418.P16203542256782105587

/-! ## A044418.P4423990367617929140

`A044798(n+1)+A008288(Δ[A097876(n)])`
-/

namespace A044418.P4423990367617929140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) + A008288 (f1 (n + 1) - f1 n).toNat

end

end A044418.P4423990367617929140

/-! ## A044418.P10422762145825467947

`A044798(n+1)+A032020(Δ[A097876(n)])`
-/

namespace A044418.P10422762145825467947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) + A032020 (f1 (n + 1) - f1 n).toNat

end

end A044418.P10422762145825467947

/-! ## A044418.P11022764812037054703

`A044798(n+1)+A001221(A122556(n+1))`
-/

namespace A044418.P11022764812037054703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) + A001221 (A122556 (n + 1)).toNat

end

end A044418.P11022764812037054703

/-! ## A044418.P1636391967317983584

`A054977(A123487(n+1))+A044798(n+1)`
-/

namespace A044418.P1636391967317983584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A123487 (n + 1)).toNat + A044798 (n + 1)

end

end A044418.P1636391967317983584

/-! ## A044418.P9411889046874324455

`A044798(n+1)-A260196(Δ[A097876(n)]+2)`
-/

namespace A044418.P9411889046874324455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044798 (n + 1) - A260196 (f1 (n + 1) - f1 n + 2).toNat

end

end A044418.P9411889046874324455

/-!
# A044419: Numbers n such that string 8,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044419, there is no canonical definition to state claims against.
-/

/-! ## A044419.P6106728712726137955

`A054977((n+6)²+n)+A044799(n+1)`
-/

namespace A044419.P6106728712726137955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n + 6) ^ 2 + n) + A044799 (n + 1)

end

end A044419.P6106728712726137955

/-! ## A044419.P16949080196671621319

`A044799(n+1)+A014722(A097876(n))`
-/

namespace A044419.P16949080196671621319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044799 (n + 1) + A014722 (A097876 n).toNat

end

end A044419.P16949080196671621319

/-! ## A044419.P18219179247228717323

`A057427(∑[A246681(n)])+A044799(n+1)`
-/

namespace A044419.P18219179247228717323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044799 (n + 1)

end

end A044419.P18219179247228717323

/-! ## A044419.P2526549073186986214

`A057427(A046734(n+1))+A044799(n+1)`
-/

namespace A044419.P2526549073186986214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A046734 (n + 1)).toNat + A044799 (n + 1)

end

end A044419.P2526549073186986214

/-! ## A044419.P17419367825502062741

`A044799(n+1)+A000035(A173032(n+1))`
-/

namespace A044419.P17419367825502062741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044799 (n + 1) + A000035 (A173032 (n + 1)).toNat

end

end A044419.P17419367825502062741

/-! ## A044419.P15755483813651044432

`A044799(n+1)+A000035(A231506(n+1))`
-/

namespace A044419.P15755483813651044432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044799 (n + 1) + A000035 (A231506 (n + 1)).toNat

end

end A044419.P15755483813651044432

/-! ## A044419.P9164320032517701205

`A044799(n+1)+A001222(A069866(3*n+5))`
-/

namespace A044419.P9164320032517701205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044799 (n + 1) + A001222 (A069866 (3 * n + 5)).toNat

end

end A044419.P9164320032517701205

/-! ## A044419.P9070994756867403253

`A044799(n+1)+A001222(A278698(n+1))`
-/

namespace A044419.P9070994756867403253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044799 (n + 1) + A001222 (A278698 (n + 1)).toNat

end

end A044419.P9070994756867403253

/-! ## A044419.P13087397238178029366

`A156839(A156839(n+1))+A044799(n+1)`
-/

namespace A044419.P13087397238178029366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156839 (A156839 (n + 1)).toNat + A044799 (n + 1)

end

end A044419.P13087397238178029366

/-!
# A044420: Numbers n such that string 8,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044420, there is no canonical definition to state claims against.
-/

/-! ## A044420.P929850616914670232

`A044800(A032559(n+1))+1`
-/

namespace A044420.P929850616914670232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (A032559 (n + 1)).toNat + 1

end

end A044420.P929850616914670232

/-! ## A044420.P123359572881428766

`A044800(A082217(n+1))+1`
-/

namespace A044420.P123359572881428766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (A082217 (n + 1)).toNat + 1

end

end A044420.P123359572881428766

/-! ## A044420.P9372544860728364498

`A044800(n+1)+A001222(A187874(n))`
-/

namespace A044420.P9372544860728364498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (n + 1) + A001222 (A187874 n).toNat

end

end A044420.P9372544860728364498

/-! ## A044420.P10845709271086479330

`A044800(n+1)+A010873(A354554(n))`
-/

namespace A044420.P10845709271086479330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (n + 1) + A010873 (A354554 n).toNat

end

end A044420.P10845709271086479330

/-! ## A044420.P3118550226926500582

`A055881(A226657(n+1))+A044800(n+1)`
-/

namespace A044420.P3118550226926500582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A226657 (n + 1)).toNat + A044800 (n + 1)

end

end A044420.P3118550226926500582

/-!
# A044421: Numbers n such that string 8,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044421, there is no canonical definition to state claims against.
-/

/-! ## A044421.P6698331546467013845

`A067749(1+n)+A000034(A054256(n))`
-/

namespace A044421.P6698331546467013845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067749 (1 + n) + A000034 (A054256 n).toNat

end

end A044421.P6698331546467013845

/-! ## A044421.P2114101446336342049

`A067749(n+1)+A010699(A054256(n)+1)`
-/

namespace A044421.P2114101446336342049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067749 (n + 1) + A010699 (A054256 n + 1).toNat

end

end A044421.P2114101446336342049

/-! ## A044421.P16947328669250449800

`A073267(A018900(n+1))+A067749(n+1)`
-/

namespace A044421.P16947328669250449800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (A018900 (n + 1)).toNat + A067749 (n + 1)

end

end A044421.P16947328669250449800

/-! ## A044421.P17589614696132094572

`A067749(n+1)+A067743(A067889(n+1))`
-/

namespace A044421.P17589614696132094572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067749 (n + 1) + A067743 (A067889 (n + 1)).toNat

end

end A044421.P17589614696132094572

/-! ## A044421.P3412400843601248216

`A105560(A164024(n+6))+A067749(n+1)`
-/

namespace A044421.P3412400843601248216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A164024 (n + 6)).toNat + A067749 (n + 1)

end

end A044421.P3412400843601248216

/-! ## A044421.P16169405847223017769

`A067749(n+1)+A000005(A200997(n+1))`
-/

namespace A044421.P16169405847223017769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067749 (n + 1) + A000005 (A200997 (n + 1)).toNat

end

end A044421.P16169405847223017769

/-! ## A044421.P3107535257558730345

`A323436(A014973(n+1))+A017365(A017365(n))`
-/

namespace A044421.P3107535257558730345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A014973 (n + 1)).toNat + A017365 (A017365 n).toNat

end

end A044421.P3107535257558730345

/-!
# A044422: Numbers n such that string 9,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044422, there is no canonical definition to state claims against.
-/

/-! ## A044422.P9901033422594638465

`record[A153733(A043224(1+n))]`
-/

namespace A044422.P9901033422594638465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A043224 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044422.P9901033422594638465

/-! ## A044422.P15370364698852714705

`filter[A043224(n+1), A000034(#)]`
-/

namespace A044422.P15370364698852714705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000034 (f1 j).toNat = 1) n)

end

end A044422.P15370364698852714705

/-! ## A044422.P6708227628295188735

`filter[A043224(1+n), A059841(#)]`
-/

namespace A044422.P6708227628295188735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044422.P6708227628295188735

/-! ## A044422.P282795836325294111

`filter[A043224(n+1), A135528(#)]`
-/

namespace A044422.P282795836325294111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044422.P282795836325294111

/-! ## A044422.P17829987964728820800

`filter[A043224(n+1), A198517(#)]`
-/

namespace A044422.P17829987964728820800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044422.P17829987964728820800

/-! ## A044422.P539897148987620482

`filter[A043224(n+1), A232990(#)]`
-/

namespace A044422.P539897148987620482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044422.P539897148987620482

/-! ## A044422.P5694597477846272897

`filter[A043224(n+1), A266591(#)]`
-/

namespace A044422.P5694597477846272897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044422.P5694597477846272897

/-! ## A044422.P1512631873384241457

`filter[A043224(n+1), A267043(#)]`
-/

namespace A044422.P1512631873384241457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044422.P1512631873384241457

/-! ## A044422.P10894415709196873562

`A040020(2*(n+1)²)*A277596(n+1)`
-/

namespace A044422.P10894415709196873562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 (2 * (n + 1) ^ 2) * A277596 (n + 1)

end

end A044422.P10894415709196873562

/-! ## A044422.P354058862464166929

`A277596(n+1)*A329517(A003367(2*(n+1)))`
-/

namespace A044422.P354058862464166929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1) * A329517 (A003367 (2 * (n + 1))).toNat

end

end A044422.P354058862464166929

/-!
# A044423: Numbers n such that string 9,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044423, there is no canonical definition to state claims against.
-/

/-! ## A044423.P11896758722864116111

`A057427((1+n)²)+A044803(n+1)`
-/

namespace A044423.P11896758722864116111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((1 + n) ^ 2) + A044803 (n + 1)

end

end A044423.P11896758722864116111

/-! ## A044423.P854105406803840441

`A044803(1+n)+A000035(A028387(n))`
-/

namespace A044423.P854105406803840441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (1 + n) + A000035 (A028387 n).toNat

end

end A044423.P854105406803840441

/-! ## A044423.P14455318709869019566

`A044803(n+1)+A000038(A054143(n))!`
-/

namespace A044423.P14455318709869019566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (n + 1) + (Nat.factorial (A000038 (A054143 n).toNat).toNat : ℤ)

end

end A044423.P14455318709869019566

/-! ## A044423.P1763749399054391428

`A044803(n+1)+A000035(A044421(n+1))`
-/

namespace A044423.P1763749399054391428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (n + 1) + A000035 (A044421 (n + 1)).toNat

end

end A044423.P1763749399054391428

/-! ## A044423.P16601027793646386782

`A044803(n+1)+A000035(A044802(n+1))`
-/

namespace A044423.P16601027793646386782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (n + 1) + A000035 (A044802 (n + 1)).toNat

end

end A044423.P16601027793646386782

/-! ## A044423.P2072468191546731581

`A044803(n+1)+A000035(A044812(n+1))`
-/

namespace A044423.P2072468191546731581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (n + 1) + A000035 (A044812 (n + 1)).toNat

end

end A044423.P2072468191546731581

/-! ## A044423.P3657610283298360400

`A044803(n+1)+A033999(A028563(n))`
-/

namespace A044423.P3657610283298360400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (n + 1) + A033999 (A028563 n).toNat

end

end A044423.P3657610283298360400

/-! ## A044423.P5534424592373202008

`A044803(n+1)+A001222(A002383(n+1))`
-/

namespace A044423.P5534424592373202008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (n + 1) + A001222 (A002383 (n + 1)).toNat

end

end A044423.P5534424592373202008

/-! ## A044423.P10189113164270092403

`A044803(n+1)+A014963(2*A044803(n+1))`
-/

namespace A044423.P10189113164270092403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044803 (n + 1) + A014963 (2 * A044803 (n + 1)).toNat

end

end A044423.P10189113164270092403

/-!
# A044424: Numbers n such that string 9,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044424, there is no canonical definition to state claims against.
-/

/-! ## A044424.P13298189985398361985

`A267537(n²)+A044804(n+1)`
-/

namespace A044424.P13298189985398361985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (n ^ 2) + A044804 (n + 1)

end

end A044424.P13298189985398361985

/-! ## A044424.P9225357147774989063

`A044804(n+1)+A008836((n+1)²)`
-/

namespace A044424.P9225357147774989063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044804 (n + 1) + A008836 ((n + 1) ^ 2)

end

end A044424.P9225357147774989063

/-! ## A044424.P14240399322332404916

`A044804(1+n)+A010052((n+1)²)`
-/

namespace A044424.P14240399322332404916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044804 (1 + n) + A010052 ((n + 1) ^ 2)

end

end A044424.P14240399322332404916

/-! ## A044424.P5301831916986389197

`A240025((n+1)²)+A044804(n+1)`
-/

namespace A044424.P5301831916986389197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 ((n + 1) ^ 2) + A044804 (n + 1)

end

end A044424.P5301831916986389197

/-! ## A044424.P11204621819132527736

`A316789(n²+1)+A044804(n+1)`
-/

namespace A044424.P11204621819132527736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n ^ 2 + 1) + A044804 (n + 1)

end

end A044424.P11204621819132527736

/-! ## A044424.P18078335850153403654

`A044804(n+1)-A057428(A002522(n))`
-/

namespace A044424.P18078335850153403654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044804 (n + 1) - A057428 (A002522 n).toNat

end

end A044424.P18078335850153403654

/-! ## A044424.P880014754016472021

`A044804(n+1)+A003963(A059151(n²))`
-/

namespace A044424.P880014754016472021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044804 (n + 1) + A003963 (A059151 (n ^ 2)).toNat

end

end A044424.P880014754016472021

/-! ## A044424.P4152909271178534119

`A044804(n+1)+A000035(A044790(n+1))`
-/

namespace A044424.P4152909271178534119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044804 (n + 1) + A000035 (A044790 (n + 1)).toNat

end

end A044424.P4152909271178534119

/-! ## A044424.P18153601967531329369

`A290105(A094104(n+1))+A044804(n+1)`
-/

namespace A044424.P18153601967531329369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A094104 (n + 1)).toNat + A044804 (n + 1)

end

end A044424.P18153601967531329369

/-! ## A044424.P12642292891967276211

`A131561(A262689(n)^4)+A044804(n+1)`
-/

namespace A044424.P12642292891967276211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 (A262689 n ^ 4).toNat + A044804 (n + 1)

end

end A044424.P12642292891967276211

/-! ## A044424.P2613172643737910364

`A000122((n+1)²)*A008619(A044804(n+1))`
-/

namespace A044424.P2613172643737910364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n + 1) ^ 2) * A008619 (A044804 (n + 1)).toNat

end

end A044424.P2613172643737910364

/-!
# A044425: Numbers n such that string 9,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044425, there is no canonical definition to state claims against.
-/

/-! ## A044425.P13610788675564134513

`A044805(A000196(n²)+1)+1`
-/

namespace A044425.P13610788675564134513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (A000196 (n ^ 2) + 1).toNat + 1

end

end A044425.P13610788675564134513

/-! ## A044425.P6875285949506689496

`A044805(n+1)+abs(A164660(n))`
-/

namespace A044425.P6875285949506689496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (n + 1) + |A164660 n|

end

end A044425.P6875285949506689496

/-! ## A044425.P3386821312768351532

`A044805(1+n)+A010052(n²)`
-/

namespace A044425.P3386821312768351532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (1 + n) + A010052 (n ^ 2)

end

end A044425.P3386821312768351532

/-! ## A044425.P14930914612978709887

`A044805(n+1)+A053188(n²)+1`
-/

namespace A044425.P14930914612978709887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (n + 1) + (A053188 (n ^ 2) + 1)

end

end A044425.P14930914612978709887

/-! ## A044425.P3363552080471157479

`A044805(n+1)+A008836(A030664(n))`
-/

namespace A044425.P3363552080471157479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (n + 1) + A008836 (A030664 n).toNat

end

end A044425.P3363552080471157479

/-! ## A044425.P5999410541300684886

`A062157(A002061(n))+A044805(n+1)`
-/

namespace A044425.P5999410541300684886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002061 n).toNat + A044805 (n + 1)

end

end A044425.P5999410541300684886

/-! ## A044425.P16480556479277052930

`A093178(A001105(n))+A044805(n+1)`
-/

namespace A044425.P16480556479277052930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A001105 n).toNat + A044805 (n + 1)

end

end A044425.P16480556479277052930

/-! ## A044425.P7109036277733350407

`A176149(A000096(n))+A044805(n+1)`
-/

namespace A044425.P7109036277733350407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176149 (A000096 n).toNat + A044805 (n + 1)

end

end A044425.P7109036277733350407

/-! ## A044425.P11164893731669492857

`A044805(n+1)+A000035(A142244(n+1))`
-/

namespace A044425.P11164893731669492857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (n + 1) + A000035 (A142244 (n + 1)).toNat

end

end A044425.P11164893731669492857

/-! ## A044425.P12357021013554667619

`A057427(A180332(n+1))+A044805(n+1)`
-/

namespace A044425.P12357021013554667619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A180332 (n + 1)).toNat + A044805 (n + 1)

end

end A044425.P12357021013554667619

/-! ## A044425.P13538011236797100970

`A044805(n+1)+A000203(((-A164660(n))^n)²)`
-/

namespace A044425.P13538011236797100970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (n + 1) + A000203 (((-A164660 n) ^ n) ^ 2).toNat

end

end A044425.P13538011236797100970

/-! ## A044425.P240886628518608780

`A005171(2*(n+1))+A044805(n+1)+A028928(n²)`
-/

namespace A044425.P240886628518608780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1)) + (A044805 (n + 1) + A028928 (n ^ 2))

end

end A044425.P240886628518608780

/-! ## A044425.P9463288376193788519

`A044805(n+1)+A055029((n+1)²)!`
-/

namespace A044425.P9463288376193788519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (n + 1) + (Nat.factorial (A055029 ((n + 1) ^ 2)).toNat : ℤ)

end

end A044425.P9463288376193788519

/-! ## A044425.P12681168767581814000

`A071936(A027688(n))+A044805(n+1)`
-/

namespace A044425.P12681168767581814000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A027688 n).toNat + A044805 (n + 1)

end

end A044425.P12681168767581814000

/-! ## A044425.P3573673507679134284

`A140080(A000124(n))+A044805(n+1)`
-/

namespace A044425.P3573673507679134284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A000124 n).toNat + A044805 (n + 1)

end

end A044425.P3573673507679134284

/-! ## A044425.P15381304654012417981

`A267053(A002378(n))+A044805(n+1)`
-/

namespace A044425.P15381304654012417981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A002378 n).toNat + A044805 (n + 1)

end

end A044425.P15381304654012417981

/-! ## A044425.P2542247719656017847

`A044805(n+1)+A000035(A044790(n+1))`
-/

namespace A044425.P2542247719656017847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044805 (n + 1) + A000035 (A044790 (n + 1)).toNat

end

end A044425.P2542247719656017847

/-!
# A044426: Numbers n such that string 9,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044426, there is no canonical definition to state claims against.
-/

/-! ## A044426.P4389208319897208358

`A044806(n+1)+A008480(p?[21*n+2])`
-/

namespace A044426.P4389208319897208358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044806 (n + 1) + A008480 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A044426.P4389208319897208358

/-! ## A044426.P14030845061501580579

`A071625(p?[21*n+2])+A044806(n+1)`
-/

namespace A044426.P14030845061501580579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A044806 (n + 1)

end

end A044426.P14030845061501580579

/-! ## A044426.P9845789083072045899

`A057427(A047842(n))+A044806(n+1)`
-/

namespace A044426.P9845789083072045899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A047842 n).toNat + A044806 (n + 1)

end

end A044426.P9845789083072045899

/-! ## A044426.P3505093834940515002

`A057427(A173786(n))+A044806(n+1)`
-/

namespace A044426.P3505093834940515002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A173786 n).toNat + A044806 (n + 1)

end

end A044426.P3505093834940515002

/-! ## A044426.P8147569687511412333

`A057427(Δ[A302835(n)])+A044806(n+1)`
-/

namespace A044426.P8147569687511412333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (f1 (n + 1) - f1 n).toNat + A044806 (n + 1)

end

end A044426.P8147569687511412333

/-! ## A044426.P16111342554694074595

`A057427(A068634(n+1))+A044806(n+1)`
-/

namespace A044426.P16111342554694074595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A068634 (n + 1)).toNat + A044806 (n + 1)

end

end A044426.P16111342554694074595

/-! ## A044426.P6959316455144879461

`A044806(n+1)+abs(A033999(n))^A273135(n+1)`
-/

namespace A044426.P6959316455144879461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044806 (n + 1) : ℚ) + (|A033999 n| : ℚ) ^ (A273135 (n + 1) : ℤ)

end

end A044426.P6959316455144879461

/-! ## A044426.P7496945905656876085

`A044806(n+1)+A014577(n²)`
-/

namespace A044426.P7496945905656876085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044806 (n + 1) + A014577 (n ^ 2)

end

end A044426.P7496945905656876085

/-! ## A044426.P14356708787403725409

`A267936(n²)+A044806(n+1)`
-/

namespace A044426.P14356708787403725409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267936 (n ^ 2) + A044806 (n + 1)

end

end A044426.P14356708787403725409

/-! ## A044426.P669748084786625188

`A057427(A043077(n+1))+A044806(n+1)`
-/

namespace A044426.P669748084786625188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A043077 (n + 1)).toNat + A044806 (n + 1)

end

end A044426.P669748084786625188

/-! ## A044426.P6036149752406797950

`A178489(A145339(n+1))+A044806(n+1)`
-/

namespace A044426.P6036149752406797950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A145339 (n + 1)).toNat + A044806 (n + 1)

end

end A044426.P6036149752406797950

/-! ## A044426.P16187940505143256466

`A093148(A329899(n+1))+A044806(n+1)`
-/

namespace A044426.P16187940505143256466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 (A329899 (n + 1)).toNat + A044806 (n + 1)

end

end A044426.P16187940505143256466

/-! ## A044426.P2603537636182093747

`(A044806(n+1)+1)*A014577(A000290(n))`
-/

namespace A044426.P2603537636182093747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044806 (n + 1) + 1) * A014577 (A000290 n).toNat

end

end A044426.P2603537636182093747

/-! ## A044426.P2154547388286847802

`A093148(n²)+A044806(n+1)`
-/

namespace A044426.P2154547388286847802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 (n ^ 2) + A044806 (n + 1)

end

end A044426.P2154547388286847802

/-! ## A044426.P463694707244482282

`A044806(n+1)+A000035(A044790(n+1))`
-/

namespace A044426.P463694707244482282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044806 (n + 1) + A000035 (A044790 (n + 1)).toNat

end

end A044426.P463694707244482282

/-! ## A044426.P7217850911339649891

`A044806(n+1)+A033999(A044420(n+1))`
-/

namespace A044426.P7217850911339649891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044806 (n + 1) + A033999 (A044420 (n + 1)).toNat

end

end A044426.P7217850911339649891

/-! ## A044426.P11282532498203712428

`A055491(A055491(n+1))+A044806(n+1)`
-/

namespace A044426.P11282532498203712428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A055491 (n + 1)).toNat + A044806 (n + 1)

end

end A044426.P11282532498203712428

/-! ## A044426.P18372720283401667165

`A044806(n+1)-A260196(A184416(n+1))`
-/

namespace A044426.P18372720283401667165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044806 (n + 1) - A260196 (A184416 (n + 1)).toNat

end

end A044426.P18372720283401667165

/-! ## A044426.P11832122590768714719

`A000122((n+1)²)*A008619(A044806(n+1))`
-/

namespace A044426.P11832122590768714719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n + 1) ^ 2) * A008619 (A044806 (n + 1)).toNat

end

end A044426.P11832122590768714719

/-!
# A044427: Numbers n such that string 9,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044427, there is no canonical definition to state claims against.
-/

/-! ## A044427.P1787713357996373029

`A054977((3-n)²+n)+A044807(n+1)`
-/

namespace A044427.P1787713357996373029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((3 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat + A044807 (n + 1)

end

end A044427.P1787713357996373029

/-! ## A044427.P1808341980418233933

`A057427(A007294(n))+A044807(n+1)`
-/

namespace A044427.P1808341980418233933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007294 n).toNat + A044807 (n + 1)

end

end A044427.P1808341980418233933

/-! ## A044427.P13810505671819513744

`A057427(A043305(n+1))+A044807(n+1)`
-/

namespace A044427.P13810505671819513744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A043305 (n + 1)).toNat + A044807 (n + 1)

end

end A044427.P13810505671819513744

/-! ## A044427.P17055401694549408028

`A044807(n+1)+A000035(A238574(n+1))`
-/

namespace A044427.P17055401694549408028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044807 (n + 1) + A000035 (A238574 (n + 1)).toNat

end

end A044427.P17055401694549408028

/-! ## A044427.P1541148449170626072

`A057427(A344238(n+1))+A044807(n+1)`
-/

namespace A044427.P1541148449170626072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A344238 (n + 1)).toNat + A044807 (n + 1)

end

end A044427.P1541148449170626072

/-! ## A044427.P10429274524945257888

`A044807(n+1)+A000688(A238574(n+1))^A213727(n)`
-/

namespace A044427.P10429274524945257888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044807 (n + 1) : ℚ) + (A000688 (A238574 (n + 1)).toNat : ℚ) ^ (A213727 n : ℤ)

end

end A044427.P10429274524945257888

/-! ## A044427.P12841644907275575667

`(A044807(n+1)+A000688(A238574(n+1)))*A158388(n)²`
-/

namespace A044427.P12841644907275575667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044807 (n + 1) + A000688 (A238574 (n + 1)).toNat) * A158388 n ^ 2

end

end A044427.P12841644907275575667

/-! ## A044427.P12020302151156637306

`(A044807(n+1)+A000688(A238574(n+1)))*A034947(n+1)²`
-/

namespace A044427.P12020302151156637306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044807 (n + 1) + A000688 (A238574 (n + 1)).toNat) * A034947 (n + 1) ^ 2

end

end A044427.P12020302151156637306

/-! ## A044427.P1117198891340040673

`A044807(n+1)+A003557(A178623(n))`
-/

namespace A044427.P1117198891340040673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044807 (n + 1) + A003557 (A178623 n).toNat

end

end A044427.P1117198891340040673

/-! ## A044427.P17195106461482830458

`A044807(n+1)+A014808(A273137(n+1))`
-/

namespace A044427.P17195106461482830458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044807 (n + 1) + A014808 (A273137 (n + 1)).toNat

end

end A044427.P17195106461482830458

/-! ## A044427.P4470123985321493959

`A044807(n+1)+A034947((1-n)²+1)`
-/

namespace A044427.P4470123985321493959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044807 (n + 1) + A034947 ((1 - (n : ℤ)) ^ 2 + 1).toNat

end

end A044427.P4470123985321493959

/-! ## A044427.P17799424293365006324

`A044807(n+1)+A000035(A002061(n))`
-/

namespace A044427.P17799424293365006324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044807 (n + 1) + A000035 (A002061 n).toNat

end

end A044427.P17799424293365006324

/-! ## A044427.P16096756489041677751

`A057427(A045918(n))+A044807(n+1)`
-/

namespace A044427.P16096756489041677751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A045918 n).toNat + A044807 (n + 1)

end

end A044427.P16096756489041677751

/-! ## A044427.P3235936320862233316

`A265331(A029669(n))+A044807(n+1)`
-/

namespace A044427.P3235936320862233316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (A029669 n).toNat + A044807 (n + 1)

end

end A044427.P3235936320862233316

/-! ## A044427.P3153076661429932318

`A136522(A184988(n))+A044807(n+1)`
-/

namespace A044427.P3153076661429932318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A184988 n).toNat + A044807 (n + 1)

end

end A044427.P3153076661429932318

/-! ## A044427.P4919931992445369449

`A089026(A166142(n+1))+A044807(n+1)`
-/

namespace A044427.P4919931992445369449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A166142 (n + 1)).toNat + A044807 (n + 1)

end

end A044427.P4919931992445369449

/-! ## A044427.P1491842823026194684

`A158388(A145339(n+1))+A044807(n+1)`
-/

namespace A044427.P1491842823026194684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A145339 (n + 1)).toNat + A044807 (n + 1)

end

end A044427.P1491842823026194684

/-! ## A044427.P10207010096678995738

`A044807(n+1)+A001492(n²)`
-/

namespace A044427.P10207010096678995738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044807 (n + 1) + A001492 (n ^ 2)

end

end A044427.P10207010096678995738

/-! ## A044427.P2342075293778869471

`A044807(n+1)+A001222(A060395(n²))`
-/

namespace A044427.P2342075293778869471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044807 (n + 1) + A001222 (A060395 (n ^ 2)).toNat

end

end A044427.P2342075293778869471

/-! ## A044427.P17581760530747487531

`A089026(A089026(n+1)²)+A044807(n+1)`
-/

namespace A044427.P17581760530747487531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A089026 (n + 1) ^ 2).toNat + A044807 (n + 1)

end

end A044427.P17581760530747487531

/-!
# A044428: Numbers n such that string 9,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044428, there is no canonical definition to state claims against.
-/

/-! ## A044428.P10866811265664666153

`A044808(n+1)+abs(A122188(n+1))`
-/

namespace A044428.P10866811265664666153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044808 (n + 1) + |A122188 (n + 1)|

end

end A044428.P10866811265664666153

/-! ## A044428.P11061816240090199803

`A044808(n+1)+A033999(Δ[A140513(n)])`
-/

namespace A044428.P11061816240090199803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044808 (n + 1) + A033999 (f1 (n + 1) - f1 n).toNat

end

end A044428.P11061816240090199803

/-! ## A044428.P15016004779573408233

`A054977(A119350(n+1))+A044808(n+1)`
-/

namespace A044428.P15016004779573408233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A119350 (n + 1)).toNat + A044808 (n + 1)

end

end A044428.P15016004779573408233

/-! ## A044428.P1746439993874475138

`A057427(A119350(1+n))+A044808(n+1)`
-/

namespace A044428.P1746439993874475138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A119350 (1 + n)).toNat + A044808 (n + 1)

end

end A044428.P1746439993874475138

/-! ## A044428.P2253196152713216117

`A057427(A000010(n²+1))+A044808(n+1)`
-/

namespace A044428.P2253196152713216117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000010 (n ^ 2 + 1)).toNat + A044808 (n + 1)

end

end A044428.P2253196152713216117

/-! ## A044428.P426058547837353734

`A044808(n+1)+A010052(A119350(n+1)²)`
-/

namespace A044428.P426058547837353734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044808 (n + 1) + A010052 (A119350 (n + 1) ^ 2).toNat

end

end A044428.P426058547837353734

/-! ## A044428.P9904168385609481750

`A044808(n+1)+A035263(A119350(n+1)²)`
-/

namespace A044428.P9904168385609481750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044808 (n + 1) + A035263 (A119350 (n + 1) ^ 2).toNat

end

end A044428.P9904168385609481750

/-! ## A044428.P1152996680888968879

`(A119350(A119350(n+1))+A044808(n+1))*A008836(n+1)²`
-/

namespace A044428.P1152996680888968879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119350 (A119350 (n + 1)).toNat + A044808 (n + 1)) * A008836 (n + 1) ^ 2

end

end A044428.P1152996680888968879

/-! ## A044428.P17168098513325059799

`(A119350(A119350(n+1))+A044808(n+1))%A044420(n+1)²`
-/

namespace A044428.P17168098513325059799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119350 (A119350 (n + 1)).toNat + A044808 (n + 1)) (A044420 (n + 1) ^ 2)

end

end A044428.P17168098513325059799

/-! ## A044428.P2091912851180384796

`A057427(A262363(n+1))+A044808(n+1)`
-/

namespace A044428.P2091912851180384796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A262363 (n + 1)).toNat + A044808 (n + 1)

end

end A044428.P2091912851180384796

/-! ## A044428.P9801128808292789175

`(A044808(n+1)-A008836(A262363(n+1)))*A008836(n+1)²`
-/

namespace A044428.P9801128808292789175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044808 (n + 1) - A008836 (A262363 (n + 1)).toNat) * A008836 (n + 1) ^ 2

end

end A044428.P9801128808292789175

/-! ## A044428.P17003635361731527923

`A057427(A047842(n))+A044808(n+1)`
-/

namespace A044428.P17003635361731527923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A047842 n).toNat + A044808 (n + 1)

end

end A044428.P17003635361731527923

/-! ## A044428.P14192558791258074103

`A119502(A196222(n))+A044808(n+1)`
-/

namespace A044428.P14192558791258074103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A196222 n).toNat + A044808 (n + 1)

end

end A044428.P14192558791258074103

/-! ## A044428.P9486269618996244211

`A057427(A243155(n+1))+A044808(n+1)`
-/

namespace A044428.P9486269618996244211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A243155 (n + 1)).toNat + A044808 (n + 1)

end

end A044428.P9486269618996244211

/-! ## A044428.P18307803119586368645

`A044808(n+1)+A010052(n²)`
-/

namespace A044428.P18307803119586368645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044808 (n + 1) + A010052 (n ^ 2)

end

end A044428.P18307803119586368645

/-! ## A044428.P2435324583330292219

`A057427(A002061(n))+A044808(n+1)`
-/

namespace A044428.P2435324583330292219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002061 n).toNat + A044808 (n + 1)

end

end A044428.P2435324583330292219

/-! ## A044428.P5177742632982681755

`A044808(n+1)-A057428(A121149(n))`
-/

namespace A044428.P5177742632982681755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044808 (n + 1) - A057428 (A121149 n).toNat

end

end A044428.P5177742632982681755

/-! ## A044428.P14108503585790984091

`A057427(A291803(n+1))+A044808(n+1)`
-/

namespace A044428.P14108503585790984091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A291803 (n + 1)).toNat + A044808 (n + 1)

end

end A044428.P14108503585790984091

/-! ## A044428.P9378588785994559281

`A066400((n+1)²)+A044808(n+1)`
-/

namespace A044428.P9378588785994559281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 ((n + 1) ^ 2) + A044808 (n + 1)

end

end A044428.P9378588785994559281

/-! ## A044428.P8262174259455689819

`lcm(A044808(n+1)+1, A057079(n²))`
-/

namespace A044428.P8262174259455689819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A044808 (n + 1) + 1) (A057079 (n ^ 2))

end

end A044428.P8262174259455689819

/-!
# A044429: Numbers n such that string 9,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044429, there is no canonical definition to state claims against.
-/

/-! ## A044429.P13983545710667872107

`A044809(n+1)+gcd((-1)^n, A103863(n))`
-/

namespace A044429.P13983545710667872107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) + (Int.gcd ((-1) ^ n) (A103863 n) : ℤ)

end

end A044429.P13983545710667872107

/-! ## A044429.P17636957496325305667

`A057427(A049063(n))+A044809(n+1)`
-/

namespace A044429.P17636957496325305667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A049063 n).toNat + A044809 (n + 1)

end

end A044429.P17636957496325305667

/-! ## A044429.P15705896727642803493

`A044809(1+n)+A010156(A130330(n))`
-/

namespace A044429.P15705896727642803493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (1 + n) + A010156 (A130330 n).toNat

end

end A044429.P15705896727642803493

/-! ## A044429.P9678788020386918434

`A044809(n+1)+A011655(A130321(n))`
-/

namespace A044429.P9678788020386918434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) + A011655 (A130321 n).toNat

end

end A044429.P9678788020386918434

/-! ## A044429.P12192611559476885651

`A044809(n+1)+A011655(A137688(n))`
-/

namespace A044429.P12192611559476885651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) + A011655 (A137688 n).toNat

end

end A044429.P12192611559476885651

/-! ## A044429.P17977640592402977511

`A044809(n+1)+A010684(A235686(n))`
-/

namespace A044429.P17977640592402977511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) + A010684 (A235686 n).toNat

end

end A044429.P17977640592402977511

/-! ## A044429.P8198203055414807674

`A044809(n+1)+A010125(A246717(n+1))`
-/

namespace A044429.P8198203055414807674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) + A010125 (A246717 (n + 1)).toNat

end

end A044429.P8198203055414807674

/-! ## A044429.P14874574368511977579

`A044809(n+1)-A008836(A031930(n+1))`
-/

namespace A044429.P14874574368511977579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) - A008836 (A031930 (n + 1)).toNat

end

end A044429.P14874574368511977579

/-! ## A044429.P9394647026443700600

`A044809(n+1)-A008836(A031931(n+1))`
-/

namespace A044429.P9394647026443700600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) - A008836 (A031931 (n + 1)).toNat

end

end A044429.P9394647026443700600

/-! ## A044429.P9002993223995442033

`A044809(n+1)+A014963(30*(n+1))^A103863(n)`
-/

namespace A044429.P9002993223995442033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044809 (n + 1) : ℚ) + (A014963 (30 * (n + 1)) : ℚ) ^ (A103863 n : ℤ)

end

end A044429.P9002993223995442033

/-! ## A044429.P8493344977204900942

`A044809(n+1)-A008836(A031927(n))`
-/

namespace A044429.P8493344977204900942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) - A008836 (A031927 n).toNat

end

end A044429.P8493344977204900942

/-! ## A044429.P13003706016436215426

`A044809(n+1)-A165326(A316490(n))`
-/

namespace A044429.P13003706016436215426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) - A165326 (A316490 n).toNat

end

end A044429.P13003706016436215426

/-! ## A044429.P16029117968834898237

`A044809(n+1)+A008836((n+1)²)`
-/

namespace A044429.P16029117968834898237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) + A008836 ((n + 1) ^ 2)

end

end A044429.P16029117968834898237

/-! ## A044429.P977551442305100016

`A066400((n+1)²)+A044809(n+1)`
-/

namespace A044429.P977551442305100016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 ((n + 1) ^ 2) + A044809 (n + 1)

end

end A044429.P977551442305100016

/-! ## A044429.P17063683286714843085

`A057427(A002522(n))+A044809(n+1)`
-/

namespace A044429.P17063683286714843085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002522 n).toNat + A044809 (n + 1)

end

end A044429.P17063683286714843085

/-! ## A044429.P15352799513389084256

`A057427(A027691(n))+A044809(n+1)`
-/

namespace A044429.P15352799513389084256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A027691 n).toNat + A044809 (n + 1)

end

end A044429.P15352799513389084256

/-! ## A044429.P2963973817364291586

`A044809(n+1)+A000034(A044420(n+1))`
-/

namespace A044429.P2963973817364291586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) + A000034 (A044420 (n + 1)).toNat

end

end A044429.P2963973817364291586

/-! ## A044429.P5869307652114094903

`A044809(n+1)-A033999(A044790(n+1))`
-/

namespace A044429.P5869307652114094903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044809 (n + 1) - A033999 (A044790 (n + 1)).toNat

end

end A044429.P5869307652114094903

/-! ## A044429.P8425153732516605592

`A097031(∑[A014029(n²)])+A044809(n+1)`
-/

namespace A044429.P8425153732516605592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044809 (n + 1)

end

end A044429.P8425153732516605592

/-!
# A044430: Numbers n such that string 9,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044430, there is no canonical definition to state claims against.
-/

/-! ## A044430.P14948353351471646171

`A044810(1+n)+A000035(A030665(n+1))`
-/

namespace A044430.P14948353351471646171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (1 + n) + A000035 (A030665 (n + 1)).toNat

end

end A044430.P14948353351471646171

/-! ## A044430.P1645855874152799238

`A097325(A022004(1+n))+A044810(n+1)`
-/

namespace A044430.P1645855874152799238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A022004 (1 + n)).toNat + A044810 (n + 1)

end

end A044430.P1645855874152799238

/-! ## A044430.P5970654246583843133

`A044810(n+1)+A000035(A142102(n+1))`
-/

namespace A044430.P5970654246583843133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) + A000035 (A142102 (n + 1)).toNat

end

end A044430.P5970654246583843133

/-! ## A044430.P3687346658990044637

`A097325(A073648(n+1))+A044810(n+1)`
-/

namespace A044430.P3687346658990044637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A073648 (n + 1)).toNat + A044810 (n + 1)

end

end A044430.P3687346658990044637

/-! ## A044430.P7151428730760718015

`A044810(n+1)+A001222(A132955(n+2))`
-/

namespace A044430.P7151428730760718015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) + A001222 (A132955 (n + 2)).toNat

end

end A044430.P7151428730760718015

/-! ## A044430.P12426693165837526531

`A044810(n+1)+A000120(A130321(n))`
-/

namespace A044430.P12426693165837526531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) + A000120 (A130321 n).toNat

end

end A044430.P12426693165837526531

/-! ## A044430.P9125183741158653133

`A044810(n+1)+A001222(A124064(n+1))`
-/

namespace A044430.P9125183741158653133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) + A001222 (A124064 (n + 1)).toNat

end

end A044430.P9125183741158653133

/-! ## A044430.P12294452371351312552

`A044810(n+1)-A081729(A142731(n+1))`
-/

namespace A044430.P12294452371351312552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) - A081729 (A142731 (n + 1)).toNat

end

end A044430.P12294452371351312552

/-! ## A044430.P18360511891019657361

`A133265(A044810(n+1)*A160338(n+1))`
-/

namespace A044430.P18360511891019657361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A044810 (n + 1) * A160338 (n + 1)).toNat

end

end A044430.P18360511891019657361

/-! ## A044430.P5503864873309633829

`A088433(A134204(n))+A044810(n+1)`
-/

namespace A044430.P5503864873309633829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (A134204 n).toNat + A044810 (n + 1)

end

end A044430.P5503864873309633829

/-! ## A044430.P281751587620372371

`A044810(n+1)+A000190(A309755(n+1))`
-/

namespace A044430.P281751587620372371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) + A000190 (A309755 (n + 1)).toNat

end

end A044430.P281751587620372371

/-! ## A044430.P17480498606836299953

`A054977(p?[A180646(n+1)])+A044810(n+1)`
-/

namespace A044430.P17480498606836299953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A044810 (n + 1)

end

end A044430.P17480498606836299953

/-! ## A044430.P15052360228419645358

`A044810(n+1)+A034947((1-n)²+1)`
-/

namespace A044430.P15052360228419645358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) + A034947 ((1 - (n : ℤ)) ^ 2 + 1).toNat

end

end A044430.P15052360228419645358

/-! ## A044430.P3013307896485963670

`A044810(n+1)-A165326(A316490(n))`
-/

namespace A044430.P3013307896485963670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) - A165326 (A316490 n).toNat

end

end A044430.P3013307896485963670

/-! ## A044430.P15664592381560495541

`A165326(A316490(n)+1)+A044810(n+1)`
-/

namespace A044430.P15664592381560495541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A316490 n + 1).toNat + A044810 (n + 1)

end

end A044430.P15664592381560495541

/-! ## A044430.P7431722454415490581

`A044810(n+1)+A000034(A002378(n))`
-/

namespace A044430.P7431722454415490581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044810 (n + 1) + A000034 (A002378 n).toNat

end

end A044430.P7431722454415490581

/-! ## A044430.P17607394136724685415

`A057427(A059100(n))+A044810(n+1)`
-/

namespace A044430.P17607394136724685415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A059100 n).toNat + A044810 (n + 1)

end

end A044430.P17607394136724685415

/-!
# A044431: Numbers n such that string 9,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044431, there is no canonical definition to state claims against.
-/

/-! ## A044431.P5850300928034791647

`A044332(1+n)-abs(A118762(n+1))`
-/

namespace A044431.P5850300928034791647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044332 (1 + n) - |A118762 (n + 1)|

end

end A044431.P5850300928034791647

/-! ## A044431.P1590224813807542847

`A158128(n+1)-(abs(A118762(n+1))+1)`
-/

namespace A044431.P1590224813807542847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - (|A118762 (n + 1)| + 1)

end

end A044431.P1590224813807542847

/-! ## A044431.P1519876428013957383

`A017377(A017377(n))-A324802(A324969(n+1))`
-/

namespace A044431.P1519876428013957383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A017377 n).toNat - A324802 (A324969 (n + 1)).toNat

end

end A044431.P1519876428013957383

/-! ## A044431.P17457795061997227528

`A044811(A351870(n+1))+1`
-/

namespace A044431.P17457795061997227528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044811 (A351870 (n + 1)).toNat + 1

end

end A044431.P17457795061997227528

/-! ## A044431.P7713839467078454510

`A044811(n+1)-A057428(ceil(3^(n-1)))`
-/

namespace A044431.P7713839467078454510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044811 (n + 1) - A057428 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A044431.P7713839467078454510

/-!
# A044432: a(n) is the number whose base-2 representation is d(0)d(1)...d(n), where d=A005614 (the infinite Fibonacci word).

The programs for A044432, the canonical program `A044432.P5964800957522265017` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044432 has offset 0).

The definition of A044432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A044432.P5964800957522265017

`2*a(n-1)+A005614(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044432

/-- `2*a(n-1)+A005614(n)` -/
def P5964800957522265017.Spec : Prop :=
  ∀ n, P5964800957522265017.a n = A044432 n

theorem P5964800957522265017.correct : P5964800957522265017.Spec := by
  intro n
  simp only [A044432]

end A044432

/-! ## A044432.P2725713946124672152

`A000225(n+1)-A182028(n)`
-/

namespace A044432.P2725713946124672152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A182028 n

end

end A044432.P2725713946124672152

namespace A044432

/-- `A000225(n+1)-A182028(n)` -/
def P2725713946124672152.Spec : Prop :=
  ∀ n, P2725713946124672152.a n = A044432 n

end A044432

/-! ## A044432.P8029664550193005793

`Δ[floor((n+1)/ϕ)]+2*a(n-1)` with `a(0)=1`
-/

namespace A044432.P8029664550193005793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A044432.P8029664550193005793

namespace A044432

/-- `Δ[floor((n+1)/ϕ)]+2*a(n-1)` -/
def P8029664550193005793.Spec : Prop :=
  ∀ n, P8029664550193005793.a n = A044432 n

end A044432

/-! ## A044432.P15765364814331907706

`or(2*a(n-1), A003842(n))` with `a(0)=1`
-/

namespace A044432.P15765364814331907706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A003842 n)

end

end A044432.P15765364814331907706

namespace A044432

/-- `or(2*a(n-1), A003842(n))` -/
def P15765364814331907706.Spec : Prop :=
  ∀ n, P15765364814331907706.a n = A044432 n

end A044432

/-! ## A044432.P16776945385403571621

`2*a(n-1)+1-A003849(n)` with `a(0)=1`
-/

namespace A044432.P16776945385403571621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - A003849 n

end

end A044432.P16776945385403571621

namespace A044432

/-- `2*a(n-1)+1-A003849(n)` -/
def P16776945385403571621.Spec : Prop :=
  ∀ n, P16776945385403571621.a n = A044432 n

end A044432

/-! ## A044432.P14158228142356201208

`A126646(n)-A182028(n)`
-/

namespace A044432.P14158228142356201208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A182028 n

end

end A044432.P14158228142356201208

namespace A044432

/-- `A126646(n)-A182028(n)` -/
def P14158228142356201208.Spec : Prop :=
  ∀ n, P14158228142356201208.a n = A044432 n

end A044432

/-! ## A044432.P840372766064770621

`A000079(n)-(A182028(n)-A000225(n))`
-/

namespace A044432.P840372766064770621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A182028 n - A000225 n)

end

end A044432.P840372766064770621

namespace A044432

/-- `A000079(n)-(A182028(n)-A000225(n))` -/
def P840372766064770621.Spec : Prop :=
  ∀ n, P840372766064770621.a n = A044432 n

end A044432

/-! ## A044432.P14286028050634679159

`A000225(n+1)+A003849(n+1)-A214319(n)`
-/

namespace A044432.P14286028050634679159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A003849 (n + 1) - A214319 n)

end

end A044432.P14286028050634679159

namespace A044432

/-- `A000225(n+1)+A003849(n+1)-A214319(n)` -/
def P14286028050634679159.Spec : Prop :=
  ∀ n, P14286028050634679159.a n = A044432 n

end A044432

/-! ## A044432.P16657597099903784752

`2*A126646(n)-A214318(n+1)`
-/

namespace A044432.P16657597099903784752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126646 n - A214318 (n + 1)

end

end A044432.P16657597099903784752

namespace A044432

/-- `2*A126646(n)-A214318(n+1)` -/
def P16657597099903784752.Spec : Prop :=
  ∀ n, P16657597099903784752.a n = A044432 n

end A044432

/-! ## A044432.P26845261172572243

`A214318(n+1)-2*A182028(n)`
-/

namespace A044432.P26845261172572243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214318 (n + 1) - 2 * A182028 n

end

end A044432.P26845261172572243

namespace A044432

/-- `A214318(n+1)-2*A182028(n)` -/
def P26845261172572243.Spec : Prop :=
  ∀ n, P26845261172572243.a n = A044432 n

end A044432

/-! ## A044432.P8489646073089580445

`A000225(n+1)+A000225(n+1)-A214318(n+1)`
-/

namespace A044432.P8489646073089580445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A000225 (n + 1) - A214318 (n + 1))

end

end A044432.P8489646073089580445

namespace A044432

/-- `A000225(n+1)+A000225(n+1)-A214318(n+1)` -/
def P8489646073089580445.Spec : Prop :=
  ∀ n, P8489646073089580445.a n = A044432 n

end A044432

/-! ## A044432.P2272045649184486884

`A003849(n+1)+A214318(n+1)-A182028(n+1)`
-/

namespace A044432.P2272045649184486884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1) + (A214318 (n + 1) - A182028 (n + 1))

end

end A044432.P2272045649184486884

namespace A044432

/-- `A003849(n+1)+A214318(n+1)-A182028(n+1)` -/
def P2272045649184486884.Spec : Prop :=
  ∀ n, P2272045649184486884.a n = A044432 n

end A044432

/-!
# A044433: Numbers n such that string 0,0 occurs in the base 3 representation of n but not of n+1.

The programs for A044433, there is no canonical definition to state claims against.
-/

/-! ## A044433.P7092200775673209320

`A347398(A129445(n+1))+A044060(n+1)`
-/

namespace A044433.P7092200775673209320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347398 (A129445 (n + 1)).toNat + A044060 (n + 1)

end

end A044433.P7092200775673209320

/-!
# A044434: Numbers n such that string 0,1 occurs in the base 3 representation of n but not of n+1.

The programs for A044434, there is no canonical definition to state claims against.
-/

/-! ## A044434.P17485683971361478872

`(A044054(n+1)-1)%A235257(n+1)`
-/

namespace A044434.P17485683971361478872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044054 (n + 1) - 1) (A235257 (n + 1))

end

end A044434.P17485683971361478872

/-! ## A044434.P10769948294437740385

`A044054(n+1)-A040583(A164558(n))`
-/

namespace A044434.P10769948294437740385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044054 (n + 1) - A040583 (A164558 n).toNat

end

end A044434.P10769948294437740385

/-! ## A044434.P14645429388250821249

`A044054(n+1)-A213919(A027642(n))`
-/

namespace A044434.P14645429388250821249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044054 (n + 1) - A213919 (A027642 n).toNat

end

end A044434.P14645429388250821249

/-! ## A044434.P7261058610725763994

`A044054(n+1)-A303950(A080856(n))`
-/

namespace A044434.P7261058610725763994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044054 (n + 1) - A303950 (A080856 n).toNat

end

end A044434.P7261058610725763994

/-! ## A044434.P15155624324463659296

`A044054(n+1)-A292886(A260380(n+1))`
-/

namespace A044434.P15155624324463659296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044054 (n + 1) - A292886 (A260380 (n + 1)).toNat

end

end A044434.P15155624324463659296

/-!
# A044435: Numbers k such that string 0,2 occurs in the base-3 representation of k but not of k+1.

The programs for A044435, there is no canonical definition to state claims against.
-/

/-! ## A044435.P12220653646674860099

`eq[A026146(n+4), A200507(2*n)]+1`
-/

namespace A044435.P12220653646674860099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026146 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044435.P12220653646674860099

/-! ## A044435.P15912149591181545313

`∩[A287960(n+1), A334521(n+1)]`
-/

namespace A044435.P15912149591181545313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044435.P15912149591181545313

/-! ## A044435.P2462282857246942281

`A026194(lt[A026194(n+1), A325389(n+1)])`
-/

namespace A044435.P2462282857246942281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026194 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A044435.P2462282857246942281

/-! ## A044435.P4552378222425604556

`lt[A319247(n+1)+A026143(2*(n+2)), A026195(n+1)]`
-/

namespace A044435.P4552378222425604556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319247 (n + 1) + A026143 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044435.P4552378222425604556

/-! ## A044435.P6687245069211910266

`eq[A026146(n+3), A181839(n)]`
-/

namespace A044435.P6687245069211910266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026146 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044435.P6687245069211910266

/-!
# A044436: Numbers n such that string 1,0 occurs in the base 3 representation of n but not of n+1.

The programs for A044436, the canonical program `A044436.P16465431864017586381` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044436 has offset 1).

The definition of A044436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044436.P16465431864017586381

`record[2*n+1+A004488(A059249(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A044436

/-- `record[2*n+1+A004488(A059249(n+1))]` -/
def P16465431864017586381.Spec : Prop :=
  ∀ n, P16465431864017586381.a n = A044436 (n + 1)

theorem P16465431864017586381.correct : P16465431864017586381.Spec := by
  intro n
  simp only [A044436, Nat.add_sub_cancel]

end A044436

/-! ## A044436.P8428748271798715762

`record[Δ[A117966(n)]+3*n+2]`
-/

namespace A044436.P8428748271798715762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (3 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044436.P8428748271798715762

namespace A044436

/-- `record[Δ[A117966(n)]+3*n+2]` -/
def P8428748271798715762.Spec : Prop :=
  ∀ n, P8428748271798715762.a n = A044436 (n + 1)

end A044436

/-! ## A044436.P3602461463815188657

`record[Δ[A004488(n)+A000326(n)]]`
-/

namespace A044436.P3602461463815188657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n + A000326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044436.P3602461463815188657

namespace A044436

/-- `record[Δ[A004488(n)+A000326(n)]]` -/
def P3602461463815188657.Spec : Prop :=
  ∀ n, P3602461463815188657.a n = A044436 (n + 1)

end A044436

/-! ## A044436.P2487878729621553000

`record[A004488(A059249(n+1))+A004442(2*n)]`
-/

namespace A044436.P2487878729621553000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A059249 (n + 1)).toNat + A004442 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044436.P2487878729621553000

namespace A044436

/-- `record[A004488(A059249(n+1))+A004442(2*n)]` -/
def P2487878729621553000.Spec : Prop :=
  ∀ n, P2487878729621553000.a n = A044436 (n + 1)

end A044436

/-!
# A044437: Numbers n such that string 1,1 occurs in the base 3 representation of n but not of n+1.

The programs for A044437, the canonical program `A044437.P989226592921075756` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044437 has offset 1).

The definition of A044437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044437.P989226592921075756

`eq[A015053(A290091(n)), A290091(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A044437

/-- `eq[A015053(A290091(n)), A290091(n+1)]` -/
def P989226592921075756.Spec : Prop :=
  ∀ n, (P989226592921075756.a n : ℤ) = A044437 (n + 1)

theorem P989226592921075756.correct : P989226592921075756.Spec := by
  intro n
  simp only [A044437, Nat.add_sub_cancel]

end A044437

/-! ## A044437.P11705590770944337052

`eq[A048735(A289813(n)), A318666(n+1)]`
-/

namespace A044437.P11705590770944337052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A289813 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044437.P11705590770944337052

namespace A044437

/-- `eq[A048735(A289813(n)), A318666(n+1)]` -/
def P11705590770944337052.Spec : Prop :=
  ∀ n, (P11705590770944337052.a n : ℤ) = A044437 (n + 1)

end A044437

/-! ## A044437.P5820638770534098137

`eq[A289813(n+1), A292272(A289813(n))]`
-/

namespace A044437.P5820638770534098137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044437.P5820638770534098137

namespace A044437

/-- `eq[A289813(n+1), A292272(A289813(n))]` -/
def P5820638770534098137.Spec : Prop :=
  ∀ n, (P5820638770534098137.a n : ℤ) = A044437 (n + 1)

end A044437

/-! ## A044437.P6963129053951377506

`eq[20^A196096(n+1), A196096(n)]`
-/

namespace A044437.P6963129053951377506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A196096 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044437.P6963129053951377506

namespace A044437

/-- `eq[20^A196096(n+1), A196096(n)]` -/
def P6963129053951377506.Spec : Prop :=
  ∀ n, (P6963129053951377506.a n : ℤ) = A044437 (n + 1)

end A044437

/-! ## A044437.P16112550685827682448

`eq[A005894(n*A196096(n+1)), A196096(n)]`
-/

namespace A044437.P16112550685827682448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 ((n : ℤ) * A196096 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044437.P16112550685827682448

namespace A044437

/-- `eq[A005894(n*A196096(n+1)), A196096(n)]` -/
def P16112550685827682448.Spec : Prop :=
  ∀ n, (P16112550685827682448.a n : ℤ) = A044437 (n + 1)

end A044437

/-!
# A044438: Numbers n such that string 1,2 occurs in the base 3 representation of n but not of n+1.

The programs for A044438, the canonical program `A044438.P5204322575316227369` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044438 has offset 1).

The definition of A044438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044438.P9700011702532370679

`record[A014682(A319021(1+3*n))]`
-/

namespace A044438.P9700011702532370679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A319021 (1 + 3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044438.P9700011702532370679

namespace A044438

/-- `record[A014682(A319021(1+3*n))]` -/
def P9700011702532370679.Spec : Prop :=
  ∀ n, P9700011702532370679.a n = A044438 (n + 1)

end A044438

/-! ## A044438.P10079603081473832570

`A014682(record[A319021(A016921(n))])`
-/

namespace A044438.P10079603081473832570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A016921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044438.P10079603081473832570

namespace A044438

/-- `A014682(record[A319021(A016921(n))])` -/
def P10079603081473832570.Spec : Prop :=
  ∀ n, P10079603081473832570.a n = A044438 (n + 1)

end A044438

/-! ## A044438.P5204322575316227369

`lt[A023713(n+1), A006288(n)%A023713(n+2)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044438

/-- `lt[A023713(n+1), A006288(n)%A023713(n+2)]` -/
def P5204322575316227369.Spec : Prop :=
  ∀ n, (P5204322575316227369.a n : ℤ) = A044438 (n + 1)

theorem P5204322575316227369.correct : P5204322575316227369.Spec := by
  intro n
  simp only [A044438, Nat.add_sub_cancel]

end A044438

/-! ## A044438.P14805043554705964065

`A043879(A000201(n+1)%A222531(n+1))`
-/

namespace A044438.P14805043554705964065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043879 (Int.tmod (A000201 (n + 1)) (A222531 (n + 1))).toNat

end

end A044438.P14805043554705964065

namespace A044438

/-- `A043879(A000201(n+1)%A222531(n+1))` -/
def P14805043554705964065.Spec : Prop :=
  ∀ n, P14805043554705964065.a n = A044438 (n + 1)

end A044438

/-! ## A044438.P10664385550636085803

`∩[A043879(n+1), A230902(n+1)]`
-/

namespace A044438.P10664385550636085803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044438.P10664385550636085803

namespace A044438

/-- `∩[A043879(n+1), A230902(n+1)]` -/
def P10664385550636085803.Spec : Prop :=
  ∀ n, (P10664385550636085803.a n : ℤ) = A044438 (n + 1)

end A044438

/-!
# A044440: Numbers n such that string 2,1 occurs in the base 3 representation of n but not of n+1.

The programs for A044440, there is no canonical definition to state claims against.
-/

/-! ## A044440.P10066939293149755431

`lt[A265344(n+1), A106625(A105361(n+1))]`
-/

namespace A044440.P10066939293149755431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106625 (A105361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044440.P10066939293149755431

/-!
# A044441: Numbers n such that string 2,2 occurs in the base 3 representation of n but not of n+1.

The programs for A044441, the canonical program `A044441.P9775668103846057135` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044441 has offset 1).

The definition of A044441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044441.P9775668103846057135

`eq[A300222(n+1), A338242(A300222(n+5))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A044441

/-- `eq[A300222(n+1), A338242(A300222(n+5))]` -/
def P9775668103846057135.Spec : Prop :=
  ∀ n, (P9775668103846057135.a n : ℤ) = A044441 (n + 1)

theorem P9775668103846057135.correct : P9775668103846057135.Spec := by
  intro n
  simp only [A044441, Nat.add_sub_cancel]

end A044441

/-! ## A044441.P16079285598197210609

`eq[A132471(A348940(n+1)), A180595(n+3)]`
-/

namespace A044441.P16079285598197210609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132471 (A348940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P16079285598197210609

namespace A044441

/-- `eq[A132471(A348940(n+1)), A180595(n+3)]` -/
def P16079285598197210609.Spec : Prop :=
  ∀ n, (P16079285598197210609.a n : ℤ) = A044441 (n + 1)

end A044441

/-! ## A044441.P12313666193071647089

`eq[A267017(n+2), A325788(A336850(n+1))]`
-/

namespace A044441.P12313666193071647089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267017 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325788 (A336850 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P12313666193071647089

namespace A044441

/-- `eq[A267017(n+2), A325788(A336850(n+1))]` -/
def P12313666193071647089.Spec : Prop :=
  ∀ n, (P12313666193071647089.a n : ℤ) = A044441 (n + 1)

end A044441

/-! ## A044441.P7714306078312976795

`eq[A010888(n+2), A295920(A184348(n+1))]`
-/

namespace A044441.P7714306078312976795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (A184348 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P7714306078312976795

namespace A044441

/-- `eq[A010888(n+2), A295920(A184348(n+1))]` -/
def P7714306078312976795.Spec : Prop :=
  ∀ n, (P7714306078312976795.a n : ℤ) = A044441 (n + 1)

end A044441

/-! ## A044441.P9298432369234867753

`lt[A367587(A287707(n+1)), A007949(n+1)]`
-/

namespace A044441.P9298432369234867753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367587 (A287707 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044441.P9298432369234867753

namespace A044441

/-- `lt[A367587(A287707(n+1)), A007949(n+1)]` -/
def P9298432369234867753.Spec : Prop :=
  ∀ n, (P9298432369234867753.a n : ℤ) = A044441 (n + 1)

end A044441

/-!
# A044442: Numbers n such that string 0,0 occurs in the base 4 representation of n but not of n+1.

The programs for A044442, there is no canonical definition to state claims against.
-/

/-! ## A044442.P12792855406145144275

`A276330(A081437(n))+A125169(n)`
-/

namespace A044442.P12792855406145144275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276330 (A081437 n).toNat + A125169 n

end

end A044442.P12792855406145144275

/-! ## A044442.P17452779832349443018

`A125169(n)+A010121(A187829(n+1))`
-/

namespace A044442.P17452779832349443018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A010121 (A187829 (n + 1)).toNat

end

end A044442.P17452779832349443018

/-! ## A044442.P15230361182419037974

`A185216(A248576(n+1))+A125169(n)`
-/

namespace A044442.P15230361182419037974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (A248576 (n + 1)).toNat + A125169 n

end

end A044442.P15230361182419037974

/-! ## A044442.P18341991835185756096

`xor(A115362(n), A158057(A187829(n+1)))`
-/

namespace A044442.P18341991835185756096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115362 n) (A158057 (A187829 (n + 1)).toNat)

end

end A044442.P18341991835185756096

/-! ## A044442.P4506370400982340665

`Δ[A001844(2*n+1)]-A040005(A071246(n+4))`
-/

namespace A044442.P4506370400982340665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A040005 (A071246 (n + 4)).toNat

end

end A044442.P4506370400982340665

/-!
# A044443: Numbers n such that string 0,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044443, there is no canonical definition to state claims against.
-/

/-! ## A044443.P191759282652360100

`or(A044062(n+1)-1, A044062(n+1))`
-/

namespace A044443.P191759282652360100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044062 (n + 1) - 1) (A044062 (n + 1))

end

end A044443.P191759282652360100

/-! ## A044443.P278552138724635197

`A086799(A044062(n+1))`
-/

namespace A044443.P278552138724635197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044062 (n + 1)).toNat

end

end A044443.P278552138724635197

/-! ## A044443.P16910878432061367435

`A044063(n+1)-A158388(A000045(n+1))`
-/

namespace A044443.P16910878432061367435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044063 (n + 1) - A158388 (A000045 (n + 1)).toNat

end

end A044443.P16910878432061367435

/-! ## A044443.P250013936310756166

`A300222(A074324(n))+A023443(A044063(n+1))`
-/

namespace A044443.P250013936310756166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A074324 n).toNat + A023443 (A044063 (n + 1)).toNat

end

end A044443.P250013936310756166

/-! ## A044443.P16266798782006395451

`A057428(A000045(n+2))+A044063(n+1)`
-/

namespace A044443.P16266798782006395451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000045 (n + 2)).toNat + A044063 (n + 1)

end

end A044443.P16266798782006395451

/-!
# A044444: Numbers n such that string 0,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044444, there is no canonical definition to state claims against.
-/

/-! ## A044444.P15149419033613440843

`A057428(Δ[∑[n]²])+A044064(n+1)`
-/

namespace A044444.P15149419033613440843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A044064 (n + 1)

end

end A044444.P15149419033613440843

/-! ## A044444.P15839703064226050602

`A044064(n+1)-A158388(A000045(n))²`
-/

namespace A044444.P15839703064226050602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044064 (n + 1) - A158388 (A000045 n).toNat ^ 2

end

end A044444.P15839703064226050602

/-! ## A044444.P13813362178685341340

`A044064(n+1)-A000688(A334075(n+1))`
-/

namespace A044444.P13813362178685341340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044064 (n + 1) - A000688 (A334075 (n + 1)).toNat

end

end A044444.P13813362178685341340

/-! ## A044444.P2964228363784870334

`A023443(A044064(n+1)%A007766(2*(n+2)))`
-/

namespace A044444.P2964228363784870334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A044064 (n + 1)) (A007766 (2 * (n + 2)))).toNat

end

end A044444.P2964228363784870334

/-! ## A044444.P768310488438088053

`A044064(n+1)-A158388(∑[A044064(3*n+5)])`
-/

namespace A044444.P768310488438088053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044064 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044064 (n + 1) - A158388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044444.P768310488438088053

/-!
# A044445: Numbers n such that string 0,3 occurs in the base 4 representation of n but not of n+1.

The programs for A044445, there is no canonical definition to state claims against.
-/

/-! ## A044445.P16843051449974109715

`or(A044064(n+1)-1, A044064(n+1))`
-/

namespace A044445.P16843051449974109715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044064 (n + 1) - 1) (A044064 (n + 1))

end

end A044445.P16843051449974109715

/-! ## A044445.P6784248201290577761

`or(A057428(n)+A044064(n+1), A044064(n+1))`
-/

namespace A044445.P6784248201290577761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044064 (n + 1)) (A044064 (n + 1))

end

end A044445.P6784248201290577761

/-! ## A044445.P6362851900127599612

`A086799(A044064(1+n))`
-/

namespace A044445.P6362851900127599612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044064 (1 + n)).toNat

end

end A044445.P6362851900127599612

/-! ## A044445.P13192655808532229756

`or(A006530(A074324(n)), A044064(n+1))`
-/

namespace A044445.P13192655808532229756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A074324 n).toNat) (A044064 (n + 1))

end

end A044445.P13192655808532229756

/-! ## A044445.P1467221144162417599

`or(A044064(n+1), A122553(A000097(n)))`
-/

namespace A044445.P1467221144162417599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044064 (n + 1)) (A122553 (A000097 n).toNat)

end

end A044445.P1467221144162417599

/-!
# A044446: Numbers k such that string 1,0 occurs in the base-4 representation of k but not of k+1.

The programs for A044446, there is no canonical definition to state claims against.
-/

/-! ## A044446.P5689835444430301513

`record[A289813(A037477(A044576(n+1)))]`
-/

namespace A044446.P5689835444430301513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A037477 (A044576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044446.P5689835444430301513

/-! ## A044446.P5654585832112210892

`A119413(∑[A014709(A007179(n))])`
-/

namespace A044446.P5654585832112210892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A007179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044446.P5654585832112210892

/-! ## A044446.P5863566998865203688

`A119413(record[A173526(A344296(n+1))])`
-/

namespace A044446.P5863566998865203688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (A344296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044446.P5863566998865203688

/-! ## A044446.P9631919827972120452

`record[A017089(n)*A246127(A276922(n))]`
-/

namespace A044446.P9631919827972120452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A246127 (A276922 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044446.P9631919827972120452

/-! ## A044446.P13587812397761444069

`eq[A038538(A163808(n+4)), A393146(2*(n+2))]`
-/

namespace A044446.P13587812397761444069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (A163808 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393146 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044446.P13587812397761444069

/-!
# A044447: Numbers n such that string 1,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044447, there is no canonical definition to state claims against.
-/

/-! ## A044447.P3609813940057373705

`or(A044066(n+1)-A158388(3*(n+1)), A044066(n+1))`
-/

namespace A044447.P3609813940057373705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044066 (n + 1) - A158388 (3 * (n + 1))) (A044066 (n + 1))

end

end A044447.P3609813940057373705

/-! ## A044447.P3125174341975229691

`A086799(A044066(n+1))`
-/

namespace A044447.P3125174341975229691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044066 (n + 1)).toNat

end

end A044447.P3125174341975229691

/-! ## A044447.P12906021533765897758

`eq[exp(A196272(n+1)), A196272(n)]`
-/

namespace A044447.P12906021533765897758
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A196272 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A044447.P12906021533765897758

/-! ## A044447.P14863255596790675722

`eq[A007089(n)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P14863255596790675722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007089 n : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P14863255596790675722

/-! ## A044447.P20030935829892777

`eq[A007092(n)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P20030935829892777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007092 n : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P20030935829892777

/-! ## A044447.P292494046137935221

`eq[A181099(n)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P292494046137935221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181099 n : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P292494046137935221

/-! ## A044447.P15553630596929160661

`eq[A031456(n+1)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P15553630596929160661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031456 (n + 1) : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P15553630596929160661

/-!
# A044448: Numbers n such that string 1,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044448, there is no canonical definition to state claims against.
-/

/-! ## A044448.P18075991483650026975

`record[A289831(A044644(n+1))]`
-/

namespace A044448.P18075991483650026975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A044644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044448.P18075991483650026975

/-! ## A044448.P2135010473216434185

`record[A289814(A044656(n+1))]`
-/

namespace A044448.P2135010473216434185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A044656 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044448.P2135010473216434185

/-!
# A044449: Numbers n such that string 1,3 occurs in the base 4 representation of n but not of n+1.

The programs for A044449, there is no canonical definition to state claims against.
-/

/-! ## A044449.P10098975036690776326

`or(A044068(n+1)-1, A044068(n+1))`
-/

namespace A044449.P10098975036690776326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044068 (n + 1) - 1) (A044068 (n + 1))

end

end A044449.P10098975036690776326

/-! ## A044449.P18117328846927239813

`or(A057428(n)+A044068(n+1), A044068(n+1))`
-/

namespace A044449.P18117328846927239813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044068 (n + 1)) (A044068 (n + 1))

end

end A044449.P18117328846927239813

/-! ## A044449.P4035137108920286602

`A086799(A044068(1+n))`
-/

namespace A044449.P4035137108920286602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044068 (1 + n)).toNat

end

end A044449.P4035137108920286602

/-! ## A044449.P17493669923716333281

`eq[2, A055229(A332815(n))]`
-/

namespace A044449.P17493669923716333281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A332815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044449.P17493669923716333281

/-! ## A044449.P14179728434214363587

`eq[2, A055229(A005940(n+1))]`
-/

namespace A044449.P14179728434214363587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044449.P14179728434214363587

/-!
# A044450: Numbers k such that string 2,0 occurs in the base 4 representation of k but not of k+1.

The programs for A044450, the canonical program `A044450.P2422719575531033708` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044450 has offset 1).

The definition of A044450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044450.P2422719575531033708

`record[A225822(n+1)+A006519(A003159(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044450

/-- `record[A225822(n+1)+A006519(A003159(n+1))]` -/
def P2422719575531033708.Spec : Prop :=
  ∀ n, P2422719575531033708.a n = A044450 (n + 1)

theorem P2422719575531033708.correct : P2422719575531033708.Spec := by
  intro n
  simp only [A044450, Nat.add_sub_cancel]

end A044450

/-! ## A044450.P13749939799849049310

`record[A289831(A044659(n+1))]`
-/

namespace A044450.P13749939799849049310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A044659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044450.P13749939799849049310

namespace A044450

/-- `record[A289831(A044659(n+1))]` -/
def P13749939799849049310.Spec : Prop :=
  ∀ n, P13749939799849049310.a n = A044450 (n + 1)

end A044450

/-! ## A044450.P16695587979871233851

`eq[3, A089311(A037462(n+1))]`
-/

namespace A044450.P16695587979871233851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A037462 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044450.P16695587979871233851

namespace A044450

/-- `eq[3, A089311(A037462(n+1))]` -/
def P16695587979871233851.Spec : Prop :=
  ∀ n, (P16695587979871233851.a n : ℤ) = A044450 (n + 1)

end A044450

/-! ## A044450.P6126519398903459661

`(A044070(n+1)-1)%p?[A001057((4*n+1)²)]`
-/

namespace A044450.P6126519398903459661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 ((4 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044070 (n + 1) - 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A044450.P6126519398903459661

namespace A044450

/-- `(A044070(n+1)-1)%p?[A001057((4*n+1)²)]` -/
def P6126519398903459661.Spec : Prop :=
  ∀ n, P6126519398903459661.a n = A044450 (n + 1)

end A044450

/-! ## A044450.P17945145932336786859

`A044070(n+1)-A053981(A000085(n+1))`
-/

namespace A044450.P17945145932336786859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044070 (n + 1) - A053981 (A000085 (n + 1)).toNat

end

end A044450.P17945145932336786859

namespace A044450

/-- `A044070(n+1)-A053981(A000085(n+1))` -/
def P17945145932336786859.Spec : Prop :=
  ∀ n, P17945145932336786859.a n = A044450 (n + 1)

end A044450

/-!
# A044451: Numbers n such that string 2,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044451, there is no canonical definition to state claims against.
-/

/-! ## A044451.P7980023670800507464

`or(A044070(n+1)-1, A044070(n+1))`
-/

namespace A044451.P7980023670800507464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044070 (n + 1) - 1) (A044070 (n + 1))

end

end A044451.P7980023670800507464

/-! ## A044451.P4205369621295570268

`A086799(A044070(n+1))`
-/

namespace A044451.P4205369621295570268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044070 (n + 1)).toNat

end

end A044451.P4205369621295570268

/-! ## A044451.P4394868369399558262

`record[A289831(A044660(n+1))]`
-/

namespace A044451.P4394868369399558262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A044660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044451.P4394868369399558262

/-! ## A044451.P3190204271832635959

`lt[A014452(2*(n+1)), A007706(A311338(n+2))]`
-/

namespace A044451.P3190204271832635959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (A311338 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044451.P3190204271832635959

/-! ## A044451.P12420839259263604928

`record[A289814(A044688(n+1))]`
-/

namespace A044451.P12420839259263604928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A044688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044451.P12420839259263604928

/-!
# A044452: Numbers n such that string 2,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044452, there is no canonical definition to state claims against.
-/

/-! ## A044452.P8701058254140022610

`record[A341522(A055045(1+n)-1)]`
-/

namespace A044452.P8701058254140022610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 (A055045 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044452.P8701058254140022610

/-! ## A044452.P12605170878024958018

`A106839(n)-A330025(A007051(n))`
-/

namespace A044452.P12605170878024958018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n - A330025 (A007051 n).toNat

end

end A044452.P12605170878024958018

/-! ## A044452.P17361479808859599935

`A106839(n)-A000035(A093726(n+1))`
-/

namespace A044452.P17361479808859599935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n - A000035 (A093726 (n + 1)).toNat

end

end A044452.P17361479808859599935

/-! ## A044452.P10479415587834937499

`A106839(n)-A011703(A346207(n+1))`
-/

namespace A044452.P10479415587834937499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n - A011703 (A346207 (n + 1)).toNat

end

end A044452.P10479415587834937499

/-! ## A044452.P12565082136468969447

`A293630(A000108(n))+A017077(2*n+1)`
-/

namespace A044452.P12565082136468969447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (A000108 n).toNat + A017077 (2 * n + 1)

end

end A044452.P12565082136468969447

/-!
# A044453: Numbers k such that string 2,3 occurs in the base 4 representation of k but not of k+1.

The programs for A044453, there is no canonical definition to state claims against.
-/

/-! ## A044453.P7267155634534119550

`record[A322018(A044071(n+1))]%A380661(3*(n+1))`
-/

namespace A044453.P7267155634534119550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (A044071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A380661 (3 * (n + 1)))

end

end A044453.P7267155634534119550

/-! ## A044453.P6326493626748901044

`record[A322018(A044071(n+1)%A380661(3*(n+1)))]`
-/

namespace A044453.P6326493626748901044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (Int.tmod (A044071 (n + 1)) (A380661 (3 * (n + 1)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044453.P6326493626748901044

/-! ## A044453.P14875957647510591026

`∩[A043885(n+1), A254311(n+1)]`
-/

namespace A044453.P14875957647510591026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044453.P14875957647510591026

/-! ## A044453.P11538616741348252125

`∩[A043885(n+1), A122124(n+1)]`
-/

namespace A044453.P11538616741348252125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044453.P11538616741348252125

/-! ## A044453.P4833944079282504281

`∩[A043885(n+1), A350395(n+1)]`
-/

namespace A044453.P4833944079282504281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044453.P4833944079282504281

/-!
# A044454: Numbers n such that string 3,0 occurs in the base 4 representation of n but not of n+1.

The programs for A044454, there is no canonical definition to state claims against.
-/

/-! ## A044454.P2651012906023702329

`A044074(A187829(n+1))-1`
-/

namespace A044454.P2651012906023702329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (A187829 (n + 1)).toNat - 1

end

end A044454.P2651012906023702329

/-! ## A044454.P5892047831789636226

`A044074(n+1)-A001221(A128066(n+1))`
-/

namespace A044454.P5892047831789636226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A001221 (A128066 (n + 1)).toNat

end

end A044454.P5892047831789636226

/-! ## A044454.P12508188049470273124

`A044074(n+1)-A001221(A168110(n+1))`
-/

namespace A044454.P12508188049470273124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A001221 (A168110 (n + 1)).toNat

end

end A044454.P12508188049470273124

/-! ## A044454.P6271441700193067416

`A044074(n+1)-A325509(A145882(n+1))`
-/

namespace A044454.P6271441700193067416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A325509 (A145882 (n + 1)).toNat

end

end A044454.P6271441700193067416

/-! ## A044454.P16680730190961459275

`A044074(n+1)-A072411(A347307(n+3))`
-/

namespace A044454.P16680730190961459275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A072411 (A347307 (n + 3)).toNat

end

end A044454.P16680730190961459275

/-!
# A044455: Numbers n such that string 3,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044455, there is no canonical definition to state claims against.
-/

/-! ## A044455.P16625383470827118477

`A086799(A044074(1+n))`
-/

namespace A044455.P16625383470827118477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044074 (1 + n)).toNat

end

end A044455.P16625383470827118477

/-! ## A044455.P7817227577249363152

`eq[A000122(21*A004015(n+3)), A014455(n+1)]`
-/

namespace A044455.P7817227577249363152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (21 * A004015 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P7817227577249363152

/-! ## A044455.P9947996167017692755

`eq[A004018(21*A004015(n+3)), A014455(n+1)]`
-/

namespace A044455.P9947996167017692755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (21 * A004015 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P9947996167017692755

/-! ## A044455.P5869027977110247121

`eq[A014455(n+1), A014478(A014489(n+1))]`
-/

namespace A044455.P5869027977110247121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014478 (A014489 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P5869027977110247121

/-! ## A044455.P13338778776224175186

`eq[A010051(A008137(n+1)), A080917(2*(n+1))]`
-/

namespace A044455.P13338778776224175186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008137 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P13338778776224175186

/-!
# A044456: Numbers n such that string 3,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044456, there is no canonical definition to state claims against.
-/

/-! ## A044456.P13562680794624358193

`record[A341522(A004215(1+n)-1)]`
-/

namespace A044456.P13562680794624358193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 (A004215 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044456.P13562680794624358193

/-! ## A044456.P12742667436987509700

`record[A289814(A044710(n+1))]`
-/

namespace A044456.P12742667436987509700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A044710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044456.P12742667436987509700

/-! ## A044456.P11503700493455976434

`A341522(A004215(n+1)-1)+A000007(A165794(n))`
-/

namespace A044456.P11503700493455976434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 (A004215 (n + 1) - 1).toNat + A000007 (A165794 n).toNat

end

end A044456.P11503700493455976434

/-! ## A044456.P5530178742612895802

`A341522(A004215(n+1)-1)+A019590(A184537(n))`
-/

namespace A044456.P5530178742612895802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 (A004215 (n + 1) - 1).toNat + A019590 (A184537 n).toNat

end

end A044456.P5530178742612895802

/-! ## A044456.P13384498027194840957

`A115419(A004215(n+1))+A051516(A331755(n+1))`
-/

namespace A044456.P13384498027194840957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A004215 (n + 1)).toNat + A051516 (A331755 (n + 1)).toNat

end

end A044456.P13384498027194840957

/-!
# A044457: Numbers n such that string 3,3 occurs in the base 4 representation of n but not of n+1.

The programs for A044457, there is no canonical definition to state claims against.
-/

/-! ## A044457.P902472869813536997

`A125169(A000401(n+1))+C(n, A293230(n))`
-/

namespace A044457.P902472869813536997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A000401 (n + 1)).toNat + (Nat.choose n (A293230 n).toNat : ℤ)

end

end A044457.P902472869813536997

/-! ## A044457.P2025896170475154553

`A125169(A000401(n+1))%A333999(n+1)²`
-/

namespace A044457.P2025896170475154553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125169 (A000401 (n + 1)).toNat) (A333999 (n + 1) ^ 2)

end

end A044457.P2025896170475154553

/-! ## A044457.P9907040960191888840

`A125169(A000401(n+1))+A000007(A297568(n))`
-/

namespace A044457.P9907040960191888840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A000401 (n + 1)).toNat + A000007 (A297568 n).toNat

end

end A044457.P9907040960191888840

/-! ## A044457.P7698878038751668174

`A125169(A000401(n+1))-A348215(A297568(n)+1)`
-/

namespace A044457.P7698878038751668174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A000401 (n + 1)).toNat - A348215 (A297568 n + 1).toNat

end

end A044457.P7698878038751668174

/-! ## A044457.P4844238011087284288

`A125169(A000401(n+1))+A000038(A016754(n))`
-/

namespace A044457.P4844238011087284288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A000401 (n + 1)).toNat + A000038 (A016754 n).toNat

end

end A044457.P4844238011087284288

/-! ## A044457.P10304194620355814613

`A125169(A000401(n+1))+A000038(A069894(n))`
-/

namespace A044457.P10304194620355814613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A000401 (n + 1)).toNat + A000038 (A069894 n).toNat

end

end A044457.P10304194620355814613

/-!
# A044458: Numbers n such that string 0,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044458, there is no canonical definition to state claims against.
-/

/-! ## A044458.P4363221238402271810

`A060904(n+1)+A008607(A187829(n+1))-1`
-/

namespace A044458.P4363221238402271810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 1) + (A008607 (A187829 (n + 1)).toNat - 1)

end

end A044458.P4363221238402271810

/-! ## A044458.P4341495169681208698

`A387180(A047336(2*(n+1)))+A356944(n+1)`
-/

namespace A044458.P4341495169681208698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (A047336 (2 * (n + 1))).toNat + A356944 (n + 1)

end

end A044458.P4341495169681208698

/-! ## A044458.P2955379297528483893

`A311257(A008486(2*(n+1)))+A057918(A147491(2*n+3))`
-/

namespace A044458.P2955379297528483893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 (A008486 (2 * (n + 1))).toNat + A057918 (A147491 (2 * n + 3)).toNat

end

end A044458.P2955379297528483893

/-!
# A044459: Numbers n such that string 0,1 occurs in the base 5 representation of n but not of n+1.

The programs for A044459, there is no canonical definition to state claims against.
-/

/-! ## A044459.P7860083009799798121

`A057428(A027642(n))+A044079(n+1)`
-/

namespace A044459.P7860083009799798121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A027642 n).toNat + A044079 (n + 1)

end

end A044459.P7860083009799798121

/-! ## A044459.P15424025778216125590

`A044079(n+1)-A093178(A016116(n))`
-/

namespace A044459.P15424025778216125590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044079 (n + 1) - A093178 (A016116 n).toNat

end

end A044459.P15424025778216125590

/-! ## A044459.P9567492379592761151

`A057428(A078862(n+1))+A044079(n+1)`
-/

namespace A044459.P9567492379592761151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A078862 (n + 1)).toNat + A044079 (n + 1)

end

end A044459.P9567492379592761151

/-! ## A044459.P7727796161928865215

`A044079(n+1)-A001222(A089360(n+1))`
-/

namespace A044459.P7727796161928865215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044079 (n + 1) - A001222 (A089360 (n + 1)).toNat

end

end A044459.P7727796161928865215

/-! ## A044459.P14850640437033346577

`A057428(A169586(n+2))+A044079(n+1)`
-/

namespace A044459.P14850640437033346577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A169586 (n + 2)).toNat + A044079 (n + 1)

end

end A044459.P14850640437033346577

/-!
# A044460: Numbers n such that string 0,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044460, there is no canonical definition to state claims against.
-/

/-! ## A044460.P16390131489273090783

`A044080(n+1)-A151815(n)!`
-/

namespace A044460.P16390131489273090783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044080 (n + 1) - (Nat.factorial (A151815 n).toNat : ℤ)

end

end A044460.P16390131489273090783

/-! ## A044460.P9023785418494837830

`A057428(A151815(n)!)+A044080(n+1)`
-/

namespace A044460.P9023785418494837830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.factorial (A151815 n).toNat) + A044080 (n + 1)

end

end A044460.P9023785418494837830

/-! ## A044460.P12697320114335066944

`A044080(n+1)-A151660(A246596(n))!`
-/

namespace A044460.P12697320114335066944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044080 (n + 1) - (Nat.factorial (A151660 (A246596 n).toNat).toNat : ℤ)

end

end A044460.P12697320114335066944

/-! ## A044460.P985573008426989202

`A057428(A169586(n+1))+A044080(n+1)`
-/

namespace A044460.P985573008426989202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A169586 (n + 1)).toNat + A044080 (n + 1)

end

end A044460.P985573008426989202

/-! ## A044460.P12044114623072388315

`A044080(n+1)-A188584(A188584(n+1))`
-/

namespace A044460.P12044114623072388315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044080 (n + 1) - A188584 (A188584 (n + 1)).toNat

end

end A044460.P12044114623072388315

/-!
# A044461: Numbers n such that string 0,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044461, there is no canonical definition to state claims against.
-/

/-! ## A044461.P14102037629700641437

`A044081(n+1)-A256915(n²)`
-/

namespace A044461.P14102037629700641437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044081 (n + 1) - A256915 (n ^ 2)

end

end A044461.P14102037629700641437

/-! ## A044461.P11932387094480513031

`A044081(n+1)-A000041(A151660(n))`
-/

namespace A044461.P11932387094480513031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044081 (n + 1) - A000041 (A151660 n).toNat

end

end A044461.P11932387094480513031

/-! ## A044461.P9646670718954759308

`A044081(n+1)-A001222(A273756(n))`
-/

namespace A044461.P9646670718954759308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044081 (n + 1) - A001222 (A273756 n).toNat

end

end A044461.P9646670718954759308

/-! ## A044461.P10264932731586415798

`A044081(n+1)-A059268(A151660(n)²)`
-/

namespace A044461.P10264932731586415798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044081 (n + 1) - A059268 (A151660 n ^ 2).toNat

end

end A044461.P10264932731586415798

/-! ## A044461.P7761938310106844529

`A044081(n+1)-A164056(A044114(n+3))`
-/

namespace A044461.P7761938310106844529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044081 (n + 1) - A164056 (A044114 (n + 3)).toNat

end

end A044461.P7761938310106844529

/-!
# A044462: Numbers n such that string 0,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044462, there is no canonical definition to state claims against.
-/

/-! ## A044462.P10304913135702751539

`A044461(n+1)-(A044080(n+1)-A151815(n)!-A044461(n+1))`
-/

namespace A044462.P10304913135702751539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044461 (n + 1) - (A044080 (n + 1) - (Nat.factorial (A151815 n).toNat : ℤ) - A044461 (n + 1))

end

end A044462.P10304913135702751539

/-! ## A044462.P15526550625035242603

`A044460(n+1)+A062379(A149643(n))+1`
-/

namespace A044462.P15526550625035242603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044460 (n + 1) + (A062379 (A149643 n).toNat + 1)

end

end A044462.P15526550625035242603

/-! ## A044462.P8769434298855087808

`or(A044081(n+1), A327127(A005836(n+1)))`
-/

namespace A044462.P8769434298855087808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044081 (n + 1)) (A327127 (A005836 (n + 1)).toNat)

end

end A044462.P8769434298855087808

/-!
# A044463: Numbers n such that string 1,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044463, there is no canonical definition to state claims against.
-/

/-! ## A044463.P1381917674815414721

`A008587(∩[A335525(n+1), A016861(n)])`
-/

namespace A044463.P1381917674815414721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044463.P1381917674815414721

/-! ## A044463.P16360654250455630090

`A008587(∩[A335525(n+1), A008587(n)+1])`
-/

namespace A044463.P16360654250455630090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044463.P16360654250455630090

/-! ## A044463.P13042414312901010282

`A016861(∩[A335525(n+1), A016861(n)])-1`
-/

namespace A044463.P13042414312901010282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A044463.P13042414312901010282

/-!
# A044464: Numbers k such that string 1,1 occurs in the base 5 representation of k but not of k+1.

The programs for A044464, there is no canonical definition to state claims against.
-/

/-! ## A044464.P10273069249614791275

`A002518(A044083(1+n))-1`
-/

namespace A044464.P10273069249614791275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 (A044083 (1 + n)).toNat - 1

end

end A044464.P10273069249614791275

/-! ## A044464.P7871098283444790823

`A001489(n+1)+A002518(A044083(n+1))+n`
-/

namespace A044464.P7871098283444790823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A002518 (A044083 (n + 1)).toNat + (n : ℤ))

end

end A044464.P7871098283444790823

/-! ## A044464.P9079495531448354826

`A259024(A016969(n))+A002518(A044083(n+1))`
-/

namespace A044464.P9079495531448354826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (A016969 n).toNat + A002518 (A044083 (n + 1)).toNat

end

end A044464.P9079495531448354826

/-! ## A044464.P15816878315797019156

`A008836(A000040(n+1))+A002518(A044083(n+1))`
-/

namespace A044464.P15816878315797019156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000040 (n + 1)).toNat + A002518 (A044083 (n + 1)).toNat

end

end A044464.P15816878315797019156

/-! ## A044464.P8854807470700926543

`A033999(A044072(n+1))+A002518(A044083(n+1))`
-/

namespace A044464.P8854807470700926543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A044072 (n + 1)).toNat + A002518 (A044083 (n + 1)).toNat

end

end A044464.P8854807470700926543

/-! ## A044464.P10647068682064125306

`A008836(A096246(n+1))+A002518(A044083(n+1))`
-/

namespace A044464.P10647068682064125306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A096246 (n + 1)).toNat + A002518 (A044083 (n + 1)).toNat

end

end A044464.P10647068682064125306

/-! ## A044464.P11818716131547434562

`A106400(A004016(n)+1)+A002518(A044083(n+1))`
-/

namespace A044464.P11818716131547434562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A004016 n + 1).toNat + A002518 (A044083 (n + 1)).toNat

end

end A044464.P11818716131547434562

/-! ## A044464.P13011045868726999506

`A010815(A014963(2*(n+1)))+A002518(A044083(n+1))`
-/

namespace A044464.P13011045868726999506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A014963 (2 * (n + 1))).toNat + A002518 (A044083 (n + 1)).toNat

end

end A044464.P13011045868726999506

/-! ## A044464.P9936352820911057125

`A087960(A001844(n))+A002518(A044083(n+1))`
-/

namespace A044464.P9936352820911057125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A001844 n).toNat + A002518 (A044083 (n + 1)).toNat

end

end A044464.P9936352820911057125

/-!
# A044465: Numbers n such that string 1,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044465, there is no canonical definition to state claims against.
-/

/-! ## A044465.P13039384559120394671

`A044085(A032559(n+1))-1`
-/

namespace A044465.P13039384559120394671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (A032559 (n + 1)).toNat - 1

end

end A044465.P13039384559120394671

/-! ## A044465.P1772613274570863837

`A044085(A077739(n+1))-1`
-/

namespace A044465.P1772613274570863837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (A077739 (n + 1)).toNat - 1

end

end A044465.P1772613274570863837

/-! ## A044465.P3736920061611056178

`A044085(A082217(n+1))-1`
-/

namespace A044465.P3736920061611056178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (A082217 (n + 1)).toNat - 1

end

end A044465.P3736920061611056178

/-! ## A044465.P4398071511014028845

`A044085(n+1)-A053865(A160506(n))`
-/

namespace A044465.P4398071511014028845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (n + 1) - A053865 (A160506 n).toNat

end

end A044465.P4398071511014028845

/-! ## A044465.P17811283383067733959

`A044085(n+1)-A010060(A351049(n))`
-/

namespace A044465.P17811283383067733959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (n + 1) - A010060 (A351049 n).toNat

end

end A044465.P17811283383067733959

/-!
# A044466: Numbers n such that string 1,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044466, there is no canonical definition to state claims against.
-/

/-! ## A044466.P8812872507444805803

`A044086(n+1)-exp(A153761(n+1))`
-/

namespace A044466.P8812872507444805803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A044086 (n + 1) : ℝ) - Real.exp (A153761 (n + 1) : ℝ)

end

end A044466.P8812872507444805803

/-! ## A044466.P16126689723030199886

`A044086(n+1)+A008683(A109216(n))`
-/

namespace A044466.P16126689723030199886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) + A008683 (A109216 n).toNat

end

end A044466.P16126689723030199886

/-! ## A044466.P3710735389719394143

`A044086(n+1)-A011655(A006382(n))`
-/

namespace A044466.P3710735389719394143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) - A011655 (A006382 n).toNat

end

end A044466.P3710735389719394143

/-! ## A044466.P5982683936258557309

`A044086(n+1)+A008683(A090721(n+1))`
-/

namespace A044466.P5982683936258557309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) + A008683 (A090721 (n + 1)).toNat

end

end A044466.P5982683936258557309

/-! ## A044466.P8484521969000801421

`A044086(n+1)-A001222(A051342(n+1))`
-/

namespace A044466.P8484521969000801421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) - A001222 (A051342 (n + 1)).toNat

end

end A044466.P8484521969000801421

/-!
# A044467: Numbers n such that string 1,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044467, there is no canonical definition to state claims against.
-/

/-! ## A044467.P10161026852038922092

`A044087(n+1)-A212793(A084171(n))`
-/

namespace A044467.P10161026852038922092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A212793 (A084171 n).toNat

end

end A044467.P10161026852038922092

/-! ## A044467.P14517910134033355160

`A044087(n+1)-A216635(A119266(n))`
-/

namespace A044467.P14517910134033355160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A216635 (A119266 n).toNat

end

end A044467.P14517910134033355160

/-! ## A044467.P755452095456301858

`A044087(n+1)-A056924(A359939(n+1))`
-/

namespace A044467.P755452095456301858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A056924 (A359939 (n + 1)).toNat

end

end A044467.P755452095456301858

/-! ## A044467.P5736389218893841863

`A044087(n+1)-A053865(A104980(3*(n+1)))`
-/

namespace A044467.P5736389218893841863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A053865 (A104980 (3 * (n + 1))).toNat

end

end A044467.P5736389218893841863

/-! ## A044467.P16973068099854382711

`A044087(n+1)-A053865(A035244(n))`
-/

namespace A044467.P16973068099854382711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A053865 (A035244 n).toNat

end

end A044467.P16973068099854382711

/-!
# A044468: Numbers n such that string 2,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044468, there is no canonical definition to state claims against.
-/

/-! ## A044468.P2342927552423139449

`A268830(C(A044088(n+1), 2))`
-/

namespace A044468.P2342927552423139449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (Nat.choose (A044088 (n + 1)).toNat 2)

end

end A044468.P2342927552423139449

/-! ## A044468.P8079910569806331586

`A044088(n+1)-A001222(A126691(n+1))`
-/

namespace A044468.P8079910569806331586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A001222 (A126691 (n + 1)).toNat

end

end A044468.P8079910569806331586

/-! ## A044468.P5441942435847678169

`A044088(n+1)-A338939(A000079(n+2))`
-/

namespace A044468.P5441942435847678169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A338939 (A000079 (n + 2)).toNat

end

end A044468.P5441942435847678169

/-! ## A044468.P8530853224237630749

`A044088(n+1)-A108775(A068669(2*n+1))`
-/

namespace A044468.P8530853224237630749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A108775 (A068669 (2 * n + 1)).toNat

end

end A044468.P8530853224237630749

/-! ## A044468.P12202056650382533809

`A044088(n+1)-A355737(A000040(2*n+1))`
-/

namespace A044468.P12202056650382533809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A355737 (A000040 (2 * n + 1)).toNat

end

end A044468.P12202056650382533809

/-!
# A044469: Numbers n such that string 2,1 occurs in the base 5 representation of n but not of n+1.

The programs for A044469, there is no canonical definition to state claims against.
-/

/-! ## A044469.P7556895660764825236

`lt[9, A380248(A249740(2*n+3))]`
-/

namespace A044469.P7556895660764825236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380248 (A249740 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A044469.P7556895660764825236

/-! ## A044469.P11288099224935070810

`xor(A005925(A147722(n)), A044088(n+1))`
-/

namespace A044469.P11288099224935070810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005925 (A147722 n).toNat) (A044088 (n + 1))

end

end A044469.P11288099224935070810

/-!
# A044470: Numbers n such that string 2,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044470, there is no canonical definition to state claims against.
-/

/-! ## A044470.P7118298302498310937

`A043140(n+1)+A001222(A121956(2*n+1))`
-/

namespace A044470.P7118298302498310937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043140 (n + 1) + A001222 (A121956 (2 * n + 1)).toNat

end

end A044470.P7118298302498310937

/-!
# A044471: Numbers n such that string 2,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044471, there is no canonical definition to state claims against.
-/

/-! ## A044471.P5991001494244931141

`A233583(record[A003602(A044460(n+1))])`
-/

namespace A044471.P5991001494244931141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044471.P5991001494244931141

/-! ## A044471.P16865048191250323785

`A044091(n+1)-A112765(A242882(n))!`
-/

namespace A044471.P16865048191250323785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) - (Nat.factorial (A112765 (A242882 n).toNat).toNat : ℤ)

end

end A044471.P16865048191250323785

/-! ## A044471.P3806670697429357067

`A044091(n+1)+A008683(A268109(n+1))`
-/

namespace A044471.P3806670697429357067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) + A008683 (A268109 (n + 1)).toNat

end

end A044471.P3806670697429357067

/-! ## A044471.P13185175477434473685

`A044091(n+1)-A001221(A308838(n+1))`
-/

namespace A044471.P13185175477434473685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) - A001221 (A308838 (n + 1)).toNat

end

end A044471.P13185175477434473685

/-! ## A044471.P1227018518148805519

`A044091(n+1)-A053865(A044043(n+3))`
-/

namespace A044471.P1227018518148805519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) - A053865 (A044043 (n + 3)).toNat

end

end A044471.P1227018518148805519

/-!
# A044472: Numbers n such that string 2,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044472, there is no canonical definition to state claims against.
-/

/-! ## A044472.P3833166309251762279

`A044092(n+1)-A015161(n)!`
-/

namespace A044472.P3833166309251762279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - (Nat.factorial (A015161 n).toNat : ℤ)

end

end A044472.P3833166309251762279

/-! ## A044472.P14457845675957456570

`A044092(n+1)-A091536(n)!`
-/

namespace A044472.P14457845675957456570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - (Nat.factorial (A091536 n).toNat : ℤ)

end

end A044472.P14457845675957456570

/-! ## A044472.P7312095167992068593

`A044092(n+1)-A069897(2^n)`
-/

namespace A044472.P7312095167992068593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - A069897 (2 ^ n)

end

end A044472.P7312095167992068593

/-! ## A044472.P10939583760525549634

`A044092(n+1)-2^A151838(n+2)`
-/

namespace A044472.P10939583760525549634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044092 (n + 1) : ℚ) - (2 : ℚ) ^ (A151838 (n + 2) : ℤ)

end

end A044472.P10939583760525549634

/-! ## A044472.P11536114939312212373

`A044092(n+1)-A001222(A014210(n))`
-/

namespace A044472.P11536114939312212373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - A001222 (A014210 n).toNat

end

end A044472.P11536114939312212373

/-!
# A044473: Numbers n such that string 3,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044473, there is no canonical definition to state claims against.
-/

/-! ## A044473.P9994010204972951295

`A044093(n+1)-A001222(A339096(n+4))`
-/

namespace A044473.P9994010204972951295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A001222 (A339096 (n + 4)).toNat

end

end A044473.P9994010204972951295

/-! ## A044473.P6792822860573439233

`A044093(n+1)-A040929(A003215(3*n+4))`
-/

namespace A044473.P6792822860573439233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A040929 (A003215 (3 * n + 4)).toNat

end

end A044473.P6792822860573439233

/-! ## A044473.P15999680625356529832

`A044093(n+1)-A001222(A014210(n))`
-/

namespace A044473.P15999680625356529832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A001222 (A014210 n).toNat

end

end A044473.P15999680625356529832

/-! ## A044473.P11980276878253327627

`A044093(n+1)-A049076(A078441(n+1))`
-/

namespace A044473.P11980276878253327627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A049076 (A078441 (n + 1)).toNat

end

end A044473.P11980276878253327627

/-! ## A044473.P5895071596849859452

`A044093(n+1)-A185115(A140632(n+1))`
-/

namespace A044473.P5895071596849859452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A185115 (A140632 (n + 1)).toNat

end

end A044473.P5895071596849859452

/-!
# A044474: Numbers n such that string 3,1 occurs in the base 5 representation of n but not of n+1.

The programs for A044474, there is no canonical definition to state claims against.
-/

/-! ## A044474.P9877858278784989108

`record[A044094(A132663(n+1))-1]`
-/

namespace A044474.P9877858278784989108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (A132663 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044474.P9877858278784989108

/-! ## A044474.P13861789889324416912

`A044094(n+1)-A014963(A174264(n))`
-/

namespace A044474.P13861789889324416912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A014963 (A174264 n).toNat

end

end A044474.P13861789889324416912

/-! ## A044474.P10310857730063179762

`A044094(n+1)-A381735(A005897(3*n+1))`
-/

namespace A044474.P10310857730063179762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A381735 (A005897 (3 * n + 1)).toNat

end

end A044474.P10310857730063179762

/-! ## A044474.P1652433564708283839

`A044094(n+1)-A239001(A154982(n))`
-/

namespace A044474.P1652433564708283839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A239001 (A154982 n).toNat

end

end A044474.P1652433564708283839

/-! ## A044474.P1833375100632774293

`A044094(n+1)-A001221(record[A000230(n)])`
-/

namespace A044474.P1833375100632774293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044474.P1833375100632774293

/-!
# A044475: Numbers n such that string 3,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044475, there is no canonical definition to state claims against.
-/

/-! ## A044475.P10263957336330423501

`A051516(A034474(n))+A044094(n+1)`
-/

namespace A044475.P10263957336330423501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A034474 n).toNat + A044094 (n + 1)

end

end A044475.P10263957336330423501

/-! ## A044475.P5158116147300685114

`A353968(A353970(2*n+1)+A353969(n+5))`
-/

namespace A044475.P5158116147300685114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353968 (A353970 (2 * n + 1) + A353969 (n + 5)).toNat

end

end A044475.P5158116147300685114

/-!
# A044476: Numbers n such that string 3,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044476, there is no canonical definition to state claims against.
-/

/-! ## A044476.P8915220091513072203

`A000002(A081714(n)+1)+25*n+17`
-/

namespace A044476.P8915220091513072203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A081714 n + 1).toNat + (25 * n + 17 : ℤ)

end

end A044476.P8915220091513072203

/-! ## A044476.P5429487699889726164

`A329991(8*n+1)+A002264(A329840(4*n+13))`
-/

namespace A044476.P5429487699889726164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329991 (8 * n + 1) + A002264 (A329840 (4 * n + 13)).toNat

end

end A044476.P5429487699889726164

/-! ## A044476.P7463962843547963996

`A163581(A000326(n))+A016885(A016885(n))`
-/

namespace A044476.P7463962843547963996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163581 (A000326 n).toNat + A016885 (A016885 n).toNat

end

end A044476.P7463962843547963996

/-!
# A044477: Numbers n such that string 3,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044477, there is no canonical definition to state claims against.
-/

/-! ## A044477.P9783398817463661545

`∩[A043895(n+1), A112082(n+1)]`
-/

namespace A044477.P9783398817463661545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044477.P9783398817463661545

/-!
# A044478: Numbers n such that string 4,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044478, there is no canonical definition to state claims against.
-/

/-! ## A044478.P775325562052971031

`(A044098(n+1)-1)%A074205(n+1)`
-/

namespace A044478.P775325562052971031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044098 (n + 1) - 1) (A074205 (n + 1))

end

end A044478.P775325562052971031

/-! ## A044478.P3369550851227980259

`A003963(A064988(A044098(n+1)-1))`
-/

namespace A044478.P3369550851227980259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A064988 (A044098 (n + 1) - 1).toNat).toNat

end

end A044478.P3369550851227980259

/-! ## A044478.P891233924079439786

`A057428(A003410(n))+A044098(n+1)`
-/

namespace A044478.P891233924079439786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003410 n).toNat + A044098 (n + 1)

end

end A044478.P891233924079439786

/-! ## A044478.P1763359732644093996

`A057428(A112032(n))+A044098(n+1)`
-/

namespace A044478.P1763359732644093996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A112032 n).toNat + A044098 (n + 1)

end

end A044478.P1763359732644093996

/-! ## A044478.P18181606807332426870

`A057428(∑[A044104(n+1)])+A044098(n+1)`
-/

namespace A044478.P18181606807332426870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044098 (n + 1)

end

end A044478.P18181606807332426870

/-!
# A044479: Numbers n such that string 4,1 occurs in the base 5 representation of n but not of n+1.

The programs for A044479, there is no canonical definition to state claims against.
-/

/-! ## A044479.P12122637820867299641

`A044099(n+1)-and(1, A050836(n+1))`
-/

namespace A044479.P12122637820867299641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044099 (n + 1) - Int.land 1 (A050836 (n + 1))

end

end A044479.P12122637820867299641

/-! ## A044479.P16224940434192252500

`A044099(n+1)-A000034(A006331(n))`
-/

namespace A044479.P16224940434192252500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044099 (n + 1) - A000034 (A006331 n).toNat

end

end A044479.P16224940434192252500

/-! ## A044479.P8014187546172472116

`A044099(n+1)-A109008(A005894(n))`
-/

namespace A044479.P8014187546172472116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044099 (n + 1) - A109008 (A005894 n).toNat

end

end A044479.P8014187546172472116

/-! ## A044479.P11398187330891804408

`A044099(n+1)-A000034(∑[A044114(n+1)])`
-/

namespace A044479.P11398187330891804408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044099 (n + 1) - A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044479.P11398187330891804408

/-! ## A044479.P993359447801686557

`A044099(n+1)-A000034(∑[A044120(n+1)])`
-/

namespace A044479.P993359447801686557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044099 (n + 1) - A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044479.P993359447801686557

/-!
# A044480: Numbers k such that string 4,2 occurs in the base 5 representation of k but not of k+1.

The programs for A044480, there is no canonical definition to state claims against.
-/

/-! ## A044480.P14246529188601014209

`A044100(n+1)+A033999(A032020(n))`
-/

namespace A044480.P14246529188601014209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044100 (n + 1) + A033999 (A032020 n).toNat

end

end A044480.P14246529188601014209

/-! ## A044480.P9827170179090681062

`A308778(A016802(n))+A044100(n+1)`
-/

namespace A044480.P9827170179090681062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A016802 n).toNat + A044100 (n + 1)

end

end A044480.P9827170179090681062

/-! ## A044480.P10194145056650702251

`A044100(n+1)-A000120(A034583(n))`
-/

namespace A044480.P10194145056650702251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044100 (n + 1) - A000120 (A034583 n).toNat

end

end A044480.P10194145056650702251

/-! ## A044480.P17296145524822716287

`A044100(n+1)-A001222(A338762(n+1))`
-/

namespace A044480.P17296145524822716287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044100 (n + 1) - A001222 (A338762 (n + 1)).toNat

end

end A044480.P17296145524822716287

/-! ## A044480.P4879311787384009257

`A044100(n+1)-A119788(A008706(3*n+4))`
-/

namespace A044480.P4879311787384009257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044100 (n + 1) - A119788 (A008706 (3 * n + 4)).toNat

end

end A044480.P4879311787384009257

/-!
# A044481: Numbers n such that string 4,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044481, there is no canonical definition to state claims against.
-/

/-! ## A044481.P9376154232656515538

`A247815(p?[A129767(A044480(n+1))])`
-/

namespace A044481.P9376154232656515538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (A044480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044481.P9376154232656515538

/-! ## A044481.P13120157923754426049

`∩[A044478(n+1), A233583(2*(n+2))]-A044099(n+1)`
-/

namespace A044481.P13120157923754426049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A044099 (n + 1)

end

end A044481.P13120157923754426049

/-! ## A044481.P6820537405778175814

`A060904(A044100(n+1))+A044480(A187829(n+1))`
-/

namespace A044481.P6820537405778175814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (A044100 (n + 1)).toNat + A044480 (A187829 (n + 1)).toNat

end

end A044481.P6820537405778175814

/-! ## A044481.P16670372080052225714

`A060904(A044107(n+1))+A044480(A187829(n+1))`
-/

namespace A044481.P16670372080052225714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (A044107 (n + 1)).toNat + A044480 (A187829 (n + 1)).toNat

end

end A044481.P16670372080052225714

/-! ## A044481.P7092702156759321031

`or(A044100(n+1), A159799(A211849(n+1)))`
-/

namespace A044481.P7092702156759321031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044100 (n + 1)) (A159799 (A211849 (n + 1)).toNat)

end

end A044481.P7092702156759321031

/-!
# A044482: Numbers k such that the string 4,4 occurs in the base-5 representation of k but not of k+1.

The programs for A044482, there is no canonical definition to state claims against.
-/

/-! ## A044482.P7379534626693873498

`∑[25*A113515(n+1)]-A175087(A011757(n+1))`
-/

namespace A044482.P7379534626693873498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A113515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A175087 (A011757 (n + 1)).toNat

end

end A044482.P7379534626693873498

/-! ## A044482.P14721410489607174470

`∑[25*A113515(n+1)]-A040001(A212377(n+1))`
-/

namespace A044482.P14721410489607174470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A113515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A040001 (A212377 (n + 1)).toNat

end

end A044482.P14721410489607174470

/-!
# A044483: Numbers n such that string 0,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044483, there is no canonical definition to state claims against.
-/

/-! ## A044483.P4751916891388501142

`A350055(n)+A234959(A187829(n+1))`
-/

namespace A044483.P4751916891388501142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n + A234959 (A187829 (n + 1)).toNat

end

end A044483.P4751916891388501142

/-! ## A044483.P17308318772286049007

`A044102(A187829(n+1))+A234959(n+1)-1`
-/

namespace A044483.P17308318772286049007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A187829 (n + 1)).toNat + (A234959 (n + 1) - 1)

end

end A044483.P17308318772286049007

/-! ## A044483.P12018791181546607468

`∑[A107833(Δ[A043897(2*n+1)])]`
-/

namespace A044483.P12018791181546607468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043897 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107833 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044483.P12018791181546607468

/-! ## A044483.P11140238934383933651

`A350055(n)+A350009(A334491(n+1))`
-/

namespace A044483.P11140238934383933651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n + A350009 (A334491 (n + 1)).toNat

end

end A044483.P11140238934383933651

/-! ## A044483.P10102771943008364125

`A306419(A140987(n+1))+A044137(n+1)`
-/

namespace A044483.P10102771943008364125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306419 (A140987 (n + 1)).toNat + A044137 (n + 1)

end

end A044483.P10102771943008364125

/-!
# A044484: Numbers n such that string 0,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044484, there is no canonical definition to state claims against.
-/

/-! ## A044484.P15661174328726983219

`A044104(n+1)-A243834(n+2)!`
-/

namespace A044484.P15661174328726983219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044104 (n + 1) - (Nat.factorial (A243834 (n + 2)).toNat : ℤ)

end

end A044484.P15661174328726983219

/-! ## A044484.P6607013111230712822

`A044104(n+1)+A008683(A052333(n+1))`
-/

namespace A044484.P6607013111230712822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044104 (n + 1) + A008683 (A052333 (n + 1)).toNat

end

end A044484.P6607013111230712822

/-! ## A044484.P17169310098167638226

`A044104(n+1)+A008683(A095184(n+1))`
-/

namespace A044484.P17169310098167638226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044104 (n + 1) + A008683 (A095184 (n + 1)).toNat

end

end A044484.P17169310098167638226

/-! ## A044484.P10544421542357619146

`A057428(A104165(n+1))+A044104(n+1)`
-/

namespace A044484.P10544421542357619146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A104165 (n + 1)).toNat + A044104 (n + 1)

end

end A044484.P10544421542357619146

/-! ## A044484.P10350365125049522142

`A044104(n+1)+A008683(A104165(n+2))`
-/

namespace A044484.P10350365125049522142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044104 (n + 1) + A008683 (A104165 (n + 2)).toNat

end

end A044484.P10350365125049522142

/-!
# A044485: Numbers n such that string 0,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044485, there is no canonical definition to state claims against.
-/

/-! ## A044485.P9603438688699827289

`A044105(n+1)-A174412(A098173(n))`
-/

namespace A044485.P9603438688699827289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) - A174412 (A098173 n).toNat

end

end A044485.P9603438688699827289

/-! ## A044485.P5486784355128014306

`A044105(n+1)+A008683(A104165(n+1))`
-/

namespace A044485.P5486784355128014306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) + A008683 (A104165 (n + 1)).toNat

end

end A044485.P5486784355128014306

/-! ## A044485.P9046354524474328293

`A044105(n+1)-A243834(n+2)!`
-/

namespace A044485.P9046354524474328293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) - (Nat.factorial (A243834 (n + 2)).toNat : ℤ)

end

end A044485.P9046354524474328293

/-! ## A044485.P14536328881032553135

`A044105(n+1)-and(1, A095184(n+1))`
-/

namespace A044485.P14536328881032553135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) - Int.land 1 (A095184 (n + 1))

end

end A044485.P14536328881032553135

/-! ## A044485.P16901280195007764189

`A044105(n+1)-and(1, A109946(n+4))`
-/

namespace A044485.P16901280195007764189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044105 (n + 1) - Int.land 1 (A109946 (n + 4))

end

end A044485.P16901280195007764189

/-!
# A044486: Numbers n such that string 0,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044486, there is no canonical definition to state claims against.
-/

/-! ## A044486.P607467106988156915

`A044106(n+1)-A243834(n)!`
-/

namespace A044486.P607467106988156915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) - (Nat.factorial (A243834 n).toNat : ℤ)

end

end A044486.P607467106988156915

/-! ## A044486.P5061226647628284129

`A044106(n+1)-A007318(A243834(n)²)`
-/

namespace A044486.P5061226647628284129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) - A007318 (A243834 n ^ 2).toNat

end

end A044486.P5061226647628284129

/-! ## A044486.P17712429813408481173

`A044106(n+1)-A008706(A243834(n)²)`
-/

namespace A044486.P17712429813408481173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) - A008706 (A243834 n ^ 2).toNat

end

end A044486.P17712429813408481173

/-! ## A044486.P18216688885340866841

`A044106(n+1)-A056545(A243834(n)²)`
-/

namespace A044486.P18216688885340866841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) - A056545 (A243834 n ^ 2).toNat

end

end A044486.P18216688885340866841

/-! ## A044486.P14339853534794649078

`A044106(n+1)-A098173(A243834(n)²)`
-/

namespace A044486.P14339853534794649078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044106 (n + 1) - A098173 (A243834 n ^ 2).toNat

end

end A044486.P14339853534794649078

/-!
# A044487: Numbers n such that string 0,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044487, there is no canonical definition to state claims against.
-/

/-! ## A044487.P11248838161943299617

`∏{e}[A100669(n), A044107(n+1)-#]`
-/

namespace A044487.P11248838161943299617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A044107 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A044487.P11248838161943299617

/-! ## A044487.P12285285597268049728

`A044107(n+1)-A007318(A010894(n))`
-/

namespace A044487.P12285285597268049728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044107 (n + 1) - A007318 (A010894 (n + 21)).toNat

end

end A044487.P12285285597268049728

/-! ## A044487.P12793009108557849650

`A044107(n+1)-A001221(A100669(n))`
-/

namespace A044487.P12793009108557849650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044107 (n + 1) - A001221 (A100669 n).toNat

end

end A044487.P12793009108557849650

/-! ## A044487.P3255279853643845969

`A044107(n+1)-A119788(∑[A010894(n)])`
-/

namespace A044487.P3255279853643845969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044107 (n + 1) - A119788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044487.P3255279853643845969

/-! ## A044487.P14255872927283433293

`A044107(n+1)+A008683(A109946(n+1))`
-/

namespace A044487.P14255872927283433293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044107 (n + 1) + A008683 (A109946 (n + 1)).toNat

end

end A044487.P14255872927283433293

/-!
# A044488: Numbers n such that string 0,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044488, there is no canonical definition to state claims against.
-/

/-! ## A044488.P5377161714538694120

`2*A044487(n+1)-(A044106(n+1)-A243834(n)!)`
-/

namespace A044488.P5377161714538694120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044487 (n + 1) - (A044106 (n + 1) - (Nat.factorial (A243834 n).toNat : ℤ))

end

end A044488.P5377161714538694120

/-! ## A044488.P14790682553450934479

`2*A044487(n+1)-(A044106(n+1)-A007318(A243834(n)²))`
-/

namespace A044488.P14790682553450934479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044487 (n + 1) - (A044106 (n + 1) - A007318 (A243834 n ^ 2).toNat)

end

end A044488.P14790682553450934479

/-! ## A044488.P570309971743332330

`2*A044487(n+1)-(A044106(n+1)-A056545(A243834(n)²))`
-/

namespace A044488.P570309971743332330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044487 (n + 1) - (A044106 (n + 1) - A056545 (A243834 n ^ 2).toNat)

end

end A044488.P570309971743332330

/-! ## A044488.P10139862819359633950

`2*A044487(n+1)-(A044106(n+1)-A001221(A090607(n+1)))`
-/

namespace A044488.P10139862819359633950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044487 (n + 1) - (A044106 (n + 1) - A001221 (A090607 (n + 1)).toNat)

end

end A044488.P10139862819359633950

/-! ## A044488.P4639181076850246325

`A044487(n+1)+A044486(n+1)+A243834(n)!-A044105(n+1)`
-/

namespace A044488.P4639181076850246325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044487 (n + 1) + (A044486 (n + 1) + (Nat.factorial (A243834 n).toNat : ℤ)) - A044105 (n + 1)

end

end A044488.P4639181076850246325

/-!
# A044489: Numbers n such that string 1,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044489, there is no canonical definition to state claims against.
-/

/-! ## A044489.P4245728834928522569

`∩[A043896(n+1), A236864(n+1)]`
-/

namespace A044489.P4245728834928522569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P4245728834928522569

/-! ## A044489.P5700428767573709387

`∩[A043896(n+1), A074902(n+1)]`
-/

namespace A044489.P5700428767573709387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P5700428767573709387

/-! ## A044489.P9919745284295726427

`∩[A043896(n+1), A230060(n+1)]`
-/

namespace A044489.P9919745284295726427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P9919745284295726427

/-! ## A044489.P15253524712690707514

`∩[A043896(n+1), A381223(n+1)]`
-/

namespace A044489.P15253524712690707514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P15253524712690707514

/-! ## A044489.P10782172438245782085

`record[A017581(3*n)/A258383(A002445(n+4)+5)]+1`
-/

namespace A044489.P10782172438245782085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017581 (3 * n) : ℚ) / (A258383 (A002445 (n + 4) + 5).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A044489.P10782172438245782085

/-!
# A044491: Numbers n such that string 1,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044491, there is no canonical definition to state claims against.
-/

/-! ## A044491.P13081891256220767530

`A044111(A061603(n)+n)-1`
-/

namespace A044491.P13081891256220767530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (A061603 n + (n : ℤ)).toNat - 1

end

end A044491.P13081891256220767530

/-! ## A044491.P7934491093140813317

`A044111(n+1)-A159713(n)!`
-/

namespace A044491.P7934491093140813317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) - (Nat.factorial (A159713 n).toNat : ℤ)

end

end A044491.P7934491093140813317

/-! ## A044491.P5713019332684325615

`A044111(n+1)+A037861(A061603(n))`
-/

namespace A044491.P5713019332684325615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) + A037861 (A061603 n).toNat

end

end A044491.P5713019332684325615

/-! ## A044491.P15700524337218965212

`A044111(n+1)+A008683(A096640(n))`
-/

namespace A044491.P15700524337218965212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) + A008683 (A096640 n).toNat

end

end A044491.P15700524337218965212

/-! ## A044491.P9585272896944425512

`A044111(n+1)+A008683(A359292(n))`
-/

namespace A044491.P9585272896944425512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) + A008683 (A359292 n).toNat

end

end A044491.P9585272896944425512

/-!
# A044492: Numbers n such that string 1,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044492, there is no canonical definition to state claims against.
-/

/-! ## A044492.P16817053883175999707

`A044112(n+1)+A008683(A051301(n))`
-/

namespace A044492.P16817053883175999707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) + A008683 (A051301 n).toNat

end

end A044492.P16817053883175999707

/-! ## A044492.P330717431361534943

`A044112(n+1)-A057427(A002203(n))`
-/

namespace A044492.P330717431361534943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A057427 (A002203 n).toNat

end

end A044492.P330717431361534943

/-! ## A044492.P4916600063567415094

`A044112(n+1)-A057427(A055887(n))`
-/

namespace A044492.P4916600063567415094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A057427 (A055887 n).toNat

end

end A044492.P4916600063567415094

/-! ## A044492.P17180178594192245879

`A044112(n+1)-A003557(A309863(n))`
-/

namespace A044492.P17180178594192245879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A003557 (A309863 n).toNat

end

end A044492.P17180178594192245879

/-! ## A044492.P976971415841433278

`A044112(n+1)-A049419(A382308(n))`
-/

namespace A044492.P976971415841433278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A049419 (A382308 n).toNat

end

end A044492.P976971415841433278

/-!
# A044493: Numbers n such that string 1,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044493, there is no canonical definition to state claims against.
-/

/-! ## A044493.P10151168364035374035

`A044113(n+1)-A001222(A074478(n))`
-/

namespace A044493.P10151168364035374035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A001222 (A074478 n).toNat

end

end A044493.P10151168364035374035

/-! ## A044493.P6889988642845228954

`A044113(n+1)-A119788(A003215(n))`
-/

namespace A044493.P6889988642845228954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A119788 (A003215 n).toNat

end

end A044493.P6889988642845228954

/-! ## A044493.P4003084095710085530

`A044113(n+1)-A285851(A250286(n))`
-/

namespace A044493.P4003084095710085530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A285851 (A250286 n).toNat

end

end A044493.P4003084095710085530

/-! ## A044493.P13764788084000716845

`A044113(n+1)-A001222(A074477(n+1))`
-/

namespace A044493.P13764788084000716845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A001222 (A074477 (n + 1)).toNat

end

end A044493.P13764788084000716845

/-! ## A044493.P134607363727533566

`A044113(n+1)-A008966(A087788(n+1))`
-/

namespace A044493.P134607363727533566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A008966 (A087788 (n + 1)).toNat

end

end A044493.P134607363727533566

/-!
# A044494: Numbers n such that string 1,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044494, there is no canonical definition to state claims against.
-/

/-! ## A044494.P14949804729216762233

`A044114(n+1)-A179382(2^n)`
-/

namespace A044494.P14949804729216762233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A179382 (2 ^ n)

end

end A044494.P14949804729216762233

/-! ## A044494.P15510785015464351413

`A044114(n+1)-A014963(A251887(n+1))`
-/

namespace A044494.P15510785015464351413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A014963 (A251887 (n + 1)).toNat

end

end A044494.P15510785015464351413

/-! ## A044494.P7758536026421468356

`A044114(n+1)-A054977(A263534(n+1))`
-/

namespace A044494.P7758536026421468356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A054977 (A263534 (n + 1)).toNat

end

end A044494.P7758536026421468356

/-! ## A044494.P13620642544112302858

`A044114(n+1)-A309397(A206037(n+1))`
-/

namespace A044494.P13620642544112302858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A309397 (A206037 (n + 1)).toNat

end

end A044494.P13620642544112302858

/-! ## A044494.P6524302339022600436

`A044114(n+1)-A185116(A242994(2*(n+2)))`
-/

namespace A044494.P6524302339022600436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A185116 (A242994 (2 * (n + 2))).toNat

end

end A044494.P6524302339022600436

/-!
# A044495: Numbers k such that string 2,0 occurs in the base 6 representation of k but not of k+1.

The programs for A044495, there is no canonical definition to state claims against.
-/

/-! ## A044495.P3043950788393854611

`A044115(A077168(n))-1`
-/

namespace A044495.P3043950788393854611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (A077168 n).toNat - 1

end

end A044495.P3043950788393854611

/-! ## A044495.P6098753723296686275

`A044115(n+1)-A251725(2^n)`
-/

namespace A044495.P6098753723296686275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (n + 1) - A251725 (2 ^ n)

end

end A044495.P6098753723296686275

/-! ## A044495.P18195386770566395644

`A044115(n+1)-A284252(2^n)`
-/

namespace A044495.P18195386770566395644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (n + 1) - A284252 (2 ^ n)

end

end A044495.P18195386770566395644

/-! ## A044495.P13932688918614176747

`A057428(A000079(n))+A044115(n+1)`
-/

namespace A044495.P13932688918614176747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000079 n).toNat + A044115 (n + 1)

end

end A044495.P13932688918614176747

/-! ## A044495.P7564098602668758963

`A044115(n+1)-A000035(A000605(n))`
-/

namespace A044495.P7564098602668758963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (n + 1) - A000035 (A000605 n).toNat

end

end A044495.P7564098602668758963

/-!
# A044496: Numbers n such that string 2,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044496, there is no canonical definition to state claims against.
-/

/-! ## A044496.P5518866312895016546

`A044114(n+1)+A014963(A282415(n))`
-/

namespace A044496.P5518866312895016546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) + A014963 (A282415 n).toNat

end

end A044496.P5518866312895016546

/-!
# A044497: Numbers n such that string 2,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044497, there is no canonical definition to state claims against.
-/

/-! ## A044497.P10416913202242514954

`A059809(A229293(2*n))+A019557(2*n+1)`
-/

namespace A044497.P10416913202242514954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059809 (A229293 (2 * n)).toNat + A019557 (2 * n + 1)

end

end A044497.P10416913202242514954

/-! ## A044497.P10063861936566427793

`A017605(3*n+1)-A083945(A188523(3*n+5))`
-/

namespace A044497.P10063861936566427793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (3 * n + 1) - A083945 (A188523 (3 * n + 5)).toNat

end

end A044497.P10063861936566427793

/-!
# A044498: Numbers n such that string 2,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044498, there is no canonical definition to state claims against.
-/

/-! ## A044498.P16421819092503319868

`A044118(n+1)-A001055(A050266(n+1))`
-/

namespace A044498.P16421819092503319868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) - A001055 (A050266 (n + 1)).toNat

end

end A044498.P16421819092503319868

/-! ## A044498.P2470843995175564170

`A044118(n+1)-A381735(A005897(3*n+1))`
-/

namespace A044498.P2470843995175564170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) - A381735 (A005897 (3 * n + 1)).toNat

end

end A044498.P2470843995175564170

/-! ## A044498.P3438525703939211322

`A044118(A000005(2^n))-1`
-/

namespace A044498.P3438525703939211322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (A000005 (2 ^ n)).toNat - 1

end

end A044498.P3438525703939211322

/-! ## A044498.P3149729778704718786

`A044118(n+1)+A008683(A014210(n))`
-/

namespace A044498.P3149729778704718786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) + A008683 (A014210 n).toNat

end

end A044498.P3149729778704718786

/-! ## A044498.P2618756418573538397

`A044118(n+1)+A008683(A104080(n))`
-/

namespace A044498.P2618756418573538397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) + A008683 (A104080 n).toNat

end

end A044498.P2618756418573538397

/-!
# A044499: Numbers n such that string 2,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044499, there is no canonical definition to state claims against.
-/

/-! ## A044499.P12951820057395571284

`A044119(∑[∑[A151838(n)]])-1`
-/

namespace A044499.P12951820057395571284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A044499.P12951820057395571284

/-! ## A044499.P5792655922900440249

`A044119(n+1)-A151838(n)!`
-/

namespace A044499.P5792655922900440249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (n + 1) - (Nat.factorial (A151838 n).toNat : ℤ)

end

end A044499.P5792655922900440249

/-! ## A044499.P11262390806127195828

`A138153(or(A044119(n+1), A151838(n)))`
-/

namespace A044499.P11262390806127195828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (Int.lor (A044119 (n + 1)) (A151838 n)).toNat

end

end A044499.P11262390806127195828

/-! ## A044499.P15894272976644430078

`A044119(n+1)-A000041(A151838(n)²)`
-/

namespace A044499.P15894272976644430078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (n + 1) - A000041 (A151838 n ^ 2).toNat

end

end A044499.P15894272976644430078

/-! ## A044499.P5040164204922875155

`A044119(n+1)-A054977(A296562(n+1))`
-/

namespace A044499.P5040164204922875155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (n + 1) - A054977 (A296562 (n + 1)).toNat

end

end A044499.P5040164204922875155

