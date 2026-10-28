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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A088500: Expansion of e.g.f. 1/(1+2*log(1-x)).

The programs for A088500, there is no canonical definition to state claims against.
-/

/-! ## A088500.P7679849206695038012

`gcd(2, 4^n)*A308877(n)`
-/

namespace A088500.P7679849206695038012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (4 ^ n) : ℤ) * A308877 n

end

end A088500.P7679849206695038012

/-! ## A088500.P13579725302113846237

`A020639(A001316(n))*A308877(n)`
-/

namespace A088500.P13579725302113846237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A308877 n

end

end A088500.P13579725302113846237

/-! ## A088500.P6240137525363410380

`A020639(A004277(n))*A308877(n)`
-/

namespace A088500.P6240137525363410380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A308877 n

end

end A088500.P6240137525363410380

/-! ## A088500.P9126276586326513657

`A020639(A046109(n))*A308877(n)`
-/

namespace A088500.P9126276586326513657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046109 n).toNat * A308877 n

end

end A088500.P9126276586326513657

/-! ## A088500.P1801857123115498440

`A020639(A103517(n))*A308877(n)`
-/

namespace A088500.P1801857123115498440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A308877 n

end

end A088500.P1801857123115498440

/-! ## A088500.P17358079602836750383

`A020639(A111284(n+1))*A308877(n)`
-/

namespace A088500.P17358079602836750383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111284 (n + 1)).toNat * A308877 n

end

end A088500.P17358079602836750383

/-! ## A088500.P8687227203405430606

`A020639(A000010(n+2))*A308877(n)`
-/

namespace A088500.P8687227203405430606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A308877 n

end

end A088500.P8687227203405430606

/-! ## A088500.P13467583628698817797

`A088501(n)/A308878(n)*A308877(n)`
-/

namespace A088500.P13467583628698817797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088501 n : ℚ) / (A308878 n : ℚ) * (A308877 n : ℚ)

end

end A088500.P13467583628698817797

/-! ## A088500.P16570572589692044970

`A308877(n)+A308877(n)%A343707(n)`
-/

namespace A088500.P16570572589692044970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308877 n + Int.tmod (A308877 n) (A343707 n)

end

end A088500.P16570572589692044970

/-! ## A088500.P10053368857970673171

`A020639(A000040(n+1)-1)*A308877(n)`
-/

namespace A088500.P10053368857970673171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A308877 n

end

end A088500.P10053368857970673171

/-!
# A088501: Expansion of e.g.f. 1/(1-2*log(1+x)).

The programs for A088501, there is no canonical definition to state claims against.
-/

/-! ## A088501.P8310570531342254549

`A020639(A005893(n))*A308878(n)`
-/

namespace A088501.P8310570531342254549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005893 n).toNat * A308878 n

end

end A088501.P8310570531342254549

/-! ## A088501.P7821380827322293981

`A020639(A005897(n))*A308878(n)`
-/

namespace A088501.P7821380827322293981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005897 n).toNat * A308878 n

end

end A088501.P7821380827322293981

/-! ## A088501.P7111987206548849841

`A020639(A005899(n))*A308878(n)`
-/

namespace A088501.P7111987206548849841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005899 n).toNat * A308878 n

end

end A088501.P7111987206548849841

/-! ## A088501.P468646136559728932

`A020639(A005901(n))*A308878(n)`
-/

namespace A088501.P468646136559728932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005901 n).toNat * A308878 n

end

end A088501.P468646136559728932

/-! ## A088501.P12762939491982049451

`A020639(A007899(n))*A308878(n)`
-/

namespace A088501.P12762939491982049451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007899 n).toNat * A308878 n

end

end A088501.P12762939491982049451

/-! ## A088501.P10652245530812939580

`A011782(n+1)/A011782(n)*A308878(n)`
-/

namespace A088501.P10652245530812939580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A308878 n : ℚ)

end

end A088501.P10652245530812939580

/-! ## A088501.P1300444688594550036

`A000165(n)/A002866(n)*A308878(n)`
-/

namespace A088501.P1300444688594550036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A002866 n : ℚ) * (A308878 n : ℚ)

end

end A088501.P1300444688594550036

/-!
# A088502: Numbers n such that (n^2 - 5)/4 is prime.

The programs for A088502, there is no canonical definition to state claims against.
-/

/-! ## A088502.P7894487744810308796

`sqrt(A110013(n+1))`
-/

namespace A088502.P7894487744810308796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110013 (n + 1) : ℝ)

end

end A088502.P7894487744810308796

/-! ## A088502.P16578314156944181037

`2*A002328(n+1)-1`
-/

namespace A088502.P16578314156944181037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002328 (n + 1) - 1

end

end A088502.P16578314156944181037

/-! ## A088502.P6926167743523193517

`2*A045546(n+1)+1`
-/

namespace A088502.P6926167743523193517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045546 (n + 1) + 1

end

end A088502.P6926167743523193517

/-! ## A088502.P2700702807451766204

`2*A094210(n+1)+3`
-/

namespace A088502.P2700702807451766204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094210 (n + 1) + 3

end

end A088502.P2700702807451766204

/-! ## A088502.P12691088093441945360

`2*A076597(n+1)-3`
-/

namespace A088502.P12691088093441945360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076597 (n + 1) - 3

end

end A088502.P12691088093441945360

/-! ## A088502.P5638064729330229071

`2*A089362(n+1)-5`
-/

namespace A088502.P5638064729330229071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089362 (n + 1) - 5

end

end A088502.P5638064729330229071

/-! ## A088502.P14794609984061111523

`ceil(2*sqrt(A002327(n+1)))`
-/

namespace A088502.P14794609984061111523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A002327 (n + 1) : ℝ)⌉

end

end A088502.P14794609984061111523

/-! ## A088502.P11831579671879140086

`A045546(n+1)+A002328(n+1)`
-/

namespace A088502.P11831579671879140086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + A002328 (n + 1)

end

end A088502.P11831579671879140086

/-! ## A088502.P10415041723812752197

`A094210(n+1)+A076597(n+1)`
-/

namespace A088502.P10415041723812752197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + A076597 (n + 1)

end

end A088502.P10415041723812752197

/-! ## A088502.P13640930786883000131

`A002328(n+1)+A094210(n+1)+1`
-/

namespace A088502.P13640930786883000131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + (A094210 (n + 1) + 1)

end

end A088502.P13640930786883000131

/-! ## A088502.P16171116127006675684

`A045546(n+1)+A094210(n+1)+2`
-/

namespace A088502.P16171116127006675684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + (A094210 (n + 1) + 2)

end

end A088502.P16171116127006675684

/-! ## A088502.P13481853358210124732

`A089362(n+1)+A094210(n+1)-1`
-/

namespace A088502.P13481853358210124732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) + (A094210 (n + 1) - 1)

end

end A088502.P13481853358210124732

/-! ## A088502.P3805682844034439228

`A002328(n+1)+A076597(n+1)-2`
-/

namespace A088502.P3805682844034439228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + (A076597 (n + 1) - 2)

end

end A088502.P3805682844034439228

/-! ## A088502.P13515956180813211834

`A045546(n+1)+A089362(n+1)-2`
-/

namespace A088502.P13515956180813211834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + (A089362 (n + 1) - 2)

end

end A088502.P13515956180813211834

/-! ## A088502.P17505907176349569754

`A002328(n+1)+A089362(n+1)-3`
-/

namespace A088502.P17505907176349569754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + (A089362 (n + 1) - 3)

end

end A088502.P17505907176349569754

/-! ## A088502.P2671449160503194241

`floor(A002328(n+1)+sqrt(A002327(n+1)))`
-/

namespace A088502.P2671449160503194241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002328 (n + 1) : ℝ) + Real.sqrt (A002327 (n + 1) : ℝ)⌋

end

end A088502.P2671449160503194241

/-! ## A088502.P18292652785237801358

`A020735(A094210(n+1))`
-/

namespace A088502.P18292652785237801358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (A094210 (n + 1)).toNat

end

end A088502.P18292652785237801358

/-! ## A088502.P12699923624140448229

`A004273(A002328(n+1))`
-/

namespace A088502.P12699923624140448229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002328 (n + 1)).toNat

end

end A088502.P12699923624140448229

/-! ## A088502.P1858392754936624335

`A004274(A076597(n+1))`
-/

namespace A088502.P1858392754936624335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A076597 (n + 1)).toNat

end

end A088502.P1858392754936624335

/-! ## A088502.P16618407504501021770

`A004276(A089362(n+1))`
-/

namespace A088502.P16618407504501021770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A089362 (n + 1)).toNat

end

end A088502.P16618407504501021770

/-!
# A088503: Numbers n such that (n^2 + 3)/4 is prime.

The programs for A088503, there is no canonical definition to state claims against.
-/

/-! ## A088503.P4229176496649894335

`sqrt(A110284(n+1))`
-/

namespace A088503.P4229176496649894335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110284 (n + 1) : ℝ)

end

end A088503.P4229176496649894335

/-! ## A088503.P15999562357388962677

`2*A002384(n+1)+1`
-/

namespace A088503.P15999562357388962677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002384 (n + 1) + 1

end

end A088503.P15999562357388962677

/-! ## A088503.P14565650275210418234

`2*A055494(n+1)-1`
-/

namespace A088503.P14565650275210418234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055494 (n + 1) - 1

end

end A088503.P14565650275210418234

/-! ## A088503.P10036580346829366646

`2*A089358(n+1)-3`
-/

namespace A088503.P10036580346829366646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089358 (n + 1) - 3

end

end A088503.P10036580346829366646

/-! ## A088503.P955910875401406161

`floor(2*sqrt(A002383(n+1)))`
-/

namespace A088503.P955910875401406161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A002383 (n + 1) : ℝ)⌋

end

end A088503.P955910875401406161

/-! ## A088503.P12867217076892584167

`A055494(n+1)+A002384(n+1)`
-/

namespace A088503.P12867217076892584167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + A002384 (n + 1)

end

end A088503.P12867217076892584167

/-! ## A088503.P17391281386742771849

`A002384(n+1)+A089358(n+1)-1`
-/

namespace A088503.P17391281386742771849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + (A089358 (n + 1) - 1)

end

end A088503.P17391281386742771849

/-! ## A088503.P11927785169788718699

`A055494(n+1)+A089358(n+1)-2`
-/

namespace A088503.P11927785169788718699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + (A089358 (n + 1) - 2)

end

end A088503.P11927785169788718699

/-! ## A088503.P10025665896380180996

`A002383(n+1)+A002384(n+1)-A002384(n+1)²`
-/

namespace A088503.P10025665896380180996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1) + (A002384 (n + 1) - A002384 (n + 1) ^ 2)

end

end A088503.P10025665896380180996

/-! ## A088503.P188997968707938225

`A055494(n+1)+A055494(n+1)²-A002383(n+1)`
-/

namespace A088503.P188997968707938225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + (A055494 (n + 1) ^ 2 - A002383 (n + 1))

end

end A088503.P188997968707938225

/-! ## A088503.P15984500672058759185

`2*eq[1, A289356(n)]+1`
-/

namespace A088503.P15984500672058759185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088503.P15984500672058759185

/-! ## A088503.P10994628516250063293

`2*(eq[1, A182047(n)%(n+1)]+1)-1`
-/

namespace A088503.P10994628516250063293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182047 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ) - 1

end

end A088503.P10994628516250063293

/-! ## A088503.P17113169660529886534

`A005408(A002384(n+1))`
-/

namespace A088503.P17113169660529886534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002384 (n + 1)).toNat

end

end A088503.P17113169660529886534

/-! ## A088503.P4791914634649383191

`A004273(A055494(n+1))`
-/

namespace A088503.P4791914634649383191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A055494 (n + 1)).toNat

end

end A088503.P4791914634649383191

/-! ## A088503.P6048739435466338033

`A005408(floor(sqrt(A002383(n+1))))`
-/

namespace A088503.P6048739435466338033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.sqrt (A002383 (n + 1))).toNat

end

end A088503.P6048739435466338033

/-! ## A088503.P10156761987240130423

`A004277(A055494(n+1)-1)+1`
-/

namespace A088503.P10156761987240130423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055494 (n + 1) - 1).toNat + 1

end

end A088503.P10156761987240130423

/-! ## A088503.P10698729442199976717

`A005843(A055494(n+1)-1)+1`
-/

namespace A088503.P10698729442199976717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055494 (n + 1) - 1).toNat + 1

end

end A088503.P10698729442199976717

/-! ## A088503.P5153676157593823789

`A144396(A002384(n+1)+1)-2`
-/

namespace A088503.P5153676157593823789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A002384 (n + 1) + 1).toNat - 2

end

end A088503.P5153676157593823789

/-! ## A088503.P1314984839109304830

`A004274(A089358(n+1))`
-/

namespace A088503.P1314984839109304830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A089358 (n + 1)).toNat

end

end A088503.P1314984839109304830

/-! ## A088503.P6916718447407807005

`A023443(A002384(n+1)+2)+A002384(n+1)`
-/

namespace A088503.P6916718447407807005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002384 (n + 1) + 2).toNat + A002384 (n + 1)

end

end A088503.P6916718447407807005

/-!
# A088504: Sum of even entries in row n of Pascal's triangle.

The programs for A088504, there is no canonical definition to state claims against.
-/

/-! ## A088504.P5728428750120014218

`2^n-A088560(n)`
-/

namespace A088504.P5728428750120014218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088560 n

end

end A088504.P5728428750120014218

/-! ## A088504.P18166706330999711401

`(A085814(n)+2^n)/2`
-/

namespace A088504.P18166706330999711401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085814 n + (2 ^ n : ℤ) : ℚ) / 2

end

end A088504.P18166706330999711401

/-! ## A088504.P11937022941641162923

`A088560(n)+A085814(n)`
-/

namespace A088504.P11937022941641162923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088560 n + A085814 n

end

end A088504.P11937022941641162923

/-! ## A088504.P482219452024102217

`abs(A000079(n)-A088560(n))`
-/

namespace A088504.P482219452024102217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A088560 n|

end

end A088504.P482219452024102217

/-! ## A088504.P8409864639222919014

`and(-A088560(n), A000225(n))`
-/

namespace A088504.P8409864639222919014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A088560 n) (A000225 n)

end

end A088504.P8409864639222919014

/-!
# A088505: a(n) = (2^(3*n-1))/(integral_{x=0..1} (1-x^4)^n dx).

The programs for A088505, the canonical program `A088505.P18365809919237533500` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088505 has offset 1).

The definition of A088505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088505.P17082275561501425216

`2^n*A007696(n+2)/(n+1)!`
-/

namespace A088505.P17082275561501425216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A007696 (n + 2) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A088505.P17082275561501425216

namespace A088505

/-- `2^n*A007696(n+2)/(n+1)!` -/
def P17082275561501425216.Spec : Prop :=
  ∀ n, P17082275561501425216.a n = (A088505 (n + 1) : ℚ)

end A088505

/-! ## A088505.P11566841551835533371

`∏[2/(n+1)+8]/2`
-/

namespace A088505.P11566841551835533371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A088505.P11566841551835533371

namespace A088505

/-- `∏[2/(n+1)+8]/2` -/
def P11566841551835533371.Spec : Prop :=
  ∀ n, P11566841551835533371.a n = (A088505 (n + 1) : ℚ)

end A088505

/-! ## A088505.P3585548579059702801

`(n/∑[n]+8)*a(n-1)` with `a(0)=5`
-/

namespace A088505.P3585548579059702801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  ((n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 8) * a (n - 1)

end

end A088505.P3585548579059702801

namespace A088505

/-- `(n/∑[n]+8)*a(n-1)` -/
def P3585548579059702801.Spec : Prop :=
  ∀ n, P3585548579059702801.a n = (A088505 (n + 1) : ℚ)

end A088505

/-! ## A088505.P13626893776339540037

`(1/(n+1)+4)*2*a(n-1)` with `a(0)=5`
-/

namespace A088505.P13626893776339540037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (1 / (n + 1 : ℚ) + 4) * (2 * a (n - 1))

end

end A088505.P13626893776339540037

namespace A088505

/-- `(1/(n+1)+4)*2*a(n-1)` -/
def P13626893776339540037.Spec : Prop :=
  ∀ n, P13626893776339540037.a n = (A088505 (n + 1) : ℚ)

end A088505

/-! ## A088505.P15150576684868587024

`Δ[∑[A004985(n)]/2]`
-/

namespace A088505.P15150576684868587024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004985 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088505.P15150576684868587024

namespace A088505

/-- `Δ[∑[A004985(n)]/2]` -/
def P15150576684868587024.Spec : Prop :=
  ∀ n, P15150576684868587024.a n = (A088505 (n + 1) : ℚ)

end A088505

/-! ## A088505.P18365809919237533500

`round(A004985(n+1)/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088505

/-- `round(A004985(n+1)/2)` -/
def P18365809919237533500.Spec : Prop :=
  ∀ n, P18365809919237533500.a n = A088505 (n + 1)

theorem P18365809919237533500.correct : P18365809919237533500.Spec := by
  intro n
  simp only [A088505, Nat.add_sub_cancel]

end A088505

/-! ## A088505.P11454343109057866763

`A000007(n+1)+A004985(n+1)/2`
-/

namespace A088505.P11454343109057866763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A004985 (n + 1) : ℚ) / 2

end

end A088505.P11454343109057866763

namespace A088505

/-- `A000007(n+1)+A004985(n+1)/2` -/
def P11454343109057866763.Spec : Prop :=
  ∀ n, P11454343109057866763.a n = (A088505 (n + 1) : ℚ)

end A088505

/-! ## A088505.P11672994488042960555

`abs(A004985(n+1)/2*A008683(A005117(n+1)))`
-/

namespace A088505.P11672994488042960555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A004985 (n + 1) : ℚ) / 2 * (A008683 (A005117 (n + 1)).toNat : ℚ)|

end

end A088505.P11672994488042960555

namespace A088505

/-- `abs(A004985(n+1)/2*A008683(A005117(n+1)))` -/
def P11672994488042960555.Spec : Prop :=
  ∀ n, P11672994488042960555.a n = (A088505 (n + 1) : ℚ)

end A088505

/-!
# A088506: Number of permutations in the symmetric group S_n that have odd number of transpositions in their cycle decomposition.

The programs for A088506, there is no canonical definition to state claims against.
-/

/-! ## A088506.P8884298624104423346

`n!-A088336(n)`
-/

namespace A088506.P8884298624104423346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A088336 n

end

end A088506.P8884298624104423346

/-! ## A088506.P6788784597796831210

`A062282(n)+A063083(n)-A088336(n)`
-/

namespace A088506.P6788784597796831210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062282 n + (A063083 n - A088336 n)

end

end A088506.P6788784597796831210

/-! ## A088506.P1247074299762796111

`A000142(n)-A088336(n)`
-/

namespace A088506.P1247074299762796111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A088336 n

end

end A088506.P1247074299762796111

/-! ## A088506.P12643411789686361942

`Δ[A003422(n)]-A088336(n)`
-/

namespace A088506.P12643411789686361942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088336 n

end

end A088506.P12643411789686361942

/-!
# A088509: Short leg of primitive Pythagorean triangles sorted on product of sides.

The programs for A088509, there is no canonical definition to state claims against.
-/

/-! ## A088509.P18360632070739009142

`A063011(n+1)/(A088510(n+1)*A088511(n+1))`
-/

namespace A088509.P18360632070739009142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063011 (n + 1) : ℚ) / (A088510 (n + 1) * A088511 (n + 1) : ℚ)

end

end A088509.P18360632070739009142

/-!
# A088510: Long leg of primitive Pythagorean triangles sorted on product of sides.

The programs for A088510, there is no canonical definition to state claims against.
-/

/-! ## A088510.P1133851460817208186

`A063011(n+1)/(A088509(n+1)*A088511(n+1))`
-/

namespace A088510.P1133851460817208186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063011 (n + 1) : ℚ) / (A088509 (n + 1) * A088511 (n + 1) : ℚ)

end

end A088510.P1133851460817208186

/-! ## A088510.P15741130757496329062

`A121728(A121731(n+1)%A095637(n))`
-/

namespace A088510.P15741130757496329062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121728 (Int.tmod (A121731 (n + 1)) (A095637 n)).toNat

end

end A088510.P15741130757496329062

/-! ## A088510.P693884478530795439

`A121728(A121731(n+1))%A121710(n+1)`
-/

namespace A088510.P693884478530795439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121728 (A121731 (n + 1)).toNat) (A121710 (n + 1))

end

end A088510.P693884478530795439

/-! ## A088510.P2640497093562609176

`or(A034472(A185237(3*n+1))-2, A120097(n+1))`
-/

namespace A088510.P2640497093562609176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034472 (A185237 (3 * n + 1)).toNat - 2) (A120097 (n + 1))

end

end A088510.P2640497093562609176

/-!
# A088511: Hypotenuses of primitive Pythagorean triangles sorted on product of sides.

The programs for A088511, there is no canonical definition to state claims against.
-/

/-! ## A088511.P18011146515812018650

`A063011(n+1)/(A088509(n+1)*A088510(n+1))`
-/

namespace A088511.P18011146515812018650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063011 (n + 1) : ℚ) / (A088509 (n + 1) * A088510 (n + 1) : ℚ)

end

end A088511.P18011146515812018650

/-! ## A088511.P14791933820220844844

`A121727(A121731(n+1)%A095637(n))`
-/

namespace A088511.P14791933820220844844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121727 (Int.tmod (A121731 (n + 1)) (A095637 n)).toNat

end

end A088511.P14791933820220844844

/-! ## A088511.P6388777701644165809

`A121727(A121731(n+1))%A121710(n+1)`
-/

namespace A088511.P6388777701644165809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121727 (A121731 (n + 1)).toNat) (A121710 (n + 1))

end

end A088511.P6388777701644165809

/-! ## A088511.P9480885694988947921

`A121727(A121730(n+1)%A121691(3*(n+1)))`
-/

namespace A088511.P9480885694988947921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121727 (Int.tmod (A121730 (n + 1)) (A121691 (3 * (n + 1)))).toNat

end

end A088511.P9480885694988947921

/-!
# A088512: Number of partitions of n into two parts whose xor-sum is n.

The programs for A088512, the canonical program `A088512.P15945128481436275325` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088512 has offset 0).

The definition of A088512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088512.P2728406095925383347

`lcm(n, 2*(a(n-1)+1))/n-1` with `a(0)=0, a(1)=0`
-/

namespace A088512.P2728406095925383347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (2 * (a (n - 1) + 1))) : ℚ) / (n : ℚ) - 1

end

end A088512.P2728406095925383347

namespace A088512

/-- `lcm(n, 2*(a(n-1)+1))/n-1` -/
def P2728406095925383347.Spec : Prop :=
  ∀ n, P2728406095925383347.a n = (A088512 n : ℚ)

end A088512

/-! ## A088512.P2455522624898464505

`xor(1, char[2^n]+2*a(and(n, n-1)))` with `a(0)=0`
-/

namespace A088512.P2455522624898464505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 ((if ∃ j, f1 j = n then 1 else 0) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A088512.P2455522624898464505

namespace A088512

/-- `xor(1, char[2^n]+2*a(and(n, n-1)))` -/
def P2455522624898464505.Spec : Prop :=
  ∀ n, (P2455522624898464505.a n : ℤ) = A088512 n

end A088512

/-! ## A088512.P8093014306740808649

`((3-(-1)^n)*a(floor(n/2))+1-(-1)^n)/2` with `a(0)=0, a(1)=0`
-/

namespace A088512.P8093014306740808649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((3 - (-1) ^ n : ℚ) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ)) / 2

end

end A088512.P8093014306740808649

namespace A088512

/-- `((3-(-1)^n)*a(floor(n/2))+1-(-1)^n)/2` -/
def P8093014306740808649.Spec : Prop :=
  ∀ n, P8093014306740808649.a n = (A088512 n : ℚ)

end A088512

/-! ## A088512.P15945128481436275325

`floor(A038573(n)/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088512

/-- `floor(A038573(n)/2)` -/
def P15945128481436275325.Spec : Prop :=
  ∀ n, P15945128481436275325.a n = A088512 n

theorem P15945128481436275325.correct : P15945128481436275325.Spec := by
  intro n
  simp only [A088512]

end A088512

/-! ## A088512.P10559260441290543400

`A038573(and(n, n-1))`
-/

namespace A088512.P10559260441290543400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A088512.P10559260441290543400

namespace A088512

/-- `A038573(and(n, n-1))` -/
def P10559260441290543400.Spec : Prop :=
  ∀ n, P10559260441290543400.a n = A088512 n

end A088512

/-! ## A088512.P4778206368934979118

`floor((A001316(n)-1)/2)`
-/

namespace A088512.P4778206368934979118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001316 n - 1 : ℚ) / 2⌋

end

end A088512.P4778206368934979118

namespace A088512

/-- `floor((A001316(n)-1)/2)` -/
def P4778206368934979118.Spec : Prop :=
  ∀ n, P4778206368934979118.a n = A088512 n

theorem P4778206368934979118.correct : P4778206368934979118.Spec := by
  intro n
  simp only [A088512, Nat.add_sub_cancel, A088512.P4778206368934979118.a, A088512.P15945128481436275325.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, A038573, A038573.P5952807231814584452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088512

/-! ## A088512.P16564018955768637647

`floor(A335063(n)/(n+1))`
-/

namespace A088512.P16564018955768637647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A335063 n : ℚ) / (n + 1 : ℚ)⌋

end

end A088512.P16564018955768637647

namespace A088512

/-- `floor(A335063(n)/(n+1))` -/
def P16564018955768637647.Spec : Prop :=
  ∀ n, P16564018955768637647.a n = A088512 n

end A088512

/-! ## A088512.P9374031223952561495

`floor((n-A048967(n))/2)`
-/

namespace A088512.P9374031223952561495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A048967 n : ℚ) / 2⌋

end

end A088512.P9374031223952561495

namespace A088512

/-- `floor((n-A048967(n))/2)` -/
def P9374031223952561495.Spec : Prop :=
  ∀ n, P9374031223952561495.a n = A088512 n

end A088512

/-! ## A088512.P3908508512414132613

`A001316(and(n, n-1))-1`
-/

namespace A088512.P3908508512414132613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1

end

end A088512.P3908508512414132613

namespace A088512

/-- `A001316(and(n, n-1))-1` -/
def P3908508512414132613.Spec : Prop :=
  ∀ n, P3908508512414132613.a n = A088512 n

end A088512

/-! ## A088512.P7557286439462020323

`A000225((2*n)%∑[∏{e}[xor(n, -n), #]])`
-/

namespace A088512.P7557286439462020323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A088512.P7557286439462020323

namespace A088512

/-- `A000225((2*n)%∑[∏{e}[xor(n, -n), #]])` -/
def P7557286439462020323.Spec : Prop :=
  ∀ n, P7557286439462020323.a n = A088512 n

end A088512

/-! ## A088512.P6707737404808762258

`A116601(2*(n-(∑[val(n+1, 2)]-val(n+1, 2))))`
-/

namespace A088512.P6707737404808762258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (2 * ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)))).toNat

end

end A088512.P6707737404808762258

namespace A088512

/-- `A116601(2*(n-(∑[val(n+1, 2)]-val(n+1, 2))))` -/
def P6707737404808762258.Spec : Prop :=
  ∀ n, P6707737404808762258.a n = A088512 n

end A088512

/-! ## A088512.P4711843379419909688

`A016035(A001316(n))`
-/

namespace A088512.P4711843379419909688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A001316 n).toNat

end

end A088512.P4711843379419909688

namespace A088512

/-- `A016035(A001316(n))` -/
def P4711843379419909688.Spec : Prop :=
  ∀ n, P4711843379419909688.a n = A088512 n

end A088512

/-! ## A088512.P1979637409704793835

`A004524(A038573(n))`
-/

namespace A088512.P1979637409704793835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A038573 n).toNat

end

end A088512.P1979637409704793835

namespace A088512

/-- `A004524(A038573(n))` -/
def P1979637409704793835.Spec : Prop :=
  ∀ n, P1979637409704793835.a n = A088512 n

end A088512

/-! ## A088512.P12112226125303922114

`A004524(A001316(n)-1)`
-/

namespace A088512.P12112226125303922114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A001316 n - 1).toNat

end

end A088512.P12112226125303922114

namespace A088512

/-- `A004524(A001316(n)-1)` -/
def P12112226125303922114.Spec : Prop :=
  ∀ n, P12112226125303922114.a n = A088512 n

end A088512

/-! ## A088512.P17629153338563622874

`A004526(A001316(n)-1)`
-/

namespace A088512.P17629153338563622874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001316 n - 1).toNat

end

end A088512.P17629153338563622874

namespace A088512

/-- `A004526(A001316(n)-1)` -/
def P17629153338563622874.Spec : Prop :=
  ∀ n, P17629153338563622874.a n = A088512 n

end A088512

/-! ## A088512.P4698889083128291596

`A011782(A000120(n))-1`
-/

namespace A088512.P4698889083128291596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 n).toNat - 1

end

end A088512.P4698889083128291596

namespace A088512

/-- `A011782(A000120(n))-1` -/
def P4698889083128291596.Spec : Prop :=
  ∀ n, P4698889083128291596.a n = A088512 n

end A088512

/-! ## A088512.P4412811686630996015

`A048735(A001316(n)-1)`
-/

namespace A088512.P4412811686630996015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A001316 n - 1).toNat

end

end A088512.P4412811686630996015

namespace A088512

/-- `A048735(A001316(n)-1)` -/
def P4412811686630996015.Spec : Prop :=
  ∀ n, P4412811686630996015.a n = A088512 n

end A088512

/-! ## A088512.P8099502344233566268

`A073139(A038573(n)+2)`
-/

namespace A088512.P8099502344233566268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 (A038573 n + 2).toNat

end

end A088512.P8099502344233566268

namespace A088512

/-- `A073139(A038573(n)+2)` -/
def P8099502344233566268.Spec : Prop :=
  ∀ n, P8099502344233566268.a n = A088512 n

end A088512

/-! ## A088512.P8827550182175703124

`A249304(A001316(n)-1)`
-/

namespace A088512.P8827550182175703124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249304 (A001316 n - 1).toNat

end

end A088512.P8827550182175703124

namespace A088512

/-- `A249304(A001316(n)-1)` -/
def P8827550182175703124.Spec : Prop :=
  ∀ n, P8827550182175703124.a n = A088512 n

end A088512

/-! ## A088512.P1562053731676914776

`A318921(A001316(n)-1)`
-/

namespace A088512.P1562053731676914776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A001316 n - 1).toNat

end

end A088512.P1562053731676914776

namespace A088512

/-- `A318921(A001316(n)-1)` -/
def P1562053731676914776.Spec : Prop :=
  ∀ n, P1562053731676914776.a n = A088512 n

end A088512

/-!
# A088513: Smallest cevians corresponding to A089025(n).

The programs for A088513, there is no canonical definition to state claims against.
-/

/-! ## A088513.P7617102556540448479

`A201223(A016945(n))%A101145(n)`
-/

namespace A088513.P7617102556540448479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201223 (A016945 n).toNat) (A101145 n)

end

end A088513.P7617102556540448479

/-! ## A088513.P14000761952709724668

`A201223(Δ[A003215(n)])%A101145(n)`
-/

namespace A088513.P14000761952709724668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201223 (f1 (n + 1) - f1 n).toNat) (A101145 n)

end

end A088513.P14000761952709724668

/-! ## A088513.P6968353588160823025

`A201223(A016945(n))+A000007(A248768(n+1))`
-/

namespace A088513.P6968353588160823025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (A016945 n).toNat + A000007 (A248768 (n + 1)).toNat

end

end A088513.P6968353588160823025

/-! ## A088513.P5467315745447686333

`A201223(A000267((3*(n+1))²))`
-/

namespace A088513.P5467315745447686333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (A000267 ((3 * (n + 1)) ^ 2)).toNat

end

end A088513.P5467315745447686333

/-! ## A088513.P6515499953111691355

`A357277(n+1)%A217255(A001523(n))`
-/

namespace A088513.P6515499953111691355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357277 (n + 1)) (A217255 (A001523 n).toNat)

end

end A088513.P6515499953111691355

/-!
# A088514: Smaller section of edge A089025(n) by integral cevian A088513(n).

The programs for A088514, there is no canonical definition to state claims against.
-/

/-! ## A088514.P420052233255724778

`A089025(n+1)-A088586(n+1)`
-/

namespace A088514.P420052233255724778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089025 (n + 1) - A088586 (n + 1)

end

end A088514.P420052233255724778

/-! ## A088514.P14043672356182577980

`(A089025(n+1)-A088587(n+1))/2`
-/

namespace A088514.P14043672356182577980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089025 (n + 1) - A088587 (n + 1) : ℚ) / 2

end

end A088514.P14043672356182577980

/-! ## A088514.P7946795167149663294

`A088586(n+1)-A088587(n+1)`
-/

namespace A088514.P7946795167149663294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (n + 1) - A088587 (n + 1)

end

end A088514.P7946795167149663294

/-! ## A088514.P1117478116753621669

`record[A201223(n+2)]-A088586(n+1)`
-/

namespace A088514.P1117478116753621669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088586 (n + 1)

end

end A088514.P1117478116753621669

/-! ## A088514.P13696936865896728095

`record[A201223(n+5)]%A088586(n+1)`
-/

namespace A088514.P13696936865896728095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A088586 (n + 1))

end

end A088514.P13696936865896728095

/-! ## A088514.P7215966655266206520

`A001281(A089025(n+1)-A088587(n+1))`
-/

namespace A088514.P7215966655266206520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A089025 (n + 1) - A088587 (n + 1)).toNat

end

end A088514.P7215966655266206520

/-! ## A088514.P12783663167823195955

`A004526(A089025(n+1)-A088587(n+1))`
-/

namespace A088514.P12783663167823195955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A089025 (n + 1) - A088587 (n + 1)).toNat

end

end A088514.P12783663167823195955

/-! ## A088514.P11121469641043132808

`A014682(A089025(n+1)-A088587(n+1))`
-/

namespace A088514.P11121469641043132808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A089025 (n + 1) - A088587 (n + 1)).toNat

end

end A088514.P11121469641043132808

/-! ## A088514.P3129699964999479821

`A123108(A089025(n+1)-A088587(n+1))`
-/

namespace A088514.P3129699964999479821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A089025 (n + 1) - A088587 (n + 1)).toNat

end

end A088514.P3129699964999479821

/-! ## A088514.P699434901719420236

`A089025(A000027(n+1))%A088586(n+1)`
-/

namespace A088514.P699434901719420236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089025 (A000027 (n + 1)).toNat) (A088586 (n + 1))

end

end A088514.P699434901719420236

/-!
# A088515: Values j of pairs (j,k) that generate A088319(n).

The programs for A088515, there is no canonical definition to state claims against.
-/

/-! ## A088515.P2301420921745398011

`2*A089554(n+1)-1`
-/

namespace A088515.P2301420921745398011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089554 (n + 1) - 1

end

end A088515.P2301420921745398011

/-! ## A088515.P15249716467346176805

`A004273(A089554(n+1))`
-/

namespace A088515.P15249716467346176805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A089554 (n + 1)).toNat

end

end A088515.P15249716467346176805

/-! ## A088515.P1117288156806034865

`A005408(A089554(n+1)-1)`
-/

namespace A088515.P1117288156806034865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A089554 (n + 1) - 1).toNat

end

end A088515.P1117288156806034865

/-! ## A088515.P15372722757696183090

`A089546(n+1)/A088516(n+1)`
-/

namespace A088515.P15372722757696183090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) / (A088516 (n + 1) : ℚ)

end

end A088515.P15372722757696183090

/-! ## A088515.P17930009721828945908

`A089557(n+1)/A089555(n+1)`
-/

namespace A088515.P17930009721828945908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089557 (n + 1) : ℚ) / (A089555 (n + 1) : ℚ)

end

end A088515.P17930009721828945908

/-! ## A088515.P3398583333135652564

`2/A088516(n+1)*A089557(n+1)`
-/

namespace A088515.P3398583333135652564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A088516 (n + 1) : ℚ) * (A089557 (n + 1) : ℚ)

end

end A088515.P3398583333135652564

/-! ## A088515.P227404741339223922

`A089546(n+1)/(2*A089555(n+1))`
-/

namespace A088515.P227404741339223922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) / (2 * A089555 (n + 1) : ℚ)

end

end A088515.P227404741339223922

/-! ## A088515.P16795082298707624148

`A000265(A089546(n+1)/A089555(n+1))`
-/

namespace A088515.P16795082298707624148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A089546 (n + 1) : ℚ) / (A089555 (n + 1) : ℚ))).toNat

end

end A088515.P16795082298707624148

/-! ## A088515.P5165279655163309161

`gcd(A089551(n+1)/A088516(n+1), A089557(n+1))`
-/

namespace A088515.P5165279655163309161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A089551 (n + 1) : ℚ) / (A088516 (n + 1) : ℚ))) (A089557 (n + 1))

end

end A088515.P5165279655163309161

/-! ## A088515.P7915603159995373086

`A004277(A089557(n+1))/A088516(n+1)`
-/

namespace A088515.P7915603159995373086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A089557 (n + 1)).toNat : ℚ) / (A088516 (n + 1) : ℚ)

end

end A088515.P7915603159995373086

/-!
# A088516: Values k of pairs (j,k) that generate A088319(n).

The programs for A088516, there is no canonical definition to state claims against.
-/

/-! ## A088516.P5595836982210577501

`2*A089555(n+1)`
-/

namespace A088516.P5595836982210577501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089555 (n + 1)

end

end A088516.P5595836982210577501

/-! ## A088516.P8030683903243396675

`A004277(A089555(n+1))`
-/

namespace A088516.P8030683903243396675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A089555 (n + 1)).toNat

end

end A088516.P8030683903243396675

/-! ## A088516.P2354267170289198226

`A005408(A089555(n+1)-1)+1`
-/

namespace A088516.P2354267170289198226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A089555 (n + 1) - 1).toNat + 1

end

end A088516.P2354267170289198226

/-! ## A088516.P197556468760588824

`A089546(n+1)/A088515(n+1)`
-/

namespace A088516.P197556468760588824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) / (A088515 (n + 1) : ℚ)

end

end A088516.P197556468760588824

/-! ## A088516.P4413264990097080143

`2/A088515(n+1)*A089557(n+1)`
-/

namespace A088516.P4413264990097080143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A088515 (n + 1) : ℚ) * (A089557 (n + 1) : ℚ)

end

end A088516.P4413264990097080143

/-! ## A088516.P16289851271521751921

`A089555(n+1)+A089557(n+1)/A088515(n+1)`
-/

namespace A088516.P16289851271521751921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089555 (n + 1) : ℚ) + (A089557 (n + 1) : ℚ) / (A088515 (n + 1) : ℚ)

end

end A088516.P16289851271521751921

/-! ## A088516.P17297112028279822961

`(A089557(n+1)+A089555(n+1))/A089554(n+1)`
-/

namespace A088516.P17297112028279822961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089557 (n + 1) + A089555 (n + 1) : ℚ) / (A089554 (n + 1) : ℚ)

end

end A088516.P17297112028279822961

/-! ## A088516.P13080225868592954845

`A089546(n+1)/A000265(A089546(n+1)/A089555(n+1))`
-/

namespace A088516.P13080225868592954845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) / (A000265 (SequenceMachineLib.roundAway ((A089546 (n + 1) : ℚ) / (A089555 (n + 1) : ℚ))).toNat : ℚ)

end

end A088516.P13080225868592954845

/-! ## A088516.P1031302363669728738

`A089555(n+1)+A089555((n+1)%A008574(n+1))`
-/

namespace A088516.P1031302363669728738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089555 (n + 1) + A089555 (Int.tmod (n + 1 : ℤ) (A008574 (n + 1))).toNat

end

end A088516.P1031302363669728738

/-! ## A088516.P4646694828640835545

`A089555(n+1)+A089555(A008619(n+n))`
-/

namespace A088516.P4646694828640835545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089555 (n + 1) + A089555 (A008619 (n + n)).toNat

end

end A088516.P4646694828640835545

/-!
# A088517: First differences of Golomb's sequence.

The programs for A088517, the canonical program `A088517.P6831708866838311153` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088517 has offset 1).

The definition of A088517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088517.P6831708866838311153

`A001462(n+2)-A001462(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088517

/-- `A001462(n+2)-A001462(n+1)` -/
def P6831708866838311153.Spec : Prop :=
  ∀ n, P6831708866838311153.a n = A088517 (n + 1)

theorem P6831708866838311153.correct : P6831708866838311153.Spec := by
  intro n
  simp only [A088517, Nat.add_sub_cancel]

end A088517

/-! ## A088517.P8898076469368803648

`abs(Δ[A321020(n+1)])`
-/

namespace A088517.P8898076469368803648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A088517.P8898076469368803648

namespace A088517

/-- `abs(Δ[A321020(n+1)])` -/
def P8898076469368803648.Spec : Prop :=
  ∀ n, P8898076469368803648.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P13606398062986824618

`char[A001463(n+1)-1]`
-/

namespace A088517.P13606398062986824618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088517.P13606398062986824618

namespace A088517

/-- `char[A001463(n+1)-1]` -/
def P13606398062986824618.Spec : Prop :=
  ∀ n, (P13606398062986824618.a n : ℤ) = A088517 (n + 1)

end A088517

/-! ## A088517.P12354945122972161346

`char[A095114(n+1)-2]`
-/

namespace A088517.P12354945122972161346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088517.P12354945122972161346

namespace A088517

/-- `char[A095114(n+1)-2]` -/
def P12354945122972161346.Spec : Prop :=
  ∀ n, (P12354945122972161346.a n : ℤ) = A088517 (n + 1)

end A088517

/-! ## A088517.P346516234447979757

`char[A109512(n)-(n+1)]`
-/

namespace A088517.P346516234447979757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088517.P346516234447979757

namespace A088517

/-- `char[A109512(n)-(n+1)]` -/
def P346516234447979757.Spec : Prop :=
  ∀ n, (P346516234447979757.a n : ℤ) = A088517 (n + 1)

end A088517

/-! ## A088517.P15371131224503154025

`char[∑[A001462(n+1)]-1]`
-/

namespace A088517.P15371131224503154025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088517.P15371131224503154025

namespace A088517

/-- `char[∑[A001462(n+1)]-1]` -/
def P15371131224503154025.Spec : Prop :=
  ∀ n, (P15371131224503154025.a n : ℤ) = A088517 (n + 1)

end A088517

/-! ## A088517.P11822344219524693260

`Δ[A319434(n+1-a(n-1))]` with `a(0)=1`
-/

namespace A088517.P11822344219524693260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A319434 ((n + 1 : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088517.P11822344219524693260

namespace A088517

/-- `Δ[A319434(n+1-a(n-1))]` -/
def P11822344219524693260.Spec : Prop :=
  ∀ n, P11822344219524693260.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P2475926903947169241

`A321021(Δ[A321020(n+1)]²)`
-/

namespace A088517.P2475926903947169241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321021 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A088517.P2475926903947169241

namespace A088517

/-- `A321021(Δ[A321020(n+1)]²)` -/
def P2475926903947169241.Spec : Prop :=
  ∀ n, P2475926903947169241.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P1215116789525186246

`(A321020(n+1)-A321020(n+2))²`
-/

namespace A088517.P1215116789525186246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321020 (n + 1) - A321020 (n + 2)) ^ 2

end

end A088517.P1215116789525186246

namespace A088517

/-- `(A321020(n+1)-A321020(n+2))²` -/
def P1215116789525186246.Spec : Prop :=
  ∀ n, P1215116789525186246.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P3264279456507902282

`Δ[A001462(n+1)]`
-/

namespace A088517.P3264279456507902282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088517.P3264279456507902282

namespace A088517

/-- `Δ[A001462(n+1)]` -/
def P3264279456507902282.Spec : Prop :=
  ∀ n, P3264279456507902282.a n = A088517 (n + 1)

theorem P3264279456507902282.correct : P3264279456507902282.Spec := by
  intro n
  simp only [A088517, Nat.add_sub_cancel, A088517.P3264279456507902282.f1, A088517.P3264279456507902282.a, A088517.P6831708866838311153.a, SequenceMachineLib.memo_apply]

end A088517

/-! ## A088517.P3306537485530533291

`log2(Δ[comp[A109512(n)]])`
-/

namespace A088517.P3306537485530533291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A088517.P3306537485530533291

namespace A088517

/-- `log2(Δ[comp[A109512(n)]])` -/
def P3306537485530533291.Spec : Prop :=
  ∀ n, P3306537485530533291.a n = (A088517 (n + 1) : ℝ)

end A088517

/-! ## A088517.P9090050466119692662

`Δ[A104236(n+1)/(n+1)]`
-/

namespace A088517.P9090050466119692662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104236 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088517.P9090050466119692662

namespace A088517

/-- `Δ[A104236(n+1)/(n+1)]` -/
def P9090050466119692662.Spec : Prop :=
  ∀ n, P9090050466119692662.a n = (A088517 (n + 1) : ℚ)

end A088517

/-! ## A088517.P11161803738205195690

`A001221(ceil(ratio[A001462(n+1)]))`
-/

namespace A088517.P11161803738205195690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A088517.P11161803738205195690

namespace A088517

/-- `A001221(ceil(ratio[A001462(n+1)]))` -/
def P11161803738205195690.Spec : Prop :=
  ∀ n, P11161803738205195690.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P14782788132501637114

`A001222(ceil(ratio[A001462(n+1)]))`
-/

namespace A088517.P14782788132501637114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A088517.P14782788132501637114

namespace A088517

/-- `A001222(ceil(ratio[A001462(n+1)]))` -/
def P14782788132501637114.Spec : Prop :=
  ∀ n, P14782788132501637114.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P16606876890111472384

`log2(Δ[A224731(n+1)])`
-/

namespace A088517.P16606876890111472384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224731 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A088517.P16606876890111472384

namespace A088517

/-- `log2(Δ[A224731(n+1)])` -/
def P16606876890111472384.Spec : Prop :=
  ∀ n, P16606876890111472384.a n = (A088517 (n + 1) : ℝ)

end A088517

/-! ## A088517.P10779685847370704323

`Δ[Δ[A095114(n+1)]]`
-/

namespace A088517.P10779685847370704323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088517.P10779685847370704323

namespace A088517

/-- `Δ[Δ[A095114(n+1)]]` -/
def P10779685847370704323.Spec : Prop :=
  ∀ n, P10779685847370704323.a n = A088517 (n + 1)

theorem P10779685847370704323.correct : P10779685847370704323.Spec := by
  intro n
  simp only [A088517, Nat.add_sub_cancel, A088517.P10779685847370704323.f2, A088517.P10779685847370704323.f1, A088517.P10779685847370704323.a, A088517.P6831708866838311153.a, A001462, A001462.P2570616953797054601.a, A095114, A095114.P18128364600797049740.f1, A095114.P18128364600797049740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088517

/-! ## A088517.P2367530952298562489

`A001221(Δ[A224731(n+1)])`
-/

namespace A088517.P2367530952298562489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A088517.P2367530952298562489

namespace A088517

/-- `A001221(Δ[A224731(n+1)])` -/
def P2367530952298562489.Spec : Prop :=
  ∀ n, P2367530952298562489.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P12009534505626216688

`A001222(Δ[A224731(n+1)])`
-/

namespace A088517.P12009534505626216688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A088517.P12009534505626216688

namespace A088517

/-- `A001222(Δ[A224731(n+1)])` -/
def P12009534505626216688.Spec : Prop :=
  ∀ n, P12009534505626216688.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P16012321762667531804

`Δ[Δ[A109512(n+1)]]`
-/

namespace A088517.P16012321762667531804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088517.P16012321762667531804

namespace A088517

/-- `Δ[Δ[A109512(n+1)]]` -/
def P16012321762667531804.Spec : Prop :=
  ∀ n, P16012321762667531804.a n = A088517 (n + 1)

end A088517

/-! ## A088517.P9319249435484480961

`Δ[A321020(n+1)]^A321029(3*n+2)`
-/

namespace A088517.P9319249435484480961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321020 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A321029 (3 * n + 2) : ℤ)

end

end A088517.P9319249435484480961

namespace A088517

/-- `Δ[A321020(n+1)]^A321029(3*n+2)` -/
def P9319249435484480961.Spec : Prop :=
  ∀ n, P9319249435484480961.a n = (A088517 (n + 1) : ℚ)

end A088517

/-!
# A088518: Symmetric secondary structures of RNA molecules with n nucleotides.

The programs for A088518, there is no canonical definition to state claims against.
-/

/-! ## A088518.P10402867691067680044

`A329703(n)-A203019(A027656(n))`
-/

namespace A088518.P10402867691067680044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329703 n - A203019 (A027656 n).toNat

end

end A088518.P10402867691067680044

/-! ## A088518.P18227469769528495321

`A329703(n)-A203019(A158416(n))`
-/

namespace A088518.P18227469769528495321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329703 n - A203019 (A158416 n).toNat

end

end A088518.P18227469769528495321

/-! ## A088518.P7303747486720967342

`A329703(n)+A203019(A158416(n))*A260196(n)`
-/

namespace A088518.P7303747486720967342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329703 n + A203019 (A158416 n).toNat * A260196 n

end

end A088518.P7303747486720967342

/-! ## A088518.P16777492052602470968

`A329703(n)+A203019(A027656(n))/A280193(2*n+1)`
-/

namespace A088518.P16777492052602470968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329703 n : ℚ) + (A203019 (A027656 n).toNat : ℚ) / (A280193 (2 * n + 1) : ℚ)

end

end A088518.P16777492052602470968

/-! ## A088518.P16079403987773778872

`A329703(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A088518.P16079403987773778872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329703 (n + 1) - a (n - 1)

end

end A088518.P16079403987773778872

/-!
# A088519: 2-Golomb's sequence G(n,2): earliest positive increasing sequence starting with (1,2) and satisfying "length of n-th run = n-th partial sum".

The programs for A088519, the canonical program `A088519.P640788755625914234` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088519 has offset 1).

The definition of A088519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088519.P9685451246529027850

`∑[char[∑[A118241(n)+n]]]`
-/

namespace A088519.P9685451246529027850
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118241 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088519.P9685451246529027850

namespace A088519

/-- `∑[char[∑[A118241(n)+n]]]` -/
def P9685451246529027850.Spec : Prop :=
  ∀ n, (P9685451246529027850.a n : ℤ) = A088519 (n + 1)

end A088519

/-! ## A088519.P8638972173340727156

`floor(root(∑[A340305(n+1)], 5))`
-/

namespace A088519.P8638972173340727156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A088519.P8638972173340727156

namespace A088519

/-- `floor(root(∑[A340305(n+1)], 5))` -/
def P8638972173340727156.Spec : Prop :=
  ∀ n, P8638972173340727156.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P5069636845580944925

`comp[∑[A007964(2*n+3)-3]]-n`
-/

namespace A088519.P5069636845580944925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (2 * n + 3) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A088519.P5069636845580944925

namespace A088519

/-- `comp[∑[A007964(2*n+3)-3]]-n` -/
def P5069636845580944925.Spec : Prop :=
  ∀ n, P5069636845580944925.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P2472852171419655561

`∑[char[∑[A269045(2*n+1)-(n+1)]]]`
-/

namespace A088519.P2472852171419655561
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269045 (2 * n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088519.P2472852171419655561

namespace A088519

/-- `∑[char[∑[A269045(2*n+1)-(n+1)]]]` -/
def P2472852171419655561.Spec : Prop :=
  ∀ n, (P2472852171419655561.a n : ℤ) = A088519 (n + 1)

end A088519

/-! ## A088519.P1141372863013149742

`comp[∑[comp[A046760(n+1)+1]+n]]-n`
-/

namespace A088519.P1141372863013149742
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046760 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A088519.P1141372863013149742

namespace A088519

/-- `comp[∑[comp[A046760(n+1)+1]+n]]-n` -/
def P1141372863013149742.Spec : Prop :=
  ∀ n, P1141372863013149742.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P11603506280075703865

`comp[∑[n-1-∑[n%2-A054065(n+1)]]]-n`
-/

namespace A088519.P11603506280075703865
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A054065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A088519.P11603506280075703865

namespace A088519

/-- `comp[∑[n-1-∑[n%2-A054065(n+1)]]]-n` -/
def P11603506280075703865.Spec : Prop :=
  ∀ n, P11603506280075703865.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P5408354992198443381

`A048766(∑[A248034(n)+5])`
-/

namespace A088519.P5408354992198443381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088519.P5408354992198443381

namespace A088519

/-- `A048766(∑[A248034(n)+5])` -/
def P5408354992198443381.Spec : Prop :=
  ∀ n, P5408354992198443381.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P17336519574840930142

`∑[char[A007504(n)-A053266(n)]]`
-/

namespace A088519.P17336519574840930142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A053266 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088519.P17336519574840930142

namespace A088519

/-- `∑[char[A007504(n)-A053266(n)]]` -/
def P17336519574840930142.Spec : Prop :=
  ∀ n, (P17336519574840930142.a n : ℤ) = A088519 (n + 1)

end A088519

/-! ## A088519.P9414935873227478028

`∑[char[A007504(n)-A110655(n)]]`
-/

namespace A088519.P9414935873227478028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A110655 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088519.P9414935873227478028

namespace A088519

/-- `∑[char[A007504(n)-A110655(n)]]` -/
def P9414935873227478028.Spec : Prop :=
  ∀ n, (P9414935873227478028.a n : ℤ) = A088519 (n + 1)

end A088519

/-! ## A088519.P3893396458395378236

`A123578(A054404(n+1)+∑[char[n²]])`
-/

namespace A088519.P3893396458395378236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A054404 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088519.P3893396458395378236

namespace A088519

/-- `A123578(A054404(n+1)+∑[char[n²]])` -/
def P3893396458395378236.Spec : Prop :=
  ∀ n, P3893396458395378236.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P18392683051285591449

`A276611(∑[A000041(A034178(n+1))])`
-/

namespace A088519.P18392683051285591449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A034178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088519.P18392683051285591449

namespace A088519

/-- `A276611(∑[A000041(A034178(n+1))])` -/
def P18392683051285591449.Spec : Prop :=
  ∀ n, P18392683051285591449.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P8835452183331488182

`A220104(A085118(n+1)+A030530(n))`
-/

namespace A088519.P8835452183331488182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (A085118 (n + 1) + A030530 n).toNat

end

end A088519.P8835452183331488182

namespace A088519

/-- `A220104(A085118(n+1)+A030530(n))` -/
def P8835452183331488182.Spec : Prop :=
  ∀ n, P8835452183331488182.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P640788755625914234

`A003056(A054404(n+1)+A001650(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088519

/-- `A003056(A054404(n+1)+A001650(n+1))` -/
def P640788755625914234.Spec : Prop :=
  ∀ n, P640788755625914234.a n = A088519 (n + 1)

theorem P640788755625914234.correct : P640788755625914234.Spec := by
  intro n
  simp only [A088519, Nat.add_sub_cancel]

end A088519

/-! ## A088519.P18297627956870476754

`A002024(A054404(n+1)+A003059(n+1))`
-/

namespace A088519.P18297627956870476754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A054404 (n + 1) + A003059 (n + 1)).toNat

end

end A088519.P18297627956870476754

namespace A088519

/-- `A002024(A054404(n+1)+A003059(n+1))` -/
def P18297627956870476754.Spec : Prop :=
  ∀ n, P18297627956870476754.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P3662072828626890332

`A002024(A057367(n+2)+A003059(n+1))`
-/

namespace A088519.P3662072828626890332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A057367 (n + 2) + A003059 (n + 1)).toNat

end

end A088519.P3662072828626890332

namespace A088519

/-- `A002024(A057367(n+2)+A003059(n+1))` -/
def P3662072828626890332.Spec : Prop :=
  ∀ n, P3662072828626890332.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P11788433922237577205

`A003059(A003059(n+1)+2*A054404(n+1))`
-/

namespace A088519.P11788433922237577205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A003059 (n + 1) + 2 * A054404 (n + 1)).toNat

end

end A088519.P11788433922237577205

namespace A088519

/-- `A003059(A003059(n+1)+2*A054404(n+1))` -/
def P11788433922237577205.Spec : Prop :=
  ∀ n, P11788433922237577205.a n = A088519 (n + 1)

end A088519

/-! ## A088519.P18222051712297763051

`A003059(A054404(n+1)+A054404(n+1)+A003059(n+1))`
-/

namespace A088519.P18222051712297763051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A054404 (n + 1) + (A054404 (n + 1) + A003059 (n + 1))).toNat

end

end A088519.P18222051712297763051

namespace A088519

/-- `A003059(A054404(n+1)+A054404(n+1)+A003059(n+1))` -/
def P18222051712297763051.Spec : Prop :=
  ∀ n, P18222051712297763051.a n = A088519 (n + 1)

end A088519

/-!
# A088520: Permutation of natural numbers generated by 3-rowed array shown below.

The programs for A088520, there is no canonical definition to state claims against.
-/

/-! ## A088520.P16754077996134840161

`A131717(A116551(n+1)+1)`
-/

namespace A088520.P16754077996134840161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A116551 (n + 1) + 1).toNat

end

end A088520.P16754077996134840161

/-! ## A088520.P10511102387463758573

`xor(A116551(n+1)+1, A181440(n+1)%A143098(n+1))`
-/

namespace A088520.P10511102387463758573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116551 (n + 1) + 1) (Int.tmod (A181440 (n + 1)) (A143098 (n + 1)))

end

end A088520.P10511102387463758573

/-! ## A088520.P6328739330907713822

`A131717(A115302(n+1))`
-/

namespace A088520.P6328739330907713822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A115302 (n + 1)).toNat

end

end A088520.P6328739330907713822

/-! ## A088520.P7097001613454208903

`xor(A181440(n+1)%A143098(n+1), A115302(n+1))`
-/

namespace A088520.P7097001613454208903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A181440 (n + 1)) (A143098 (n + 1))) (A115302 (n + 1))

end

end A088520.P7097001613454208903

/-! ## A088520.P15748309901922105529

`xor(A203575(n+1)%A143098(n+1), A115302(n+1))`
-/

namespace A088520.P15748309901922105529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A203575 (n + 1)) (A143098 (n + 1))) (A115302 (n + 1))

end

end A088520.P15748309901922105529

/-!
# A088521: a(1) = 1; for n > 1, a(n) = (a(n-1) + n) mod prime(n).

The programs for A088521, the canonical program `A088521.P17742855540112737009` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088521 has offset 1).

The definition of A088521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+n+1)%A000040(n+1)` (program `A088521.P17742855540112737009`, by `A088521.P17742855540112737009.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088521.P17742855540112737009

`(a(n-1)+n+1)%A000040(n+1)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=5, a(5)=11, a(6)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088521

/-- `(a(n-1)+n+1)%A000040(n+1)` -/
def P17742855540112737009.Spec : Prop :=
  ∀ n, P17742855540112737009.a n = A088521 (n + 1)

theorem P17742855540112737009.correct : P17742855540112737009.Spec := by
  intro n
  simp only [A088521, Nat.add_sub_cancel]

end A088521

/-! ## A088521.P4776532595824923607

`(a(n-1)+n+1)%A065091(n)` with `a(0)=1`
-/

namespace A088521.P4776532595824923607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (n + 1 : ℤ)) (A065091 n)

end

end A088521.P4776532595824923607

namespace A088521

/-- `(a(n-1)+n+1)%A065091(n)` -/
def P4776532595824923607.Spec : Prop :=
  ∀ n, P4776532595824923607.a n = A088521 (n + 1)

end A088521

/-! ## A088521.P5150000557877066215

`(a(n-1)+C(n+1, n))%p?[A015919(n+1)]` with `a(0)=1`
-/

namespace A088521.P5150000557877066215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (Nat.choose (n + 1) n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A088521.P5150000557877066215

namespace A088521

/-- `(a(n-1)+C(n+1, n))%p?[A015919(n+1)]` -/
def P5150000557877066215.Spec : Prop :=
  ∀ n, P5150000557877066215.a n = A088521 (n + 1)

end A088521

/-! ## A088521.P10046360391913446981

`abs(a(n-1)+n+1)%A008578(n+2)` with `a(0)=1`
-/

namespace A088521.P10046360391913446981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod |a (n - 1) + (n + 1 : ℤ)| (A008578 (n + 2))

end

end A088521.P10046360391913446981

namespace A088521

/-- `abs(a(n-1)+n+1)%A008578(n+2)` -/
def P10046360391913446981.Spec : Prop :=
  ∀ n, P10046360391913446981.a n = A088521 (n + 1)

end A088521

/-! ## A088521.P14643006482220098670

`(a(n-1)+A005408(n)-n)%A008578(n+2)` with `a(0)=1`
-/

namespace A088521.P14643006482220098670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (A005408 n - (n : ℤ))) (A008578 (n + 2))

end

end A088521.P14643006482220098670

namespace A088521

/-- `(a(n-1)+A005408(n)-n)%A008578(n+2)` -/
def P14643006482220098670.Spec : Prop :=
  ∀ n, P14643006482220098670.a n = A088521 (n + 1)

end A088521

/-! ## A088521.P14505467170011836383

`(a(n-1)+Δ[n²]-n)%record[A020639(n+2)]` with `a(0)=1`
-/

namespace A088521.P14505467170011836383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A088521.P14505467170011836383

namespace A088521

/-- `(a(n-1)+Δ[n²]-n)%record[A020639(n+2)]` -/
def P14505467170011836383.Spec : Prop :=
  ∀ n, P14505467170011836383.a n = A088521 (n + 1)

end A088521

/-! ## A088521.P1940569924448243108

`(a(n-1)+1-A001489(n))%p?[A145569(n)]` with `a(0)=1`
-/

namespace A088521.P1940569924448243108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (1 - A001489 n)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A088521.P1940569924448243108

namespace A088521

/-- `(a(n-1)+1-A001489(n))%p?[A145569(n)]` -/
def P1940569924448243108.Spec : Prop :=
  ∀ n, P1940569924448243108.a n = A088521 (n + 1)

end A088521

/-! ## A088521.P12081920468382303281

`(a(n-1)+2-A024000(n))%p?[A145569(n)]` with `a(0)=1`
-/

namespace A088521.P12081920468382303281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (2 - A024000 n)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A088521.P12081920468382303281

namespace A088521

/-- `(a(n-1)+2-A024000(n))%p?[A145569(n)]` -/
def P12081920468382303281.Spec : Prop :=
  ∀ n, P12081920468382303281.a n = A088521 (n + 1)

end A088521

/-! ## A088521.P12571121857896597035

`(a(n-1)+1+n)%p?[A090223(n)]` with `a(0)=1`
-/

namespace A088521.P12571121857896597035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1 + (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A088521.P12571121857896597035

namespace A088521

/-- `(a(n-1)+1+n)%p?[A090223(n)]` -/
def P12571121857896597035.Spec : Prop :=
  ∀ n, P12571121857896597035.a n = A088521 (n + 1)

end A088521

/-!
# A088522: a(1) = 2; for n > 1, a(n) = (a(n-1) + n) mod prime(n).

The programs for A088522, the canonical program `A088522.P15008963340697852807` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088522 has offset 1).

The definition of A088522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+n+1)%A000040(n+1)` (program `A088522.P15008963340697852807`, by `A088522.P15008963340697852807.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088522.P15008963340697852807

`(a(n-1)+n+1)%A000040(n+1)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088522

/-- `(a(n-1)+n+1)%A000040(n+1)` -/
def P15008963340697852807.Spec : Prop :=
  ∀ n, P15008963340697852807.a n = A088522 (n + 1)

theorem P15008963340697852807.correct : P15008963340697852807.Spec := by
  intro n
  simp only [A088522, Nat.add_sub_cancel]

end A088522

/-! ## A088522.P13583380863683424967

`(a(n-1)+n+1)%A065091(n)` with `a(0)=2`
-/

namespace A088522.P13583380863683424967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) + (n + 1 : ℤ)) (A065091 n)

end

end A088522.P13583380863683424967

namespace A088522

/-- `(a(n-1)+n+1)%A065091(n)` -/
def P13583380863683424967.Spec : Prop :=
  ∀ n, P13583380863683424967.a n = A088522 (n + 1)

end A088522

/-! ## A088522.P16499100040299067559

`(a(n-1)+1+n)%p?[A090223(n)]` with `a(0)=2`
-/

namespace A088522.P16499100040299067559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) + 1 + (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A088522.P16499100040299067559

namespace A088522

/-- `(a(n-1)+1+n)%p?[A090223(n)]` -/
def P16499100040299067559.Spec : Prop :=
  ∀ n, P16499100040299067559.a n = A088522 (n + 1)

end A088522

/-! ## A088522.P18299532451454838702

`(n+1+a(n-1))%A000040(n+1)` with `a(0)=2`
-/

namespace A088522.P18299532451454838702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n + 1 : ℤ) + a (n - 1)) (A000040 (n + 1))

end

end A088522.P18299532451454838702

namespace A088522

/-- `(n+1+a(n-1))%A000040(n+1)` -/
def P18299532451454838702.Spec : Prop :=
  ∀ n, P18299532451454838702.a n = A088522 (n + 1)

end A088522

/-! ## A088522.P17331813077376234294

`abs(a(n-1)+n+1)%A008578(n+2)` with `a(0)=2`
-/

namespace A088522.P17331813077376234294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod |a (n - 1) + (n + 1 : ℤ)| (A008578 (n + 2))

end

end A088522.P17331813077376234294

namespace A088522

/-- `abs(a(n-1)+n+1)%A008578(n+2)` -/
def P17331813077376234294.Spec : Prop :=
  ∀ n, P17331813077376234294.a n = A088522 (n + 1)

end A088522

/-! ## A088522.P6438059316745431530

`(a(n-1)-xor(n, -1))%record[A020639(n+2)]` with `a(0)=2`
-/

namespace A088522.P6438059316745431530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) - Int.xor (n : ℤ) (-1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A088522.P6438059316745431530

namespace A088522

/-- `(a(n-1)-xor(n, -1))%record[A020639(n+2)]` -/
def P6438059316745431530.Spec : Prop :=
  ∀ n, P6438059316745431530.a n = A088522 (n + 1)

end A088522

/-!
# A088523: a(1) = 2; for n > 1, a(n) = (a(n-1) + prime(n)) mod n.

The programs for A088523, the canonical program `A088523.P9671387272913707520` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088523 has offset 1).

The definition of A088523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))%(n+1)` (program `A088523.P9671387272913707520`, by `A088523.P9671387272913707520.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088523.P9671387272913707520

`(a(n-1)+A000040(n+1))%(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088523

/-- `(a(n-1)+A000040(n+1))%(n+1)` -/
def P9671387272913707520.Spec : Prop :=
  ∀ n, P9671387272913707520.a n = A088523 (n + 1)

theorem P9671387272913707520.correct : P9671387272913707520.Spec := by
  intro n
  simp only [A088523, Nat.add_sub_cancel]

end A088523

/-! ## A088523.P93549261496627570

`(A000040(n+1)+a(n-1))%(n+1)` with `a(0)=2`
-/

namespace A088523.P93549261496627570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A000040 (n + 1) + a (n - 1)) (n + 1 : ℤ)

end

end A088523.P93549261496627570

namespace A088523

/-- `(A000040(n+1)+a(n-1))%(n+1)` -/
def P93549261496627570.Spec : Prop :=
  ∀ n, P93549261496627570.a n = A088523 (n + 1)

end A088523

/-! ## A088523.P1796192659883694956

`(A014689(n+1)+a(n-1))%(n+1)` with `a(0)=2`
-/

namespace A088523.P1796192659883694956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A014689 (n + 1) + a (n - 1)) (n + 1 : ℤ)

end

end A088523.P1796192659883694956

namespace A088523

/-- `(A014689(n+1)+a(n-1))%(n+1)` -/
def P1796192659883694956.Spec : Prop :=
  ∀ n, P1796192659883694956.a n = A088523 (n + 1)

end A088523

/-! ## A088523.P7892883885356895064

`(A008578(n+2)+a(n-1))%(n+1)` with `a(0)=2`
-/

namespace A088523.P7892883885356895064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A008578 (n + 2) + a (n - 1)) (n + 1 : ℤ)

end

end A088523.P7892883885356895064

namespace A088523

/-- `(A008578(n+2)+a(n-1))%(n+1)` -/
def P7892883885356895064.Spec : Prop :=
  ∀ n, P7892883885356895064.a n = A088523 (n + 1)

end A088523

/-! ## A088523.P466477857660840632

`(a(n-1)+sqrt(A001248(n+1)))%(n+1)` with `a(0)=2`
-/

namespace A088523.P466477857660840632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ))) (n + 1 : ℤ)

end

end A088523.P466477857660840632

namespace A088523

/-- `(a(n-1)+sqrt(A001248(n+1)))%(n+1)` -/
def P466477857660840632.Spec : Prop :=
  ∀ n, P466477857660840632.a n = A088523 (n + 1)

end A088523

/-! ## A088523.P1080877913556356967

`(record[A020639(n+2)]+a(n-1))%(n+1)` with `a(0)=2`
-/

namespace A088523.P1080877913556356967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)) (n + 1 : ℤ)

end

end A088523.P1080877913556356967

namespace A088523

/-- `(record[A020639(n+2)]+a(n-1))%(n+1)` -/
def P1080877913556356967.Spec : Prop :=
  ∀ n, P1080877913556356967.a n = A088523 (n + 1)

end A088523

/-! ## A088523.P621084131982381360

`(a(n-1)+A052147(n+1)-2)%(n+1)` with `a(0)=2`
-/

namespace A088523.P621084131982381360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) + (A052147 (n + 1) - 2)) (n + 1 : ℤ)

end

end A088523.P621084131982381360

namespace A088523

/-- `(a(n-1)+A052147(n+1)-2)%(n+1)` -/
def P621084131982381360.Spec : Prop :=
  ∀ n, P621084131982381360.a n = A088523 (n + 1)

theorem P621084131982381360.correct : P621084131982381360.Spec := by
  intro n
  simp only [A088523, Nat.add_sub_cancel, A088523.P621084131982381360.a, A088523.P9671387272913707520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088523

/-! ## A088523.P6007817736225928610

`(a(n-1)+A006093(n+1)-n)%(n+1)` with `a(0)=2, a(1)=1`
-/

namespace A088523.P6007817736225928610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.tmod (a (n - 1) + (A006093 (n + 1) - (n : ℤ))) (n + 1 : ℤ)

end

end A088523.P6007817736225928610

namespace A088523

/-- `(a(n-1)+A006093(n+1)-n)%(n+1)` -/
def P6007817736225928610.Spec : Prop :=
  ∀ n, P6007817736225928610.a n = A088523 (n + 1)

end A088523

/-! ## A088523.P11469686793796312452

`(record[A000010(n+1)]+a(n-1)+1)%(n+1)` with `a(0)=2`
-/

namespace A088523.P11469686793796312452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1) + 1) (n + 1 : ℤ)

end

end A088523.P11469686793796312452

namespace A088523

/-- `(record[A000010(n+1)]+a(n-1)+1)%(n+1)` -/
def P11469686793796312452.Spec : Prop :=
  ∀ n, P11469686793796312452.a n = A088523 (n + 1)

end A088523

/-!
# A088524: Greatest twin prime that does not exceed n (starting at n=3).

The programs for A088524, there is no canonical definition to state claims against.
-/

/-! ## A088524.P4524165341091349661

`A001097(∑[A164292(n+3)])`
-/

namespace A088524.P4524165341091349661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088524.P4524165341091349661

/-! ## A088524.P2581930398801602348

`A171821(∑[A164292(n+3)]+1)`
-/

namespace A088524.P2581930398801602348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A088524.P2581930398801602348

/-! ## A088524.P5647676118796327604

`A001097(∑[char[A001097(n+1)-3]])`
-/

namespace A088524.P5647676118796327604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088524.P5647676118796327604

/-! ## A088524.P13568573718870646537

`A077800(A071538(n+1)+A071538(n+3))`
-/

namespace A088524.P13568573718870646537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A071538 (n + 1) + A071538 (n + 3)).toNat

end

end A088524.P13568573718870646537

/-!
# A088526: a(n) = A061017(n) - pi(n) - 1.

The programs for A088526, the canonical program `A088526.P8703883917156406737` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088526 has offset 1).

The definition of A088526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088526.P8703883917156406737

`A061017(n+1)-A000720(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088526

/-- `A061017(n+1)-A000720(n+1)-1` -/
def P8703883917156406737.Spec : Prop :=
  ∀ n, P8703883917156406737.a n = A088526 (n + 1)

theorem P8703883917156406737.correct : P8703883917156406737.Spec := by
  intro n
  simp only [A088526, Nat.add_sub_cancel]

end A088526

/-! ## A088526.P11175523623056404683

`∑[char[∑[∑{d}[n, ceil(acot(#))]]]]-∑[C(2, ∑{e}[n+1, #+1])]`
-/

namespace A088526.P11175523623056404683
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f6 n), (Nat.factorization (f6 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ)

end

end A088526.P11175523623056404683

namespace A088526

/-- `∑[char[∑[∑{d}[n, ceil(acot(#))]]]]-∑[C(2, ∑{e}[n+1, #+1])]` -/
def P11175523623056404683.Spec : Prop :=
  ∀ n, P11175523623056404683.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P17415296165570868661

`A061017(n+1)-A036234(n+1)`
-/

namespace A088526.P17415296165570868661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - A036234 (n + 1)

end

end A088526.P17415296165570868661

namespace A088526

/-- `A061017(n+1)-A036234(n+1)` -/
def P17415296165570868661.Spec : Prop :=
  ∀ n, P17415296165570868661.a n = A088526 (n + 1)

theorem P17415296165570868661.correct : P17415296165570868661.Spec := by
  intro n
  simp only [A088526, Nat.add_sub_cancel, A088526.P17415296165570868661.a, A088526.P8703883917156406737.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A061017, A061017.P3381662168248992728.a, A143502, A143502.P12154908491860464719.f4, A143502.P12154908491860464719.f3, A143502.P12154908491860464719.f2, A143502.P12154908491860464719.f1, A143502.P12154908491860464719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088526

/-! ## A088526.P689496120452569803

`∑[char[A006218(n)]]-A036234(n+1)`
-/

namespace A088526.P689496120452569803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A036234 (n + 1)

end

end A088526.P689496120452569803

namespace A088526

/-- `∑[char[A006218(n)]]-A036234(n+1)` -/
def P689496120452569803.Spec : Prop :=
  ∀ n, P689496120452569803.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P3463138516704973630

`A061017(n+1)-∑[A080339(n+1)]`
-/

namespace A088526.P3463138516704973630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088526.P3463138516704973630

namespace A088526

/-- `A061017(n+1)-∑[A080339(n+1)]` -/
def P3463138516704973630.Spec : Prop :=
  ∀ n, P3463138516704973630.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P18227463935938583541

`∑[char[A006218(n+1)]]-A000720(n+1)`
-/

namespace A088526.P18227463935938583541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000720 (n + 1)

end

end A088526.P18227463935938583541

namespace A088526

/-- `∑[char[A006218(n+1)]]-A000720(n+1)` -/
def P18227463935938583541.Spec : Prop :=
  ∀ n, P18227463935938583541.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P9122688151266571641

`A061017(n+1)-∑[A001222(n+1)!%2]`
-/

namespace A088526.P9122688151266571641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (n + 1)).toNat % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A088526.P9122688151266571641

namespace A088526

/-- `A061017(n+1)-∑[A001222(n+1)!%2]` -/
def P9122688151266571641.Spec : Prop :=
  ∀ n, P9122688151266571641.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P5591493810814177772

`A061017(n+1)-∑[char[A020639(n+1)-1]]`
-/

namespace A088526.P5591493810814177772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A088526.P5591493810814177772

namespace A088526

/-- `A061017(n+1)-∑[char[A020639(n+1)-1]]` -/
def P5591493810814177772.Spec : Prop :=
  ∀ n, P5591493810814177772.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P1093869533526077885

`A061017(n+1)-∑[round(1/A001222(2*(n+1)))]`
-/

namespace A088526.P1093869533526077885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A001222 (2 * (n + 1)) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088526.P1093869533526077885

namespace A088526

/-- `A061017(n+1)-∑[round(1/A001222(2*(n+1)))]` -/
def P1093869533526077885.Spec : Prop :=
  ∀ n, P1093869533526077885.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P8216992503574499695

`A061017(n+1)-(∑[char[A000040(n+1)-1]]+1)`
-/

namespace A088526.P8216992503574499695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A088526.P8216992503574499695

namespace A088526

/-- `A061017(n+1)-(∑[char[A000040(n+1)-1]]+1)` -/
def P8216992503574499695.Spec : Prop :=
  ∀ n, P8216992503574499695.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P12315394275658493588

`A061017(n+1)-∑[round(1/(A000203(n+1)-n))]`
-/

namespace A088526.P12315394275658493588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A000203 (n + 1) - (n : ℤ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088526.P12315394275658493588

namespace A088526

/-- `A061017(n+1)-∑[round(1/(A000203(n+1)-n))]` -/
def P12315394275658493588.Spec : Prop :=
  ∀ n, P12315394275658493588.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P12301199936692789348

`A023443(A061017(n+1)-A000720(n+1))`
-/

namespace A088526.P12301199936692789348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A061017 (n + 1) - A000720 (n + 1)).toNat

end

end A088526.P12301199936692789348

namespace A088526

/-- `A023443(A061017(n+1)-A000720(n+1))` -/
def P12301199936692789348.Spec : Prop :=
  ∀ n, P12301199936692789348.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P6967492826079893089

`A098357(n+1)-Δ[A062298(n+1)]`
-/

namespace A088526.P6967492826079893089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (n + 1) - (f1 (n + 1) - f1 n)

end

end A088526.P6967492826079893089

namespace A088526

/-- `A098357(n+1)-Δ[A062298(n+1)]` -/
def P6967492826079893089.Spec : Prop :=
  ∀ n, P6967492826079893089.a n = A088526 (n + 1)

theorem P6967492826079893089.correct : P6967492826079893089.Spec := by
  intro n
  simp only [A088526, Nat.add_sub_cancel, A088526.P6967492826079893089.f1, A088526.P6967492826079893089.a, A088526.P8703883917156406737.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A061017, A061017.P3381662168248992728.a, A062298, A062298.P8226643735375377344.a, A098357, A098357.P10267421569061637514.a, A143502, A143502.P12154908491860464719.f4, A143502.P12154908491860464719.f3, A143502.P12154908491860464719.f2, A143502.P12154908491860464719.f1, A143502.P12154908491860464719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088526

/-! ## A088526.P17707483322279705395

`A061017(n+1)-(A230980(n+1)+1)`
-/

namespace A088526.P17707483322279705395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - (A230980 (n + 1) + 1)

end

end A088526.P17707483322279705395

namespace A088526

/-- `A061017(n+1)-(A230980(n+1)+1)` -/
def P17707483322279705395.Spec : Prop :=
  ∀ n, P17707483322279705395.a n = A088526 (n + 1)

end A088526

/-! ## A088526.P7123636765484427721

`A061017(n+1)-(A056172(2*(n+1))+1)`
-/

namespace A088526.P7123636765484427721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - (A056172 (2 * (n + 1)) + 1)

end

end A088526.P7123636765484427721

namespace A088526

/-- `A061017(n+1)-(A056172(2*(n+1))+1)` -/
def P7123636765484427721.Spec : Prop :=
  ∀ n, P7123636765484427721.a n = A088526 (n + 1)

end A088526

/-!
# A088527: Define a Fibonacci-type sequence to be one of the form s(1) = s_1 >= 1, s(2) = s_2 >= 1, s(n+2) = s(n+1) + s(n); then a(n) = maximal m such that n is the m-th term in some Fibonacci-type sequence.

The programs for A088527, there is no canonical definition to state claims against.
-/

/-! ## A088527.P17700915244450560499

`A088858(n+1)+1`
-/

namespace A088527.P17700915244450560499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088858 (n + 1) + 1

end

end A088527.P17700915244450560499

/-! ## A088527.P13192524242036631577

`A005496(A088858(n+1))`
-/

namespace A088527.P13192524242036631577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A088858 (n + 1)).toNat

end

end A088527.P13192524242036631577

/-! ## A088527.P15981433841724120363

`∑{e}[A175806(n), A070081(#)]`
-/

namespace A088527.P15981433841724120363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070081 (Nat.factorization (f1 n).natAbs p)

end

end A088527.P15981433841724120363

/-! ## A088527.P15093631292390180429

`A216763(A355958(n+2))+1`
-/

namespace A088527.P15093631292390180429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A355958 (n + 2)).toNat + 1

end

end A088527.P15093631292390180429

/-! ## A088527.P13299437313690759691

`A374758(3*A131615(n+2))`
-/

namespace A088527.P13299437313690759691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (3 * A131615 (n + 2)).toNat

end

end A088527.P13299437313690759691

/-!
# A088528: Let m = number of ways of partitioning n into parts using all the parts of a subset of {1, 2, ..., n-1} whose sum of all parts of a subset is less than n; a(n) gives number of different subsets of {1, 2, ..., n-1} whose m is 0.

The programs for A088528, there is no canonical definition to state claims against.
-/

/-! ## A088528.P13342397666042304485

`A026906(n+1)-Δ[A353150(n)]`
-/

namespace A088528.P13342397666042304485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) - (f1 (n + 1) - f1 n)

end

end A088528.P13342397666042304485

/-! ## A088528.P18370138368551775044

`A026906(n+1)-A088314(n+1)`
-/

namespace A088528.P18370138368551775044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) - A088314 (n + 1)

end

end A088528.P18370138368551775044

/-! ## A088528.P8740289183787522969

`∑[A000009(n+1)]-A088314(n+1)`
-/

namespace A088528.P8740289183787522969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088314 (n + 1)

end

end A088528.P8740289183787522969

/-! ## A088528.P11387415269578461380

`A026906(Δ[n²]-n)%Δ[A353150(n)]`
-/

namespace A088528.P11387415269578461380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026906 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (f2 (n + 1) - f2 n)

end

end A088528.P11387415269578461380

/-! ## A088528.P5915190989714046091

`A036469(n+1)-(A088314(n+1)+1)`
-/

namespace A088528.P5915190989714046091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 1) - (A088314 (n + 1) + 1)

end

end A088528.P5915190989714046091

/-! ## A088528.P7842187973122199917

`A026906(n+1)+A070880(n+1)-A000079(n)`
-/

namespace A088528.P7842187973122199917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) + (A070880 (n + 1) - A000079 n)

end

end A088528.P7842187973122199917

/-! ## A088528.P11791937013002314483

`(A070880(n+1)+A026906(n+1))%A011782(n)`
-/

namespace A088528.P11791937013002314483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070880 (n + 1) + A026906 (n + 1)) (A011782 n)

end

end A088528.P11791937013002314483

/-! ## A088528.P9334528170146008177

`A365311(n+1)+A365312(n+1)-A088314(n+1)`
-/

namespace A088528.P9334528170146008177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365311 (n + 1) + (A365312 (n + 1) - A088314 (n + 1))

end

end A088528.P9334528170146008177

/-!
# A088529: Numerator of Bigomega(n)/Omega(n).

The programs for A088529, the canonical program `A088529.P7080797578101020587` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088529 has offset 2).

The definition of A088529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088529.P16751216438068597243

`A360615(A071364(n+2))`
-/

namespace A088529.P16751216438068597243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A071364 (n + 2)).toNat

end

end A088529.P16751216438068597243

namespace A088529

/-- `A360615(A071364(n+2))` -/
def P16751216438068597243.Spec : Prop :=
  ∀ n, P16751216438068597243.a n = A088529 (n + 2)

end A088529

/-! ## A088529.P5082668880091110959

`A360614(A329607(n+2))`
-/

namespace A088529.P5082668880091110959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A329607 (n + 2)).toNat

end

end A088529.P5082668880091110959

namespace A088529

/-- `A360614(A329607(n+2))` -/
def P5082668880091110959.Spec : Prop :=
  ∀ n, P5082668880091110959.a n = A088529 (n + 2)

end A088529

/-! ## A088529.P13087624517562991918

`A001222(n+2)/A001221(n+2)*A088530(n+2)`
-/

namespace A088529.P13087624517562991918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) / (A001221 (n + 2) : ℚ) * (A088530 (n + 2) : ℚ)

end

end A088529.P13087624517562991918

namespace A088529

/-- `A001222(n+2)/A001221(n+2)*A088530(n+2)` -/
def P13087624517562991918.Spec : Prop :=
  ∀ n, P13087624517562991918.a n = (A088529 (n + 2) : ℚ)

end A088529

/-! ## A088529.P9596456499879202040

`A112543(A289621(n+2))`
-/

namespace A088529.P9596456499879202040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A289621 (n + 2)).toNat

end

end A088529.P9596456499879202040

namespace A088529

/-- `A112543(A289621(n+2))` -/
def P9596456499879202040.Spec : Prop :=
  ∀ n, P9596456499879202040.a n = A088529 (n + 2)

end A088529

/-! ## A088529.P8262355186748678990

`A360615(A046523(n+2))`
-/

namespace A088529.P8262355186748678990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A046523 (n + 2)).toNat

end

end A088529.P8262355186748678990

namespace A088529

/-- `A360615(A046523(n+2))` -/
def P8262355186748678990.Spec : Prop :=
  ∀ n, P8262355186748678990.a n = A088529 (n + 2)

end A088529

/-! ## A088529.P14635196758626806388

`A326567(A181819(n+2))`
-/

namespace A088529.P14635196758626806388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A181819 (n + 2)).toNat

end

end A088529.P14635196758626806388

namespace A088529

/-- `A326567(A181819(n+2))` -/
def P14635196758626806388.Spec : Prop :=
  ∀ n, P14635196758626806388.a n = A088529 (n + 2)

end A088529

/-! ## A088529.P1052594018308417513

`A066921(n+2)/A001221(n+2)`
-/

namespace A088529.P1052594018308417513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066921 (n + 2) : ℚ) / (A001221 (n + 2) : ℚ)

end

end A088529.P1052594018308417513

namespace A088529

/-- `A066921(n+2)/A001221(n+2)` -/
def P1052594018308417513.Spec : Prop :=
  ∀ n, P1052594018308417513.a n = (A088529 (n + 2) : ℚ)

end A088529

/-! ## A088529.P7080797578101020587

`A001222(n+2)/A066922(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088529

/-- `A001222(n+2)/A066922(n+2)` -/
def P7080797578101020587.Spec : Prop :=
  ∀ n, P7080797578101020587.a n = (A088529 (n + 2) : ℚ)

end A088529

/-! ## A088529.P15769607804649790943

`gcd(A001222(n+2), A181591(n+2))`
-/

namespace A088529.P15769607804649790943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 2)) (A181591 (n + 2))

end

end A088529.P15769607804649790943

namespace A088529

/-- `gcd(A001222(n+2), A181591(n+2))` -/
def P15769607804649790943.Spec : Prop :=
  ∀ n, (P15769607804649790943.a n : ℤ) = A088529 (n + 2)

end A088529

/-! ## A088529.P16941102580482350249

`A066921(n+2)/(A082186(n+2)-A082186(n+1))`
-/

namespace A088529.P16941102580482350249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066921 (n + 2) : ℚ) / (A082186 (n + 2) - A082186 (n + 1) : ℚ)

end

end A088529.P16941102580482350249

namespace A088529

/-- `A066921(n+2)/(A082186(n+2)-A082186(n+1))` -/
def P16941102580482350249.Spec : Prop :=
  ∀ n, P16941102580482350249.a n = (A088529 (n + 2) : ℚ)

end A088529

/-! ## A088529.P5295648252953650081

`A001222(n+2)*A066921(n+2)/A113901(n+2)`
-/

namespace A088529.P5295648252953650081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) * A066921 (n + 2) : ℚ) / (A113901 (n + 2) : ℚ)

end

end A088529.P5295648252953650081

namespace A088529

/-- `A001222(n+2)*A066921(n+2)/A113901(n+2)` -/
def P5295648252953650081.Spec : Prop :=
  ∀ n, P5295648252953650081.a n = (A088529 (n + 2) : ℚ)

end A088529

/-! ## A088529.P8834564527111055305

`A113901(n+2)/(A001221(n+2)*A066922(n+2))`
-/

namespace A088529.P8834564527111055305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113901 (n + 2) : ℚ) / (A001221 (n + 2) * A066922 (n + 2) : ℚ)

end

end A088529.P8834564527111055305

namespace A088529

/-- `A113901(n+2)/(A001221(n+2)*A066922(n+2))` -/
def P8834564527111055305.Spec : Prop :=
  ∀ n, P8834564527111055305.a n = (A088529 (n + 2) : ℚ)

end A088529

/-! ## A088529.P2331736958413229704

`A360615(A320389(n+2))`
-/

namespace A088529.P2331736958413229704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A320389 (n + 2)).toNat

end

end A088529.P2331736958413229704

namespace A088529

/-- `A360615(A320389(n+2))` -/
def P2331736958413229704.Spec : Prop :=
  ∀ n, P2331736958413229704.a n = A088529 (n + 2)

end A088529

/-! ## A088529.P15947947491199603833

`A326839(A238745(n+2))`
-/

namespace A088529.P15947947491199603833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326839 (A238745 (n + 2)).toNat

end

end A088529.P15947947491199603833

namespace A088529

/-- `A326839(A238745(n+2))` -/
def P15947947491199603833.Spec : Prop :=
  ∀ n, P15947947491199603833.a n = A088529 (n + 2)

end A088529

/-!
# A088530: Denominator of bigomega(n)/omega(n).

The programs for A088530, the canonical program `A088530.P14101064521412745706` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088530 has offset 2).

The definition of A088530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088530.P14101064521412745706

`lcm(A001222(n+2), A001221(n+2))/A001222(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088530

/-- `lcm(A001222(n+2), A001221(n+2))/A001222(n+2)` -/
def P14101064521412745706.Spec : Prop :=
  ∀ n, P14101064521412745706.a n = (A088530 (n + 2) : ℚ)

end A088530

/-! ## A088530.P7013508711360098345

`A360614(A046523(n+2))`
-/

namespace A088530.P7013508711360098345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A046523 (n + 2)).toNat

end

end A088530.P7013508711360098345

namespace A088530

/-- `A360614(A046523(n+2))` -/
def P7013508711360098345.Spec : Prop :=
  ∀ n, P7013508711360098345.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P6913080441053189789

`A326568(A181819(n+2))`
-/

namespace A088530.P6913080441053189789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A181819 (n + 2)).toNat

end

end A088530.P6913080441053189789

namespace A088530

/-- `A326568(A181819(n+2))` -/
def P6913080441053189789.Spec : Prop :=
  ∀ n, P6913080441053189789.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P16078695303116052649

`A082061(A317791(n+2)%A037917(3*n+4))`
-/

namespace A088530.P16078695303116052649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (Int.tmod (A317791 (n + 2)) (A037917 (3 * n + 4))).toNat

end

end A088530.P16078695303116052649

namespace A088530

/-- `A082061(A317791(n+2)%A037917(3*n+4))` -/
def P16078695303116052649.Spec : Prop :=
  ∀ n, P16078695303116052649.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P5273200457085249718

`A309004(A308993((n+2)²))`
-/

namespace A088530.P5273200457085249718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A308993 ((n + 2) ^ 2)).toNat

end

end A088530.P5273200457085249718

namespace A088530

/-- `A309004(A308993((n+2)²))` -/
def P5273200457085249718.Spec : Prop :=
  ∀ n, P5273200457085249718.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P13794092921581537122

`A029238(A286520(n+2))+1`
-/

namespace A088530.P13794092921581537122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A286520 (n + 2)).toNat + 1

end

end A088530.P13794092921581537122

namespace A088530

/-- `A029238(A286520(n+2))+1` -/
def P13794092921581537122.Spec : Prop :=
  ∀ n, P13794092921581537122.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P4808580743700961333

`A080237(A286520(n+2)+1)`
-/

namespace A088530.P4808580743700961333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A286520 (n + 2) + 1).toNat

end

end A088530.P4808580743700961333

namespace A088530

/-- `A080237(A286520(n+2)+1)` -/
def P4808580743700961333.Spec : Prop :=
  ∀ n, P4808580743700961333.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P14477424917045969647

`A122197(A286520(n+2)+2)`
-/

namespace A088530.P14477424917045969647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A286520 (n + 2) + 2).toNat

end

end A088530.P14477424917045969647

namespace A088530

/-- `A122197(A286520(n+2)+2)` -/
def P14477424917045969647.Spec : Prop :=
  ∀ n, P14477424917045969647.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P17295422161967756804

`A331973(A286520(n+2)+6)`
-/

namespace A088530.P17295422161967756804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331973 (A286520 (n + 2) + 6).toNat

end

end A088530.P17295422161967756804

namespace A088530

/-- `A331973(A286520(n+2)+6)` -/
def P17295422161967756804.Spec : Prop :=
  ∀ n, P17295422161967756804.a n = A088530 (n + 2)

end A088530

/-! ## A088530.P1019457321966924065

`A063726(A305566(n+2))`
-/

namespace A088530.P1019457321966924065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 (A305566 (n + 2)).toNat

end

end A088530.P1019457321966924065

namespace A088530

/-- `A063726(A305566(n+2))` -/
def P1019457321966924065.Spec : Prop :=
  ∀ n, P1019457321966924065.a n = A088530 (n + 2)

end A088530

/-!
# A088531: Numerator of bigomega(n!)/omega(n!).

The programs for A088531, the canonical program `A088531.P514021030661575989` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088531 has offset 2).

The definition of A088531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088531.P514021030661575989

`lcm(A000720(n+2), A022559(n+2))/A000720(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088531

/-- `lcm(A000720(n+2), A022559(n+2))/A000720(n+2)` -/
def P514021030661575989.Spec : Prop :=
  ∀ n, P514021030661575989.a n = (A088531 (n + 2) : ℚ)

end A088531

/-!
# A088532: "Patterns of permutations": Define the "pattern" formed by k positions in a permutation to be the permutation of {1..k} specifying the relative order of the elements in those positions; a(n) = largest number of different patterns that can occur in a permutation of n letters.

The programs for A088532, there is no canonical definition to state claims against.
-/

/-! ## A088532.P16189353563677249674

`A002024(A275857(n))+Δ[A000598(n)]`
-/

namespace A088532.P16189353563677249674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A275857 n).toNat + (f1 (n + 1) - f1 n)

end

end A088532.P16189353563677249674

/-! ## A088532.P1233522387557872000

`A377898(ceil(2^(n-1)))+n`
-/

namespace A088532.P1233522387557872000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377898 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + (n : ℤ)

end

end A088532.P1233522387557872000

/-! ## A088532.P9287222684667601662

`A003056(ceil(4^n/3))+round(2*n/3)`
-/

namespace A088532.P9287222684667601662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈(4 ^ n : ℚ) / 3⌉.toNat + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A088532.P9287222684667601662

/-! ## A088532.P8931469989675955976

`A063712(A026558(n))`
-/

namespace A088532.P8931469989675955976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (A026558 n).toNat

end

end A088532.P8931469989675955976

/-!
# A088533: Numbers k such that bigomega(k!)/omega(k!) is an integer.

The programs for A088533, there is no canonical definition to state claims against.
-/

/-! ## A088533.P529417549814195700

`lt[A088531(n+2)², A342741(n+1)]+2`
-/

namespace A088533.P529417549814195700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088531 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A088533.P529417549814195700

/-!
# A088534: Number of representations of n by the quadratic form x^2 + xy + y^2 with 0 <= x <= y.

The programs for A088534, the canonical program `A088534.P9574496654145161148` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088534 has offset 0).

The definition of A088534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088534.P5259187202432089246

`ceil(A004016(n)/12)`
-/

namespace A088534.P5259187202432089246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004016 n : ℚ) / 12⌉

end

end A088534.P5259187202432089246

namespace A088534

/-- `ceil(A004016(n)/12)` -/
def P5259187202432089246.Spec : Prop :=
  ∀ n, P5259187202432089246.a n = A088534 n

end A088534

/-! ## A088534.P11462845372105075392

`ceil(abs(A180318(n)/12))`
-/

namespace A088534.P11462845372105075392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A180318 n : ℚ) / 12|⌉

end

end A088534.P11462845372105075392

namespace A088534

/-- `ceil(abs(A180318(n)/12))` -/
def P11462845372105075392.Spec : Prop :=
  ∀ n, P11462845372105075392.a n = A088534 n

end A088534

/-! ## A088534.P16281646218554759660

`ceil(abs(C(2, n%3)*A005928(n))/12)`
-/

namespace A088534.P16281646218554759660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(Nat.choose 2 (n % 3) : ℤ) * A005928 n| : ℚ) / 12⌉

end

end A088534.P16281646218554759660

namespace A088534

/-- `ceil(abs(C(2, n%3)*A005928(n))/12)` -/
def P16281646218554759660.Spec : Prop :=
  ∀ n, P16281646218554759660.a n = A088534 n

end A088534

/-! ## A088534.P11855437709913191367

`A008679(A004016(n)+2)`
-/

namespace A088534.P11855437709913191367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A004016 n + 2).toNat

end

end A088534.P11855437709913191367

namespace A088534

/-- `A008679(A004016(n)+2)` -/
def P11855437709913191367.Spec : Prop :=
  ∀ n, P11855437709913191367.a n = A088534 n

end A088534

/-! ## A088534.P12480383834396466061

`ceil(A005928(n)*A131713(n)/12)`
-/

namespace A088534.P12480383834396466061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005928 n * A131713 n : ℚ) / 12⌉

end

end A088534.P12480383834396466061

namespace A088534

/-- `ceil(A005928(n)*A131713(n)/12)` -/
def P12480383834396466061.Spec : Prop :=
  ∀ n, P12480383834396466061.a n = A088534 n

end A088534

/-! ## A088534.P9574496654145161148

`round(A002324(1-A057427(n)+n)/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088534

/-- `round(A002324(1-A057427(n)+n)/2)` -/
def P9574496654145161148.Spec : Prop :=
  ∀ n, P9574496654145161148.a n = A088534 n

theorem P9574496654145161148.correct : P9574496654145161148.Spec := by
  intro n
  simp only [A088534]

end A088534

/-! ## A088534.P5253869483895912608

`ceil(A005928(3*n)/12)`
-/

namespace A088534.P5253869483895912608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005928 (3 * n) : ℚ) / 12⌉

end

end A088534.P5253869483895912608

namespace A088534

/-- `ceil(A005928(3*n)/12)` -/
def P5253869483895912608.Spec : Prop :=
  ∀ n, P5253869483895912608.a n = A088534 n

end A088534

/-! ## A088534.P2898439682810014959

`floor(sqrt(A119395(10*10*n)))`
-/

namespace A088534.P2898439682810014959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A119395 (10 * (10 * n)))

end

end A088534.P2898439682810014959

namespace A088534

/-- `floor(sqrt(A119395(10*10*n)))` -/
def P2898439682810014959.Spec : Prop :=
  ∀ n, P2898439682810014959.a n = A088534 n

end A088534

/-! ## A088534.P8211822154225803418

`A001221(lcm(10, A249157(A004016(n)+1))+1)`
-/

namespace A088534.P8211822154225803418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 10 (A249157 (A004016 n + 1).toNat) + 1)

end

end A088534.P8211822154225803418

namespace A088534

/-- `A001221(lcm(10, A249157(A004016(n)+1))+1)` -/
def P8211822154225803418.Spec : Prop :=
  ∀ n, P8211822154225803418.a n = A088534 n

end A088534

/-! ## A088534.P571475319434179536

`A374092(n)+A195198(n)`
-/

namespace A088534.P571475319434179536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374092 n + A195198 n

end

end A088534.P571475319434179536

namespace A088534

/-- `A374092(n)+A195198(n)` -/
def P571475319434179536.Spec : Prop :=
  ∀ n, P571475319434179536.a n = A088534 n

theorem P571475319434179536.correct : P571475319434179536.Spec := by
  intro n
  simp only [A088534, Nat.add_sub_cancel, A088534.P571475319434179536.a, A088534.P9574496654145161148.a, A002324, A002324.P17421748272452344756.a, A057427, A057427.P17645173493419391152.a, A195198, A195198.P16259848613954439039.f2, A195198.P16259848613954439039.f3, A195198.P16259848613954439039.f1, A195198.P16259848613954439039.a, A374092, A374092.P5550982574403605617.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088534

/-!
# A088535: n representable as x^2+xy+y^2 and such that 3 divides sigma(n).

The programs for A088535, there is no canonical definition to state claims against.
-/

/-! ## A088535.P16025262143171541619

`lt[6, dr(A005928(n))]`
-/

namespace A088535.P16025262143171541619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005928 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088535.P16025262143171541619

/-! ## A088535.P15836691190078813360

`eq[9, dr(A004016(n))]`
-/

namespace A088535.P15836691190078813360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004016 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088535.P15836691190078813360

/-! ## A088535.P15131795437681539151

`eq[9, dr(A180318(n))]`
-/

namespace A088535.P15131795437681539151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A180318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088535.P15131795437681539151

/-! ## A088535.P7054614441409923790

`eq[9, dr(A226535(n))]`
-/

namespace A088535.P7054614441409923790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A226535 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088535.P7054614441409923790

/-! ## A088535.P14097823000853479303

`eq[3, A051724(abs(A180318(n)))]`
-/

namespace A088535.P14097823000853479303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 |A180318 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088535.P14097823000853479303

/-!
# A088536: Number of unimodal functions [1..n]->[1..n].

The programs for A088536, the canonical program `A088536.P693248794550608185` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088536 has offset 1).

The definition of A088536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088536.P693248794550608185

`∑{#}[n, C(n+2*#, n)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088536

/-- `∑{#}[n, C(n+2*#, n)]` -/
def P693248794550608185.Spec : Prop :=
  ∀ n, (P693248794550608185.a n : ℤ) = A088536 (n + 1)

theorem P693248794550608185.correct : P693248794550608185.Spec := by
  intro n
  simp only [A088536, Nat.add_sub_cancel]

end A088536

/-! ## A088536.P8797649625971313780

`A210219(∑[4*n]+1)`
-/

namespace A088536.P8797649625971313780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A088536.P8797649625971313780

namespace A088536

/-- `A210219(∑[4*n]+1)` -/
def P8797649625971313780.Spec : Prop :=
  ∀ n, P8797649625971313780.a n = A088536 (n + 1)

end A088536

/-! ## A088536.P14331427789775286270

`A071922(2*(n+1)²)`
-/

namespace A088536.P14331427789775286270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (2 * (n + 1) ^ 2)

end

end A088536.P14331427789775286270

namespace A088536

/-- `A071922(2*(n+1)²)` -/
def P14331427789775286270.Spec : Prop :=
  ∀ n, P14331427789775286270.a n = A088536 (n + 1)

end A088536

/-! ## A088536.P5031174346575682553

`A071920(∑[4*(n+1)])`
-/

namespace A088536.P5031174346575682553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088536.P5031174346575682553

namespace A088536

/-- `A071920(∑[4*(n+1)])` -/
def P5031174346575682553.Spec : Prop :=
  ∀ n, P5031174346575682553.a n = A088536 (n + 1)

end A088536

/-! ## A088536.P9280312013003200144

`A071921(∑[4*(n+1)])`
-/

namespace A088536.P9280312013003200144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088536.P9280312013003200144

namespace A088536

/-- `A071921(∑[4*(n+1)])` -/
def P9280312013003200144.Spec : Prop :=
  ∀ n, P9280312013003200144.a n = A088536 (n + 1)

end A088536

/-! ## A088536.P10554600007676964078

`record[A071921(A182455(n))]`
-/

namespace A088536.P10554600007676964078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A182455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088536.P10554600007676964078

namespace A088536

/-- `record[A071921(A182455(n))]` -/
def P10554600007676964078.Spec : Prop :=
  ∀ n, P10554600007676964078.a n = A088536 (n + 1)

end A088536

/-! ## A088536.P6303385294718152315

`A226031(∑[n+3]+1)`
-/

namespace A088536.P6303385294718152315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226031 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A088536.P6303385294718152315

namespace A088536

/-- `A226031(∑[n+3]+1)` -/
def P6303385294718152315.Spec : Prop :=
  ∀ n, P6303385294718152315.a n = A088536 (n + 1)

end A088536

/-!
# A088542: Prime numbers p such that A022559(p) is a multiple of A000720(p).

The programs for A088542, there is no canonical definition to state claims against.
-/

/-! ## A088542.P16087782901823501368

`p?[A088533(n+1)]`
-/

namespace A088542.P16087782901823501368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088542.P16087782901823501368

/-! ## A088542.P8169949266305780391

`record[p?[A088533(A052938(n))]]`
-/

namespace A088542.P8169949266305780391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088533 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088542.P8169949266305780391

/-! ## A088542.P16137662574073503788

`p?[record[A088533(A128227(n))]]`
-/

namespace A088542.P16137662574073503788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088533 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088542.P16137662574073503788

/-! ## A088542.P7454379028762759557

`p?[record[A088533(A154958(n))]]`
-/

namespace A088542.P7454379028762759557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088533 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088542.P7454379028762759557

/-! ## A088542.P14213412465381888105

`p?[record[A088533(A291769(n))]]`
-/

namespace A088542.P14213412465381888105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088533 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088542.P14213412465381888105

/-!
# A088544: Scale factor by which primitive Pythagorean triangle {x=A088509(n), y=A088510(n), z=A088511(n)} needs be enlarged in order to circumscribe the smallest integral square having a side on the hypotenuse.

The programs for A088544, there is no canonical definition to state claims against.
-/

/-! ## A088544.P4367697098387841136

`A088511(n+1)²+A088509(n+1)*A088510(n+1)`
-/

namespace A088544.P4367697098387841136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088511 (n + 1) ^ 2 + A088509 (n + 1) * A088510 (n + 1)

end

end A088544.P4367697098387841136

/-! ## A088544.P14329359154385215779

`A088511(n+1)²+A063011(n+1)/A088511(n+1)`
-/

namespace A088544.P14329359154385215779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088511 (n + 1) ^ 2 : ℚ) + (A063011 (n + 1) : ℚ) / (A088511 (n + 1) : ℚ)

end

end A088544.P14329359154385215779

/-!
# A088545: Quotient Fibonacci(5*n)/(5*Fibonacci(n)), where Fibonacci(n) = A000045(n).

The programs for A088545, the canonical program `A088545.P14330016079546386706` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088545 has offset 1).

The definition of A088545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088545.P11043243516519792101

`ogf((1+6x-9x^2-4x^3+x^4)/(1-5x-15x^2+15x^3+5x^4-x^5))`
-/

namespace A088545.P11043243516519792101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -9, -4, 1] [1, -5, -15, 15, 5, -1] n

end

end A088545.P11043243516519792101

namespace A088545

/-- `ogf((1+6x-9x^2-4x^3+x^4)/(1-5x-15x^2+15x^3+5x^4-x^5))` -/
def P11043243516519792101.Spec : Prop :=
  ∀ n, P11043243516519792101.a n = A088545 (n + 1)

end A088545

/-! ## A088545.P14330016079546386706

`5*A000045(n+1)²*(A000045(n+1)²+(-1)^(n+1))+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088545

/-- `5*A000045(n+1)²*(A000045(n+1)²+(-1)^(n+1))+1` -/
def P14330016079546386706.Spec : Prop :=
  ∀ n, P14330016079546386706.a n = A088545 (n + 1)

theorem P14330016079546386706.correct : P14330016079546386706.Spec := by
  intro n
  simp only [A088545, Nat.add_sub_cancel]

end A088545

/-! ## A088545.P110392043084465591

`A103326(n+1)/5`
-/

namespace A088545.P110392043084465591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103326 (n + 1) : ℚ) / 5

end

end A088545.P110392043084465591

namespace A088545

/-- `A103326(n+1)/5` -/
def P110392043084465591.Spec : Prop :=
  ∀ n, P110392043084465591.a n = (A088545 (n + 1) : ℚ)

theorem P110392043084465591.correct : P110392043084465591.Spec := by
  intro n
  simp only [A088545, Nat.add_sub_cancel, A088545.P110392043084465591.a, A088545.P14330016079546386706.a, A000045, A000045.P11838749114346432762.a, A103326, A103326.P15150555984287749825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088545

/-! ## A088545.P18204338748871380016

`A000045(5*(n+1))/(5*A000045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088545.P18204338748871380016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (5 * (n + 1)) : ℚ) / (5 * A000045 (n + 1) : ℚ)

end

end A088545.P18204338748871380016

namespace A088545

/-- `A000045(5*(n+1))/(5*A000045(n+1))` -/
def P18204338748871380016.Spec : Prop :=
  ∀ n, P18204338748871380016.a n = (A088545 (n + 1) : ℚ)

end A088545

/-! ## A088545.P8435355440153886610

`A059929(n)*A099921(n+1)+1`
-/

namespace A088545.P8435355440153886610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n * A099921 (n + 1) + 1

end

end A088545.P8435355440153886610

namespace A088545

/-- `A059929(n)*A099921(n+1)+1` -/
def P8435355440153886610.Spec : Prop :=
  ∀ n, P8435355440153886610.a n = A088545 (n + 1)

end A088545

/-! ## A088545.P48128158296770943

`A059929(2*n+1)-∑[A099496(n)]`
-/

namespace A088545.P48128158296770943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088545.P48128158296770943

namespace A088545

/-- `A059929(2*n+1)-∑[A099496(n)]` -/
def P48128158296770943.Spec : Prop :=
  ∀ n, P48128158296770943.a n = A088545 (n + 1)

end A088545

/-! ## A088545.P7043541328698137473

`A059929(2*n+1)+Δ[A119283(n)]`
-/

namespace A088545.P7043541328698137473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A088545.P7043541328698137473

namespace A088545

/-- `A059929(2*n+1)+Δ[A119283(n)]` -/
def P7043541328698137473.Spec : Prop :=
  ∀ n, P7043541328698137473.a n = A088545 (n + 1)

end A088545

/-! ## A088545.P317663371884527703

`5*∑[A000045(Δ[n²])*A001654(n)]+1`
-/

namespace A088545.P317663371884527703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat * A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A088545.P317663371884527703

namespace A088545

/-- `5*∑[A000045(Δ[n²])*A001654(n)]+1` -/
def P317663371884527703.Spec : Prop :=
  ∀ n, P317663371884527703.a n = A088545 (n + 1)

end A088545

/-! ## A088545.P5967693199504262473

`5*∑[Δ[A000045(2*n)]*A001654(n)]+1`
-/

namespace A088545.P5967693199504262473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A088545.P5967693199504262473

namespace A088545

/-- `5*∑[Δ[A000045(2*n)]*A001654(n)]+1` -/
def P5967693199504262473.Spec : Prop :=
  ∀ n, P5967693199504262473.a n = A088545 (n + 1)

end A088545

/-! ## A088545.P5511821247895781576

`A049666(n+1)/A000045(n+1)`
-/

namespace A088545.P5511821247895781576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049666 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A088545.P5511821247895781576

namespace A088545

/-- `A049666(n+1)/A000045(n+1)` -/
def P5511821247895781576.Spec : Prop :=
  ∀ n, P5511821247895781576.a n = (A088545 (n + 1) : ℚ)

end A088545

/-!
# A088546: Square root of sum of legs of primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse.

The programs for A088546, there is no canonical definition to state claims against.
-/

/-! ## A088546.P4958229791961414120

`sqrt(A089552(n+1))`
-/

namespace A088546.P4958229791961414120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089552 (n + 1) : ℝ)

end

end A088546.P4958229791961414120

/-! ## A088546.P14293538339034049993

`A089552(n+1)^(1/A001316(A001316(n)))`
-/

namespace A088546.P14293538339034049993
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℚ) : ℝ)

end

end A088546.P14293538339034049993

/-! ## A088546.P15999070718446903876

`A089552(n+1)^(A001511(A006257(n+1))/2)`
-/

namespace A088546.P15999070718446903876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) : ℝ) ^ ((A001511 (A006257 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A088546.P15999070718446903876

/-! ## A088546.P1045675789916674239

`A089552(n+1)^(A089555(n+1)/A088516(n+1))`
-/

namespace A088546.P1045675789916674239
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) : ℝ) ^ ((A089555 (n + 1) : ℚ) / (A088516 (n + 1) : ℚ) : ℝ)

end

end A088546.P1045675789916674239

/-! ## A088546.P18118864138576359713

`A089552(n+1)^(A089557(n+1)/A089546(n+1))`
-/

namespace A088546.P18118864138576359713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) : ℝ) ^ ((A089557 (n + 1) : ℚ) / (A089546 (n + 1) : ℚ) : ℝ)

end

end A088546.P18118864138576359713

/-! ## A088546.P18348589290311380545

`A089552(n+1)^(A089558(n+1)/A089551(n+1))`
-/

namespace A088546.P18348589290311380545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) : ℝ) ^ ((A089558 (n + 1) : ℚ) / (A089551 (n + 1) : ℚ) : ℝ)

end

end A088546.P18348589290311380545

/-!
# A088547: Primes of the form x^3+x^2+x+2.

The programs for A088547, there is no canonical definition to state claims against.
-/

/-! ## A088547.P14150848198597696031

`p?[(n+1)*(n²+1)+1]`
-/

namespace A088547.P14150848198597696031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 2 + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088547.P14150848198597696031

/-! ## A088547.P2315707709475181196

`record[p?[A188947(A106466(n))]]`
-/

namespace A088547.P2315707709475181196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188947 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088547.P2315707709475181196

/-! ## A088547.P10611255056352667408

`A326688(n)+p?[A188947(n+1)]`
-/

namespace A088547.P10611255056352667408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088547.P10611255056352667408

/-! ## A088547.P9512366727480250878

`∩[A188947(n+1), A214735(n+1)]`
-/

namespace A088547.P9512366727480250878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088547.P9512366727480250878

/-! ## A088547.P5851605274478909460

`∩[A002313(n+1), A188947(n+1)]`
-/

namespace A088547.P5851605274478909460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088547.P5851605274478909460

/-!
# A088548: Primes of the form k^4 + k^3 + k^2 + k + 1.

The programs for A088548, there is no canonical definition to state claims against.
-/

/-! ## A088548.P9907758222892908224

`∪[A190527(n+1), A193366(n+1)]`
-/

namespace A088548.P9907758222892908224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088548.P9907758222892908224

/-! ## A088548.P16599521817144609085

`A053699(A049409(n+1))`
-/

namespace A088548.P16599521817144609085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A049409 (n + 1)).toNat

end

end A088548.P16599521817144609085

/-! ## A088548.P9463752061037366859

`A027445(A049409(n+1))+A033999(n)²`
-/

namespace A088548.P9463752061037366859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A049409 (n + 1)).toNat + A033999 n ^ 2

end

end A088548.P9463752061037366859

/-! ## A088548.P10849616870750347837

`A027445(A049409(n+1))-A057428(n+1)`
-/

namespace A088548.P10849616870750347837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A049409 (n + 1)).toNat - A057428 (n + 1)

end

end A088548.P10849616870750347837

/-! ## A088548.P7237575594340992250

`A027445(A049409(n+1))-A057078(A016789(n))`
-/

namespace A088548.P7237575594340992250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A049409 (n + 1)).toNat - A057078 (A016789 n).toNat

end

end A088548.P7237575594340992250

/-! ## A088548.P8724721721633030834

`A027445(A049409(n+1))+A014963(A000217(n+6))`
-/

namespace A088548.P8724721721633030834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A049409 (n + 1)).toNat + A014963 (A000217 (n + 6)).toNat

end

end A088548.P8724721721633030834

/-! ## A088548.P8445902594435220227

`∩[A002649(n+1), A053699(n)]`
-/

namespace A088548.P8445902594435220227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088548.P8445902594435220227

/-! ## A088548.P7594357559182313894

`∩[A206864(n+1), A053699(n)]`
-/

namespace A088548.P7594357559182313894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088548.P7594357559182313894

/-!
# A088549: Primes of the form x^5 + x^4 + x^3 + x^2 + x + 2.

The programs for A088549, there is no canonical definition to state claims against.
-/

/-! ## A088549.P6048275329541569061

`p?[n*ceil((n+1)/acot(n)^3)+2]`
-/

namespace A088549.P6048275329541569061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088549.P6048275329541569061

/-!
# A088550: Primes of the form n^6 + n^5 + n^4 + n^3 + n^2 + n + 1.

The programs for A088550, there is no canonical definition to state claims against.
-/

/-! ## A088550.P5330531694541916186

`A053716(A100330(n+1))`
-/

namespace A088550.P5330531694541916186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A100330 (n + 1)).toNat

end

end A088550.P5330531694541916186

/-! ## A088550.P14848145104058141035

`record[A256146(n+1)]`
-/

namespace A088550.P14848145104058141035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088550.P14848145104058141035

/-! ## A088550.P5713362447539837062

`record[or(1, A256146(A028310(n)))]`
-/

namespace A088550.P5713362447539837062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256146 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088550.P5713362447539837062

/-! ## A088550.P10991378030195642724

`record[or(1, A256146(A106466(n)))]`
-/

namespace A088550.P10991378030195642724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256146 (A106466 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088550.P10991378030195642724

/-! ## A088550.P9661502243711491816

`record[or(1, A256146(A158416(n)))]`
-/

namespace A088550.P9661502243711491816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256146 (A158416 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088550.P9661502243711491816

/-!
# A088551: Fibonacci winding number: the number of 'mod n' operations in one cycle of the Fibonacci sequence modulo n.

The programs for A088551, there is no canonical definition to state claims against.
-/

/-! ## A088551.P10742238627217839936

`A214300(n+2)/(n+2)`
-/

namespace A088551.P10742238627217839936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214300 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A088551.P10742238627217839936

/-! ## A088551.P13868211245385042025

`(n+2)^A008683(A063535(n))*A214300(n+2)`
-/

namespace A088551.P13868211245385042025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ) * (A214300 (n + 2) : ℚ)

end

end A088551.P13868211245385042025

/-!
# A088553: Primes of the form (3^k-1)/2 or (3^k+1)/2.

The programs for A088553, there is no canonical definition to state claims against.
-/

/-! ## A088553.P16437583092313272657

`A111009(n%a(n-1))` with `a(0)=2`
-/

namespace A088553.P16437583092313272657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A111009 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A088553.P16437583092313272657

/-! ## A088553.P3427461384390271182

`A274909(A096723(n+1))`
-/

namespace A088553.P3427461384390271182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274909 (A096723 (n + 1)).toNat

end

end A088553.P3427461384390271182

/-! ## A088553.P1894687111366134971

`A274909(A007949(n+1)+A000983(n+1))`
-/

namespace A088553.P1894687111366134971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274909 (A007949 (n + 1) + A000983 (n + 1)).toNat

end

end A088553.P1894687111366134971

/-!
# A088554: Primes of the form (5^k-1)/4 or (5^k+3)/4.

The programs for A088554, there is no canonical definition to state claims against.
-/

/-! ## A088554.P13269677707668706011

`p?[∪[or(1, ∑[5^n]), 2*n]]`
-/

namespace A088554.P13269677707668706011
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088554.P13269677707668706011

/-! ## A088554.P14472510503225243720

`p?[A003463(n)+char[∏{p}[n, #]-1]]`
-/

namespace A088554.P14472510503225243720
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088554.P14472510503225243720

/-!
# A088555: Primes of the form 5*p + 6 where p is a prime.

The programs for A088555, the canonical program `A088555.P9450136171362117309` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088555 has offset 1).

The definition of A088555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023219, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088555.P9450136171362117309

`5*A023219(n+1)+6`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088555

/-- `5*A023219(n+1)+6` -/
def P9450136171362117309.Spec : Prop :=
  ∀ n, P9450136171362117309.a n = A088555 (n + 1)

theorem P9450136171362117309.correct : P9450136171362117309.Spec := by
  intro n
  simp only [A088555, Nat.add_sub_cancel]

end A088555

/-! ## A088555.P5356873052602590402

`p?[5*A008864(n+1)+1]`
-/

namespace A088555.P5356873052602590402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A008864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P5356873052602590402

namespace A088555

/-- `p?[5*A008864(n+1)+1]` -/
def P5356873052602590402.Spec : Prop :=
  ∀ n, P5356873052602590402.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P15306878800254812235

`p?[5*A000040(n+1)+6]`
-/

namespace A088555.P15306878800254812235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000040 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P15306878800254812235

namespace A088555

/-- `p?[5*A000040(n+1)+6]` -/
def P15306878800254812235.Spec : Prop :=
  ∀ n, P15306878800254812235.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P7758825082452613003

`p?[5*(A040976(n+2)+3)+1]`
-/

namespace A088555.P7758825082452613003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A040976 (n + 2) + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P7758825082452613003

namespace A088555

/-- `p?[5*(A040976(n+2)+3)+1]` -/
def P7758825082452613003.Spec : Prop :=
  ∀ n, P7758825082452613003.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P14471691273776916517

`p?[5*(record[A000010(n+1)]+2)+1]`
-/

namespace A088555.P14471691273776916517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P14471691273776916517

namespace A088555

/-- `p?[5*(record[A000010(n+1)]+2)+1]` -/
def P14471691273776916517.Spec : Prop :=
  ∀ n, P14471691273776916517.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P7729386231380063502

`p?[5*(record[A020639(n+4)]+1)+1]`
-/

namespace A088555.P7729386231380063502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P7729386231380063502

namespace A088555

/-- `p?[5*(record[A020639(n+4)]+1)+1]` -/
def P7729386231380063502.Spec : Prop :=
  ∀ n, P7729386231380063502.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P1555116342583838997

`p?[5*(p?[A039698(n+1)]+1)+1]`
-/

namespace A088555.P1555116342583838997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P1555116342583838997

namespace A088555

/-- `p?[5*(p?[A039698(n+1)]+1)+1]` -/
def P1555116342583838997.Spec : Prop :=
  ∀ n, P1555116342583838997.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P16939552782218672301

`p?[5*(p?[record[A351233(n)]]+1)+1]`
-/

namespace A088555.P16939552782218672301
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P16939552782218672301

namespace A088555

/-- `p?[5*(p?[record[A351233(n)]]+1)+1]` -/
def P16939552782218672301.Spec : Prop :=
  ∀ n, P16939552782218672301.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P4753596471137230729

`A000040(A088561(n+1))`
-/

namespace A088555.P4753596471137230729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088561 (n + 1)).toNat

end

end A088555.P4753596471137230729

namespace A088555

/-- `A000040(A088561(n+1))` -/
def P4753596471137230729.Spec : Prop :=
  ∀ n, P4753596471137230729.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P7121895884746175102

`p?[A005843(n)+A004769(n)*A101264(n)]`
-/

namespace A088555.P7121895884746175102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004769 n * A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P7121895884746175102

namespace A088555

/-- `p?[A005843(n)+A004769(n)*A101264(n)]` -/
def P7121895884746175102.Spec : Prop :=
  ∀ n, P7121895884746175102.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P9206658005390536351

`A340444(A090161(n+1))`
-/

namespace A088555.P9206658005390536351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340444 (A090161 (n + 1)).toNat

end

end A088555.P9206658005390536351

namespace A088555

/-- `A340444(A090161(n+1))` -/
def P9206658005390536351.Spec : Prop :=
  ∀ n, P9206658005390536351.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P8500082562631181093

`A340444(A000720(A023219(n+1)))`
-/

namespace A088555.P8500082562631181093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340444 (A000720 (A023219 (n + 1)).toNat).toNat

end

end A088555.P8500082562631181093

namespace A088555

/-- `A340444(A000720(A023219(n+1)))` -/
def P8500082562631181093.Spec : Prop :=
  ∀ n, P8500082562631181093.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P18064884991071818546

`p?[A016861(p?[2*n+1]+1)]`
-/

namespace A088555.P18064884991071818546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P18064884991071818546

namespace A088555

/-- `p?[A016861(p?[2*n+1]+1)]` -/
def P18064884991071818546.Spec : Prop :=
  ∀ n, P18064884991071818546.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P11899617307979690859

`p?[5*(p?[abs(n-A010690(n))]+1)+1]`
-/

namespace A088555.P11899617307979690859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A010690 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P11899617307979690859

namespace A088555

/-- `p?[5*(p?[abs(n-A010690(n))]+1)+1]` -/
def P11899617307979690859.Spec : Prop :=
  ∀ n, P11899617307979690859.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P12878563843589715596

`p?[A016861(A055672(n))]`
-/

namespace A088555.P12878563843589715596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A055672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P12878563843589715596

namespace A088555

/-- `p?[A016861(A055672(n))]` -/
def P12878563843589715596.Spec : Prop :=
  ∀ n, P12878563843589715596.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P4400407970281490125

`p?[A016861(A000040(n+1)+1)]`
-/

namespace A088555.P4400407970281490125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P4400407970281490125

namespace A088555

/-- `p?[A016861(A000040(n+1)+1)]` -/
def P4400407970281490125.Spec : Prop :=
  ∀ n, P4400407970281490125.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P9782857566308332882

`p?[A187715(A000040(n+1)+2)]`
-/

namespace A088555.P9782857566308332882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P9782857566308332882

namespace A088555

/-- `p?[A187715(A000040(n+1)+2)]` -/
def P9782857566308332882.Spec : Prop :=
  ∀ n, P9782857566308332882.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P17249675856808484922

`p?[A271508(A000040(n+1)+2)]`
-/

namespace A088555.P17249675856808484922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P17249675856808484922

namespace A088555

/-- `p?[A271508(A000040(n+1)+2)]` -/
def P17249675856808484922.Spec : Prop :=
  ∀ n, P17249675856808484922.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P7193561604222405341

`p?[A016897(A000040(n+2))+2]`
-/

namespace A088555.P7193561604222405341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A000040 (n + 2)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P7193561604222405341

namespace A088555

/-- `p?[A016897(A000040(n+2))+2]` -/
def P7193561604222405341.Spec : Prop :=
  ∀ n, P7193561604222405341.a n = A088555 (n + 1)

end A088555

/-! ## A088555.P3901556709179914964

`p?[A063097(A000040(n+2)+2)]`
-/

namespace A088555.P3901556709179914964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (A000040 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088555.P3901556709179914964

namespace A088555

/-- `p?[A063097(A000040(n+2)+2)]` -/
def P3901556709179914964.Spec : Prop :=
  ∀ n, P3901556709179914964.a n = A088555 (n + 1)

end A088555

/-!
# A088556: Numbers of the form (4^n + 4^(n-1) + ... + 1) + (n mod 2).

The programs for A088556, the canonical program `A088556.P8484587724628213640` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088556 has offset 1).

The definition of A088556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088556.P3845980106061352512

`ogf((6-3x-4x^2)/(1-4x-x^2+4x^3))`
-/

namespace A088556.P3845980106061352512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -4] [1, -4, -1, 4] n

end

end A088556.P3845980106061352512

namespace A088556

/-- `ogf((6-3x-4x^2)/(1-4x-x^2+4x^3))` -/
def P3845980106061352512.Spec : Prop :=
  ∀ n, P3845980106061352512.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P8484587724628213640

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=6, a(1)=21, a(2)=86`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088556

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P8484587724628213640.Spec : Prop :=
  ∀ n, P8484587724628213640.a n = A088556 (n + 1)

theorem P8484587724628213640.correct : P8484587724628213640.Spec := by
  intro n
  simp only [A088556, Nat.add_sub_cancel]

end A088556

/-! ## A088556.P5712463009322423533

`∑[ogf((-6+3x+4x^2)/(-1+3x+4x^2))]`
-/

namespace A088556.P5712463009322423533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -4] [1, -3, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088556.P5712463009322423533

namespace A088556

/-- `∑[ogf((-6+3x+4x^2)/(-1+3x+4x^2))]` -/
def P5712463009322423533.Spec : Prop :=
  ∀ n, P5712463009322423533.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P5640215012301106163

`abs(ceil((-4)^(n+2)/3))`
-/

namespace A088556.P5640215012301106163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈((-4) ^ (n + 2) : ℚ) / 3⌉|

end

end A088556.P5640215012301106163

namespace A088556

/-- `abs(ceil((-4)^(n+2)/3))` -/
def P5640215012301106163.Spec : Prop :=
  ∀ n, P5640215012301106163.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P15043076784871181076

`∑[4^(n+1)]+gcd(2, n)`
-/

namespace A088556.P15043076784871181076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 n

end

end A088556.P15043076784871181076

namespace A088556

/-- `∑[4^(n+1)]+gcd(2, n)` -/
def P15043076784871181076.Spec : Prop :=
  ∀ n, (P15043076784871181076.a n : ℤ) = A088556 (n + 1)

end A088556

/-! ## A088556.P18212877883419270369

`∑[4^(n+1)]+2-n%2`
-/

namespace A088556.P18212877883419270369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A088556.P18212877883419270369

namespace A088556

/-- `∑[4^(n+1)]+2-n%2` -/
def P18212877883419270369.Spec : Prop :=
  ∀ n, P18212877883419270369.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P8992865803614940988

`xor(3, a(n-1)+4^(n+1))` with `a(0)=6`
-/

namespace A088556.P8992865803614940988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.xor 3 (a (n - 1) + 4 ^ (n + 1))

end

end A088556.P8992865803614940988

namespace A088556

/-- `xor(3, a(n-1)+4^(n+1))` -/
def P8992865803614940988.Spec : Prop :=
  ∀ n, (P8992865803614940988.a n : ℤ) = A088556 (n + 1)

end A088556

/-! ## A088556.P4368332645498621335

`∑[4^(n+1)]+(n+1)%2+1`
-/

namespace A088556.P4368332645498621335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) % 2 + 1)

end

end A088556.P4368332645498621335

namespace A088556

/-- `∑[4^(n+1)]+(n+1)%2+1` -/
def P4368332645498621335.Spec : Prop :=
  ∀ n, (P4368332645498621335.a n : ℤ) = A088556 (n + 1)

end A088556

/-! ## A088556.P17002043192258423280

`∑[A247281(n+1)]+1`
-/

namespace A088556.P17002043192258423280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088556.P17002043192258423280

namespace A088556

/-- `∑[A247281(n+1)]+1` -/
def P17002043192258423280.Spec : Prop :=
  ∀ n, P17002043192258423280.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P17952341038165491185

`5*A033114(n+1)+1`
-/

namespace A088556.P17952341038165491185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033114 (n + 1) + 1

end

end A088556.P17952341038165491185

namespace A088556

/-- `5*A033114(n+1)+1` -/
def P17952341038165491185.Spec : Prop :=
  ∀ n, P17952341038165491185.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P6314555763109392510

`A002450(n+2)+char[2*n]`
-/

namespace A088556.P6314555763109392510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A088556.P6314555763109392510

namespace A088556

/-- `A002450(n+2)+char[2*n]` -/
def P6314555763109392510.Spec : Prop :=
  ∀ n, P6314555763109392510.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P7691817056140413725

`A176895(2*(n+1))+∑[4^(n+1)]`
-/

namespace A088556.P7691817056140413725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A088556.P7691817056140413725

namespace A088556

/-- `A176895(2*(n+1))+∑[4^(n+1)]` -/
def P7691817056140413725.Spec : Prop :=
  ∀ n, P7691817056140413725.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P5968652250879262030

`∑[A155559(n+1)²]+char[2*n]+1`
-/

namespace A088556.P5968652250879262030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A088556.P5968652250879262030

namespace A088556

/-- `∑[A155559(n+1)²]+char[2*n]+1` -/
def P5968652250879262030.Spec : Prop :=
  ∀ n, P5968652250879262030.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P8575500264396157373

`A059841(n)+record[2-2*a(n-1)]-1` with `a(0)=6`
-/

namespace A088556.P8575500264396157373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  2 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A088556.P8575500264396157373

namespace A088556

/-- `A059841(n)+record[2-2*a(n-1)]-1` -/
def P8575500264396157373.Spec : Prop :=
  ∀ n, P8575500264396157373.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P2961605118109380771

`A138587(A047615(n+2))`
-/

namespace A088556.P2961605118109380771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138587 (A047615 (n + 2)).toNat

end

end A088556.P2961605118109380771

namespace A088556

/-- `A138587(A047615(n+2))` -/
def P2961605118109380771.Spec : Prop :=
  ∀ n, P2961605118109380771.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P16864158016250060749

`A206373(n)+A140322(n)`
-/

namespace A088556.P16864158016250060749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206373 n + A140322 n

end

end A088556.P16864158016250060749

namespace A088556

/-- `A206373(n)+A140322(n)` -/
def P16864158016250060749.Spec : Prop :=
  ∀ n, P16864158016250060749.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P1909542731852987390

`A133684(A047524(n+2)+2)`
-/

namespace A088556.P1909542731852987390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047524 (n + 2) + 2).toNat

end

end A088556.P1909542731852987390

namespace A088556

/-- `A133684(A047524(n+2)+2)` -/
def P1909542731852987390.Spec : Prop :=
  ∀ n, P1909542731852987390.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P9239792709591093113

`A059841(n)+A002450(n+2)`
-/

namespace A088556.P9239792709591093113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A002450 (n + 2)

end

end A088556.P9239792709591093113

namespace A088556

/-- `A059841(n)+A002450(n+2)` -/
def P9239792709591093113.Spec : Prop :=
  ∀ n, P9239792709591093113.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P16744513086503829689

`A047849(n+2)-A000035(n)`
-/

namespace A088556.P16744513086503829689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 (n + 2) - A000035 n

end

end A088556.P16744513086503829689

namespace A088556

/-- `A047849(n+2)-A000035(n)` -/
def P16744513086503829689.Spec : Prop :=
  ∀ n, P16744513086503829689.a n = A088556 (n + 1)

end A088556

/-! ## A088556.P8858719575702479589

`A059841(n)+abs(A084241(n+2))`
-/

namespace A088556.P8858719575702479589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + |A084241 (n + 2)|

end

end A088556.P8858719575702479589

namespace A088556

/-- `A059841(n)+abs(A084241(n+2))` -/
def P8858719575702479589.Spec : Prop :=
  ∀ n, P8858719575702479589.a n = A088556 (n + 1)

end A088556

/-!
# A088557: Least even leg of primitive Pythagorean triangles with odd leg 2n+1.

The programs for A088557, there is no canonical definition to state claims against.
-/

/-! ## A088557.P8232169489478849650

`4*A096895(n+1)`
-/

namespace A088557.P8232169489478849650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A096895 (n + 1)

end

end A088557.P8232169489478849650

/-! ## A088557.P11447251643908580138

`A008574(A096895(n+1))`
-/

namespace A088557.P11447251643908580138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A096895 (n + 1)).toNat

end

end A088557.P11447251643908580138

/-! ## A088557.P12212077748090779854

`A008586(A096895(n+1)-1)+4`
-/

namespace A088557.P12212077748090779854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A096895 (n + 1) - 1).toNat + 4

end

end A088557.P12212077748090779854

/-! ## A088557.P1991904566034392619

`A008586(A096895(n+1)%A016938(n))`
-/

namespace A088557.P1991904566034392619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.tmod (A096895 (n + 1)) (A016938 n)).toNat

end

end A088557.P1991904566034392619

/-! ## A088557.P12820635341504911620

`A008586(A096895(n+1))%A016946(n)`
-/

namespace A088557.P12820635341504911620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A096895 (n + 1)).toNat) (A016946 n)

end

end A088557.P12820635341504911620

/-! ## A088557.P9595298563344759018

`lcm(A000034(n), A008586(A096895(n+1)))`
-/

namespace A088557.P9595298563344759018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A008586 (A096895 (n + 1)).toNat)

end

end A088557.P9595298563344759018

/-! ## A088557.P5252740593037487406

`A008586(or(A000007(n), A096895(n+1)))`
-/

namespace A088557.P5252740593037487406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.lor (A000007 n) (A096895 (n + 1))).toNat

end

end A088557.P5252740593037487406

/-!
# A088558: Least odd leg of primitive Pythagorean triangles with even leg 4n.

The programs for A088558, there is no canonical definition to state claims against.
-/

/-! ## A088558.P17606674659164124116

`A354933(2*(n+1))²-A052128(2*(n+1))²`
-/

namespace A088558.P17606674659164124116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (2 * (n + 1)) ^ 2 - A052128 (2 * (n + 1)) ^ 2

end

end A088558.P17606674659164124116

/-! ## A088558.P4932948376822486481

`2*A096900(n+1)+1`
-/

namespace A088558.P4932948376822486481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096900 (n + 1) + 1

end

end A088558.P4932948376822486481

/-! ## A088558.P551119284681945910

`A005408(A096900(n+1))`
-/

namespace A088558.P551119284681945910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A096900 (n + 1)).toNat

end

end A088558.P551119284681945910

/-! ## A088558.P2555121333710304766

`A004273(A096900(n+1)+1)`
-/

namespace A088558.P2555121333710304766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A096900 (n + 1) + 1).toNat

end

end A088558.P2555121333710304766

/-! ## A088558.P1556629058233681445

`A004274(A096900(n+1)+2)`
-/

namespace A088558.P1556629058233681445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A096900 (n + 1) + 2).toNat

end

end A088558.P1556629058233681445

/-! ## A088558.P16819134140786804230

`A004280(A096900(n+1)+2)`
-/

namespace A088558.P16819134140786804230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A096900 (n + 1) + 2).toNat

end

end A088558.P16819134140786804230

/-! ## A088558.P14172765140770670456

`A004442(2*A096900(n+1))`
-/

namespace A088558.P14172765140770670456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A096900 (n + 1)).toNat

end

end A088558.P14172765140770670456

/-! ## A088558.P8674356483581703854

`A065475(2*A096900(n+1))`
-/

namespace A088558.P8674356483581703854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (2 * A096900 (n + 1)).toNat

end

end A088558.P8674356483581703854

/-! ## A088558.P1124431661296012228

`A131738(2*A096900(n+1))`
-/

namespace A088558.P1124431661296012228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (2 * A096900 (n + 1)).toNat

end

end A088558.P1124431661296012228

/-!
# A088559: Decimal expansion of R^2 where R^2 is the real root of x^3 + 2*x^2 + x - 1 = 0.

The programs for A088559, there is no canonical definition to state claims against.
-/

/-! ## A088559.P10917102578860838069

`A092526(n+1)`
-/

namespace A088559.P10917102578860838069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092526 (n + 1 + 1)

end

end A088559.P10917102578860838069

/-! ## A088559.P7792599120886437453

`A092526(n)-Δ[-A092526(n)]`
-/

namespace A088559.P7792599120886437453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A092526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092526 (n + 1) - (f1 (n + 1) - f1 n)

end

end A088559.P7792599120886437453

/-! ## A088559.P17477879273082328423

`dr(A092526(A008619(2*n)))`
-/

namespace A088559.P17477879273082328423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A092526 ((A008619 (2 * n)).toNat + 1))

end

end A088559.P17477879273082328423

/-! ## A088559.P3541742031242750199

`dr(A092526(A028242(2*n)))`
-/

namespace A088559.P3541742031242750199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A092526 ((A028242 (2 * n)).toNat + 1))

end

end A088559.P3541742031242750199

/-!
# A088560: Sum of odd entries in row n of Pascal's triangle.

The programs for A088560, there is no canonical definition to state claims against.
-/

/-! ## A088560.P18130802947892663242

`A088504(n)-A085814(n)`
-/

namespace A088560.P18130802947892663242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088504 n - A085814 n

end

end A088560.P18130802947892663242

/-! ## A088560.P446300759919985360

`(A000079(n)-A085814(n))/2`
-/

namespace A088560.P446300759919985360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A085814 n : ℚ) / 2

end

end A088560.P446300759919985360

/-! ## A088560.P18184661859268086208

`(Δ[A000225(n)]-A085814(n))/2`
-/

namespace A088560.P18184661859268086208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A085814 n : ℚ) / 2

end

end A088560.P18184661859268086208

/-! ## A088560.P12161310794164325464

`2^n-A088504(n)`
-/

namespace A088560.P12161310794164325464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088504 n

end

end A088560.P12161310794164325464

/-! ## A088560.P11129214066681660679

`A309776(A001317(n))`
-/

namespace A088560.P11129214066681660679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (A001317 n).toNat

end

end A088560.P11129214066681660679

/-!
# A088561: A088555 indexed by A000040.

The programs for A088561, the canonical program `A088561.P14627225396330756799` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088561 has offset 1).

The definition of A088561 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088561.P14627225396330756799

`A000720(A088555(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088561

/-- `A000720(A088555(n+1))` -/
def P14627225396330756799.Spec : Prop :=
  ∀ n, P14627225396330756799.a n = A088561 (n + 1)

theorem P14627225396330756799.correct : P14627225396330756799.Spec := by
  intro n
  simp only [A088561, Nat.add_sub_cancel]

end A088561

/-! ## A088561.P13906544569755470677

`A061395(2*A088555(n+1))`
-/

namespace A088561.P13906544569755470677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A088555 (n + 1)).toNat

end

end A088561.P13906544569755470677

namespace A088561

/-- `A061395(2*A088555(n+1))` -/
def P13906544569755470677.Spec : Prop :=
  ∀ n, P13906544569755470677.a n = A088561 (n + 1)

end A088561

/-! ## A088561.P15443801931741258414

`A204892(A088555(n+1)-2)`
-/

namespace A088561.P15443801931741258414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A088555 (n + 1) - 2).toNat

end

end A088561.P15443801931741258414

namespace A088561

/-- `A204892(A088555(n+1)-2)` -/
def P15443801931741258414.Spec : Prop :=
  ∀ n, P15443801931741258414.a n = A088561 (n + 1)

end A088561

/-! ## A088561.P11484811236727652205

`A056239(or(1, A088555(n+1)))`
-/

namespace A088561.P11484811236727652205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A088555 (n + 1))).toNat

end

end A088561.P11484811236727652205

namespace A088561

/-- `A056239(or(1, A088555(n+1)))` -/
def P11484811236727652205.Spec : Prop :=
  ∀ n, P11484811236727652205.a n = A088561 (n + 1)

end A088561

/-! ## A088561.P16900673478087963660

`∑{d}[A088555(n+1), A056239(#)]`
-/

namespace A088561.P16900673478087963660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A088561.P16900673478087963660

namespace A088561

/-- `∑{d}[A088555(n+1), A056239(#)]` -/
def P16900673478087963660.Spec : Prop :=
  ∀ n, P16900673478087963660.a n = A088561 (n + 1)

end A088561

/-!
# A088562: Palindromic primes using at most two distinct digits.

The programs for A088562, there is no canonical definition to state claims against.
-/

/-! ## A088562.P17279770909856194001

`∩[A002385(n+1), A030291(n+1)]`
-/

namespace A088562.P17279770909856194001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P17279770909856194001

/-! ## A088562.P6134407185949546271

`∩[A030291(n+1), A324989(n+1)]`
-/

namespace A088562.P6134407185949546271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P6134407185949546271

/-! ## A088562.P7507148844441941864

`∩[A030291(n+1), A327325(n+1)]`
-/

namespace A088562.P7507148844441941864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P7507148844441941864

/-! ## A088562.P15542616762784888184

`∩[A030291(n+1), A340252(n+1)]`
-/

namespace A088562.P15542616762784888184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P15542616762784888184

/-! ## A088562.P9901671393518647737

`∩[A030291(n+1), A363246(n+1)]`
-/

namespace A088562.P9901671393518647737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P9901671393518647737

/-! ## A088562.P6500805889393205652

`∩[A030291(n+1), A188650(n+1)]`
-/

namespace A088562.P6500805889393205652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P6500805889393205652

/-! ## A088562.P13356032523742626727

`∩[A030291(n+1), A062687(n+1)]`
-/

namespace A088562.P13356032523742626727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P13356032523742626727

/-! ## A088562.P11715114611029607806

`∩[A030291(n+1), A083137(n+1)]`
-/

namespace A088562.P11715114611029607806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P11715114611029607806

/-! ## A088562.P2482293763770376712

`∩[A030291(n+1), A072299(n+1)]`
-/

namespace A088562.P2482293763770376712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P2482293763770376712

/-! ## A088562.P5160590472585975998

`∩[A030291(n+1), A080716(n+1)]`
-/

namespace A088562.P5160590472585975998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P5160590472585975998

/-! ## A088562.P16537166362534044268

`∩[A030291(n+1), A265641(n+1)]`
-/

namespace A088562.P16537166362534044268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P16537166362534044268

/-! ## A088562.P10740305519048308002

`∩[A030291(n+1), A169829(n+1)]`
-/

namespace A088562.P10740305519048308002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P10740305519048308002

/-! ## A088562.P13074039488212450384

`∩[A030291(n+1), A084092(n+1)]`
-/

namespace A088562.P13074039488212450384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P13074039488212450384

/-! ## A088562.P13266259095593883241

`∩[A030291(n+1), A394545(n+1)]`
-/

namespace A088562.P13266259095593883241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P13266259095593883241

/-! ## A088562.P15201584529611403999

`∩[A030291(n+1), A075800(n+1)]`
-/

namespace A088562.P15201584529611403999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P15201584529611403999

/-! ## A088562.P1467673621932155573

`∩[A030291(n+1), A350836(n+1)]`
-/

namespace A088562.P1467673621932155573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P1467673621932155573

/-! ## A088562.P16765483269896827706

`∩[A030291(n+1), A083136(n+1)]`
-/

namespace A088562.P16765483269896827706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088562.P16765483269896827706

/-!
# A088563: Primes p such that the p-th digit in the decimal expansion of Pi is 0.

The programs for A088563, there is no canonical definition to state claims against.
-/

/-! ## A088563.P16595857105544908373

`p?[A037008(n+1)+1]`
-/

namespace A088563.P16595857105544908373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088563.P16595857105544908373

/-! ## A088563.P13604372298166216583

`p?[xor(1, A037008(n-log2(1/2)))]`
-/

namespace A088563.P13604372298166216583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A037008 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088563.P13604372298166216583

/-! ## A088563.P13246425390367366078

`p?[A014976(n+1)]`
-/

namespace A088563.P13246425390367366078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088563.P13246425390367366078

/-! ## A088563.P8253376416668400604

`filter[A014976(n+1), A010051(#)]`
-/

namespace A088563.P8253376416668400604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088563.P8253376416668400604

/-! ## A088563.P15156696128227212817

`filter[A014976(n+1), A323152(#)]`
-/

namespace A088563.P15156696128227212817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A088563.P15156696128227212817

/-! ## A088563.P2705891771102959830

`filter[A014976(n+1), A323153(#)]`
-/

namespace A088563.P2705891771102959830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A088563.P2705891771102959830

/-! ## A088563.P10178903800882696984

`filter[A014976(n+1), A351957(#)]`
-/

namespace A088563.P10178903800882696984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A088563.P10178903800882696984

/-! ## A088563.P3490396547918497724

`∩[A000040(n+1), A014976(n+1)]`
-/

namespace A088563.P3490396547918497724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P3490396547918497724

/-! ## A088563.P1707688059563218562

`∩[A004139(n+1), A014976(n+1)]`
-/

namespace A088563.P1707688059563218562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P1707688059563218562

/-! ## A088563.P14801936280439931215

`∩[A006005(n+1), A014976(n+1)]`
-/

namespace A088563.P14801936280439931215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P14801936280439931215

/-! ## A088563.P15018249674593736324

`∩[A008578(n+1), A014976(n+1)]`
-/

namespace A088563.P15018249674593736324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P15018249674593736324

/-! ## A088563.P7502083311075909220

`∩[A014976(n+1), A033946(n+1)]`
-/

namespace A088563.P7502083311075909220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P7502083311075909220

/-! ## A088563.P3488149122797719558

`∩[A014976(n+1), A045319(n+1)]`
-/

namespace A088563.P3488149122797719558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P3488149122797719558

/-! ## A088563.P3142453327691150619

`∩[A014976(n+1), A045344(n+1)]`
-/

namespace A088563.P3142453327691150619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P3142453327691150619

/-! ## A088563.P6812693494907030636

`∩[A014976(n+1), A046022(n+1)]`
-/

namespace A088563.P6812693494907030636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P6812693494907030636

/-! ## A088563.P14299083046696371693

`∩[A014976(n+1), A051948(n+1)]`
-/

namespace A088563.P14299083046696371693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P14299083046696371693

/-! ## A088563.P6774695210152647808

`∩[A014976(n+1), A053813(n+1)]`
-/

namespace A088563.P6774695210152647808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P6774695210152647808

/-! ## A088563.P18382256538067180429

`∩[A014976(n+1), A065091(n+1)]`
-/

namespace A088563.P18382256538067180429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P18382256538067180429

/-! ## A088563.P16605232444080456036

`∩[A014976(n+1), A065376(n+1)]`
-/

namespace A088563.P16605232444080456036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P16605232444080456036

/-! ## A088563.P455798524268424414

`∩[A014976(n+1), A065396(n+1)]`
-/

namespace A088563.P455798524268424414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088563.P455798524268424414

/-!
# A088564: a(n)=sum(i=0,n,binomial(2*i,i) (mod 3)).

The programs for A088564, the canonical program `A088564.P14174446094713810600` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088564 has offset 0).

The definition of A088564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088564.P14174446094713810600

`∑[((n+1)*a(floor(n/3)))%3]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088564

/-- `∑[((n+1)*a(floor(n/3)))%3]` -/
def P14174446094713810600.Spec : Prop :=
  ∀ n, (P14174446094713810600.a n : ℤ) = A088564 n

theorem P14174446094713810600.correct : P14174446094713810600.Spec := by
  intro n
  simp only [A088564]

end A088564

/-! ## A088564.P15276407985730155859

`∑[(a(n-1)+a(floor(n/3)))%3]` with `a(0)=1`
-/

namespace A088564.P15276407985730155859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + f1 ⌊(n : ℚ) / 3⌋.toNat) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P15276407985730155859

namespace A088564

/-- `∑[(a(n-1)+a(floor(n/3)))%3]` -/
def P15276407985730155859.Spec : Prop :=
  ∀ n, (P15276407985730155859.a n : ℤ) = A088564 n

end A088564

/-! ## A088564.P8012931946551589818

`∑[A006996(n)]`
-/

namespace A088564.P8012931946551589818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P8012931946551589818

namespace A088564

/-- `∑[A006996(n)]` -/
def P8012931946551589818.Spec : Prop :=
  ∀ n, P8012931946551589818.a n = A088564 n

end A088564

/-! ## A088564.P2869874950602079217

`∑[A005704(n)%3]`
-/

namespace A088564.P2869874950602079217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005704 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P2869874950602079217

namespace A088564

/-- `∑[A005704(n)%3]` -/
def P2869874950602079217.Spec : Prop :=
  ∀ n, P2869874950602079217.a n = A088564 n

end A088564

/-! ## A088564.P11552582307951135217

`∑[A006047(n)%3]`
-/

namespace A088564.P11552582307951135217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006047 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P11552582307951135217

namespace A088564

/-- `∑[A006047(n)%3]` -/
def P11552582307951135217.Spec : Prop :=
  ∀ n, P11552582307951135217.a n = A088564 n

end A088564

/-! ## A088564.P18211316284984062112

`∑[A151668(n)%3]`
-/

namespace A088564.P18211316284984062112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151668 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P18211316284984062112

namespace A088564

/-- `∑[A151668(n)%3]` -/
def P18211316284984062112.Spec : Prop :=
  ∀ n, P18211316284984062112.a n = A088564 n

end A088564

/-! ## A088564.P573244025568848608

`A026430(A081611(n))`
-/

namespace A088564.P573244025568848608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A081611 n).toNat

end

end A088564.P573244025568848608

namespace A088564

/-- `A026430(A081611(n))` -/
def P573244025568848608.Spec : Prop :=
  ∀ n, P573244025568848608.a n = A088564 n

end A088564

/-! ## A088564.P13666230394089167330

`∑[A010872(A006047(n))]`
-/

namespace A088564.P13666230394089167330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P13666230394089167330

namespace A088564

/-- `∑[A010872(A006047(n))]` -/
def P13666230394089167330.Spec : Prop :=
  ∀ n, P13666230394089167330.a n = A088564 n

end A088564

/-! ## A088564.P18090905701240721622

`∑[A096271(A120879(n))]`
-/

namespace A088564.P18090905701240721622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A120879 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P18090905701240721622

namespace A088564

/-- `∑[A096271(A120879(n))]` -/
def P18090905701240721622.Spec : Prop :=
  ∀ n, P18090905701240721622.a n = A088564 n

end A088564

/-! ## A088564.P11193779655169995945

`∑[A039969(3*n)]`
-/

namespace A088564.P11193779655169995945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P11193779655169995945

namespace A088564

/-- `∑[A039969(3*n)]` -/
def P11193779655169995945.Spec : Prop :=
  ∀ n, P11193779655169995945.a n = A088564 n

end A088564

/-! ## A088564.P15910457795512749819

`∑[A039972(2*n+1)]`
-/

namespace A088564.P15910457795512749819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039972 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P15910457795512749819

namespace A088564

/-- `∑[A039972(2*n+1)]` -/
def P15910457795512749819.Spec : Prop :=
  ∀ n, P15910457795512749819.a n = A088564 n

end A088564

/-! ## A088564.P6444856465807637441

`A039972(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A088564.P6444856465807637441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039972 (2 * n) + a (n - 1)

end

end A088564.P6444856465807637441

namespace A088564

/-- `A039972(2*n)+a(n-1)` -/
def P6444856465807637441.Spec : Prop :=
  ∀ n, P6444856465807637441.a n = A088564 n

end A088564

/-! ## A088564.P6771328755651016096

`∑[A039971(2*n+1)]`
-/

namespace A088564.P6771328755651016096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039971 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P6771328755651016096

namespace A088564

/-- `∑[A039971(2*n+1)]` -/
def P6771328755651016096.Spec : Prop :=
  ∀ n, P6771328755651016096.a n = A088564 n

end A088564

/-! ## A088564.P4323184165744037878

`∑[A039968(2*n+1+n)]`
-/

namespace A088564.P4323184165744037878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P4323184165744037878

namespace A088564

/-- `∑[A039968(2*n+1+n)]` -/
def P4323184165744037878.Spec : Prop :=
  ∀ n, P4323184165744037878.a n = A088564 n

end A088564

/-! ## A088564.P5939279674910958204

`∑[A000984(n)%3]`
-/

namespace A088564.P5939279674910958204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P5939279674910958204

namespace A088564

/-- `∑[A000984(n)%3]` -/
def P5939279674910958204.Spec : Prop :=
  ∀ n, P5939279674910958204.a n = A088564 n

end A088564

/-! ## A088564.P14251226568753687404

`∑[((n+1)*A000108(n))%3]`
-/

namespace A088564.P14251226568753687404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000108 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P14251226568753687404

namespace A088564

/-- `∑[((n+1)*A000108(n))%3]` -/
def P14251226568753687404.Spec : Prop :=
  ∀ n, P14251226568753687404.a n = A088564 n

end A088564

/-! ## A088564.P13768389539721173340

`∑[(A088218(n)+record[A138364(n)])%3]`
-/

namespace A088564.P13768389539721173340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P13768389539721173340

namespace A088564

/-- `∑[(A088218(n)+record[A138364(n)])%3]` -/
def P13768389539721173340.Spec : Prop :=
  ∀ n, P13768389539721173340.a n = A088564 n

end A088564

/-! ## A088564.P7918093146546477894

`∑[((n+1)*(A263986(n)+A000045(n)))%3]`
-/

namespace A088564.P7918093146546477894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * (A263986 n + A000045 n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P7918093146546477894

namespace A088564

/-- `∑[((n+1)*(A263986(n)+A000045(n)))%3]` -/
def P7918093146546477894.Spec : Prop :=
  ∀ n, P7918093146546477894.a n = A088564 n

end A088564

/-! ## A088564.P10254987757992096705

`∑[((n+1)*(A263986(n)+A212804(n+1)))%3]`
-/

namespace A088564.P10254987757992096705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * (A263986 n + A212804 (n + 1))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088564.P10254987757992096705

namespace A088564

/-- `∑[((n+1)*(A263986(n)+A212804(n+1)))%3]` -/
def P10254987757992096705.Spec : Prop :=
  ∀ n, P10254987757992096705.a n = A088564 n

end A088564

/-!
# A088565: Primes p such that the p-th digit in the decimal expansion of Pi is 1.

The programs for A088565, there is no canonical definition to state claims against.
-/

/-! ## A088565.P568670957156834911

`p?[A037000(n+1)+1]`
-/

namespace A088565.P568670957156834911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088565.P568670957156834911

/-! ## A088565.P14114163050046332394

`record[A020639(A037000(n+1)+1)]`
-/

namespace A088565.P14114163050046332394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037000 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088565.P14114163050046332394

/-! ## A088565.P17387984357512369877

`p?[A053745(n+1)]`
-/

namespace A088565.P17387984357512369877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088565.P17387984357512369877

/-! ## A088565.P14022885143968232074

`record[A020639(A053745(n+2))]`
-/

namespace A088565.P14022885143968232074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053745 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088565.P14022885143968232074

/-! ## A088565.P8976023721226330207

`filter[A053745(n+1), A010051(#)]`
-/

namespace A088565.P8976023721226330207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088565.P8976023721226330207

/-! ## A088565.P14640113346407591645

`∩[A000040(n+1), A053745(n+1)]`
-/

namespace A088565.P14640113346407591645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P14640113346407591645

/-! ## A088565.P15316588419573913018

`∩[A008578(n+1), A053745(n+1)]`
-/

namespace A088565.P15316588419573913018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P15316588419573913018

/-! ## A088565.P309517441215403590

`∩[A033946(n+1), A053745(n+1)]`
-/

namespace A088565.P309517441215403590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P309517441215403590

/-! ## A088565.P4881628938385901999

`∩[A045319(n+1), A053745(n+1)]`
-/

namespace A088565.P4881628938385901999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P4881628938385901999

/-! ## A088565.P14472057534487743260

`∩[A045344(n+1), A053745(n+1)]`
-/

namespace A088565.P14472057534487743260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P14472057534487743260

/-! ## A088565.P9036729546158771661

`∩[A053745(n+1), A070957(n+1)]`
-/

namespace A088565.P9036729546158771661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P9036729546158771661

/-! ## A088565.P14094687879468945504

`∩[A053745(n+1), A106118(n+1)]`
-/

namespace A088565.P14094687879468945504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P14094687879468945504

/-! ## A088565.P16459458820355086551

`∩[A053745(n+1), A116974(n+1)]`
-/

namespace A088565.P16459458820355086551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P16459458820355086551

/-! ## A088565.P1355604691242821486

`∩[A053745(n+1), A138837(n+1)]`
-/

namespace A088565.P1355604691242821486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P1355604691242821486

/-! ## A088565.P12833220314489489489

`∩[A053745(n+1), A158611(n+1)]`
-/

namespace A088565.P12833220314489489489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P12833220314489489489

/-! ## A088565.P6588506756152969842

`∩[A053745(n+1), A182986(n+1)]`
-/

namespace A088565.P6588506756152969842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P6588506756152969842

/-! ## A088565.P17896143550010194296

`∩[A053745(n+1), A189710(n+1)]`
-/

namespace A088565.P17896143550010194296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P17896143550010194296

/-! ## A088565.P3198329612275810341

`∩[A053745(n+1), A197636(n+1)]`
-/

namespace A088565.P3198329612275810341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P3198329612275810341

/-! ## A088565.P14048969127121750267

`∩[A053745(n+1), A261123(n+1)]`
-/

namespace A088565.P14048969127121750267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P14048969127121750267

/-! ## A088565.P2120614117216081086

`∩[A326715(n+1), A053745(n+1)]`
-/

namespace A088565.P2120614117216081086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088565.P2120614117216081086

/-!
# A088566: Primes p such that the p-th digit in the decimal expansion of Pi is 2.

The programs for A088566, there is no canonical definition to state claims against.
-/

/-! ## A088566.P957250278650444734

`p?[A037001(n+1)+1]`
-/

namespace A088566.P957250278650444734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088566.P957250278650444734

/-! ## A088566.P9548931780983032139

`record[A020639(A037001(n+1)+1)]`
-/

namespace A088566.P9548931780983032139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037001 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088566.P9548931780983032139

/-! ## A088566.P12012024875867179479

`p?[A053746(n+1)]`
-/

namespace A088566.P12012024875867179479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088566.P12012024875867179479

/-! ## A088566.P18270216940450595404

`filter[A053746(n+1), A010051(#)]`
-/

namespace A088566.P18270216940450595404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088566.P18270216940450595404

/-! ## A088566.P10884095764709504712

`filter[A053746(n+1), A323152(#)]`
-/

namespace A088566.P10884095764709504712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A088566.P10884095764709504712

/-! ## A088566.P4073316127114652196

`filter[A053746(n+1), A323153(#)]`
-/

namespace A088566.P4073316127114652196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A088566.P4073316127114652196

/-! ## A088566.P3047465976345726649

`filter[A053746(n+1), A353817(#)]`
-/

namespace A088566.P3047465976345726649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A088566.P3047465976345726649

/-! ## A088566.P13935501925669382519

`∩[A000040(n+1), A053746(n+1)]`
-/

namespace A088566.P13935501925669382519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P13935501925669382519

/-! ## A088566.P3261313982259591590

`∩[A004139(n+1), A053746(n+1)]`
-/

namespace A088566.P3261313982259591590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P3261313982259591590

/-! ## A088566.P7999484860985617439

`∩[A006005(n+1), A053746(n+1)]`
-/

namespace A088566.P7999484860985617439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P7999484860985617439

/-! ## A088566.P5844778396329141196

`∩[A008578(n+1), A053746(n+1)]`
-/

namespace A088566.P5844778396329141196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P5844778396329141196

/-! ## A088566.P17623710049429412632

`∩[A033946(n+1), A053746(n+1)]`
-/

namespace A088566.P17623710049429412632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P17623710049429412632

/-! ## A088566.P8332802656001289869

`∩[A045319(n+1), A053746(n+1)]`
-/

namespace A088566.P8332802656001289869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P8332802656001289869

/-! ## A088566.P18080838315891445797

`∩[A045344(n+1), A053746(n+1)]`
-/

namespace A088566.P18080838315891445797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P18080838315891445797

/-! ## A088566.P1180135490646534806

`∩[A046022(n+1), A053746(n+1)]`
-/

namespace A088566.P1180135490646534806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P1180135490646534806

/-! ## A088566.P2429352208975412180

`∩[A053746(n+1), A053813(n+1)]`
-/

namespace A088566.P2429352208975412180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P2429352208975412180

/-! ## A088566.P12470108110149149303

`∩[A053746(n+1), A062972(n+1)]`
-/

namespace A088566.P12470108110149149303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P12470108110149149303

/-! ## A088566.P13379343944597745989

`∩[A053746(n+1), A064728(n+1)]`
-/

namespace A088566.P13379343944597745989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P13379343944597745989

/-! ## A088566.P13274191682686572607

`∩[A053746(n+1), A065091(n+1)]`
-/

namespace A088566.P13274191682686572607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P13274191682686572607

/-! ## A088566.P4073952866514129528

`∩[A053746(n+1), A065376(n+1)]`
-/

namespace A088566.P4073952866514129528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088566.P4073952866514129528

/-!
# A088567: Number of "non-squashing" partitions of n into distinct parts.

The programs for A088567, the canonical program `A088567.P12410704258799709771` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088567 has offset 0).

The definition of A088567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088567.P12410704258799709771

`a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088567

/-- `a(n-2)+a(floor(n/2))` -/
def P12410704258799709771.Spec : Prop :=
  ∀ n, (P12410704258799709771.a n : ℤ) = A088567 n

theorem P12410704258799709771.correct : P12410704258799709771.Spec := by
  intro n
  simp only [A088567]

end A088567

/-! ## A088567.P16337536952054330085

`abs(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A088567.P16337536952054330085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088567.P16337536952054330085

namespace A088567

/-- `abs(a(n-2)+a(and(n, -2)/2))` -/
def P16337536952054330085.Spec : Prop :=
  ∀ n, (P16337536952054330085.a n : ℤ) = A088567 n

end A088567

/-! ## A088567.P2794543633342970139

`ceil(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A088567.P2794543633342970139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088567.P2794543633342970139

namespace A088567

/-- `ceil(a(n-2)+a(and(n, -2)/2))` -/
def P2794543633342970139.Spec : Prop :=
  ∀ n, (P2794543633342970139.a n : ℤ) = A088567 n

end A088567

/-! ## A088567.P7172997669598695142

`round(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A088567.P7172997669598695142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088567.P7172997669598695142

namespace A088567

/-- `round(a(n-2)+a(and(n, -2)/2))` -/
def P7172997669598695142.Spec : Prop :=
  ∀ n, (P7172997669598695142.a n : ℤ) = A088567 n

end A088567

/-! ## A088567.P13050607998661463628

`A242634(C(2, n+2)+n)`
-/

namespace A088567.P13050607998661463628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (Nat.choose 2 (n + 2) + n)

end

end A088567.P13050607998661463628

namespace A088567

/-- `A242634(C(2, n+2)+n)` -/
def P13050607998661463628.Spec : Prop :=
  ∀ n, P13050607998661463628.a n = A088567 n

end A088567

/-! ## A088567.P9978357165467617432

`floor(A242634(n)+a(n-1))-a(n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A088567.P9978357165467617432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242634 n + a (n - 1) - a (n - 1)

end

end A088567.P9978357165467617432

namespace A088567

/-- `floor(A242634(n)+a(n-1))-a(n-1)` -/
def P9978357165467617432.Spec : Prop :=
  ∀ n, P9978357165467617432.a n = A088567 n

end A088567

/-! ## A088567.P1987152601112127971

`A242634(n-(floor(a(n-1))-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A088567.P1987152601112127971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242634 ((n : ℤ) - (a (n - 1) - a (n - 1))).toNat

end

end A088567.P1987152601112127971

namespace A088567

/-- `A242634(n-(floor(a(n-1))-a(n-1)))` -/
def P1987152601112127971.Spec : Prop :=
  ∀ n, P1987152601112127971.a n = A088567 n

end A088567

/-! ## A088567.P63449597639133387

`A242634(A028310(n))`
-/

namespace A088567.P63449597639133387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A028310 n).toNat

end

end A088567.P63449597639133387

namespace A088567

/-- `A242634(A028310(n))` -/
def P63449597639133387.Spec : Prop :=
  ∀ n, P63449597639133387.a n = A088567 n

end A088567

/-! ## A088567.P14003533763293400624

`A242634(A000007(n)+n)`
-/

namespace A088567.P14003533763293400624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A000007 n + (n : ℤ)).toNat

end

end A088567.P14003533763293400624

namespace A088567

/-- `A242634(A000007(n)+n)` -/
def P14003533763293400624.Spec : Prop :=
  ∀ n, P14003533763293400624.a n = A088567 n

end A088567

/-! ## A088567.P2699699901068320933

`A242634(xor(n, A000007(n)))`
-/

namespace A088567.P2699699901068320933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A088567.P2699699901068320933

namespace A088567

/-- `A242634(xor(n, A000007(n)))` -/
def P2699699901068320933.Spec : Prop :=
  ∀ n, P2699699901068320933.a n = A088567 n

end A088567

/-! ## A088567.P18185710531603744457

`A242634(char[A242619(n)]+n)`
-/

namespace A088567.P18185710531603744457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242619 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A088567.P18185710531603744457

namespace A088567

/-- `A242634(char[A242619(n)]+n)` -/
def P18185710531603744457.Spec : Prop :=
  ∀ n, P18185710531603744457.a n = A088567 n

end A088567

/-! ## A088567.P7947500575291973565

`A242634(char[A242620(n)]+n)`
-/

namespace A088567.P7947500575291973565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242620 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A088567.P7947500575291973565

namespace A088567

/-- `A242634(char[A242620(n)]+n)` -/
def P7947500575291973565.Spec : Prop :=
  ∀ n, P7947500575291973565.a n = A088567 n

end A088567

/-! ## A088567.P17863845841154690566

`or(char[A242638(n)], A242634(n))`
-/

namespace A088567.P17863845841154690566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242638 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A242634 n)

end

end A088567.P17863845841154690566

namespace A088567

/-- `or(char[A242638(n)], A242634(n))` -/
def P17863845841154690566.Spec : Prop :=
  ∀ n, P17863845841154690566.a n = A088567 n

end A088567

/-! ## A088567.P15901167725338093763

`A242634(A008486(n)-2*n)`
-/

namespace A088567.P15901167725338093763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A008486 n - (2 * n : ℤ)).toNat

end

end A088567.P15901167725338093763

namespace A088567

/-- `A242634(A008486(n)-2*n)` -/
def P15901167725338093763.Spec : Prop :=
  ∀ n, P15901167725338093763.a n = A088567 n

end A088567

/-! ## A088567.P6616413450349577393

`A242634(A008574(n)-3*n)`
-/

namespace A088567.P6616413450349577393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A008574 n - (3 * n : ℤ)).toNat

end

end A088567.P6616413450349577393

namespace A088567

/-- `A242634(A008574(n)-3*n)` -/
def P6616413450349577393.Spec : Prop :=
  ∀ n, P6616413450349577393.a n = A088567 n

end A088567

/-! ## A088567.P2761604078276790973

`A242634(A008486(n)-n-n)`
-/

namespace A088567.P2761604078276790973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

end

end A088567.P2761604078276790973

namespace A088567

/-- `A242634(A008486(n)-n-n)` -/
def P2761604078276790973.Spec : Prop :=
  ∀ n, P2761604078276790973.a n = A088567 n

end A088567

/-! ## A088567.P11921836646019972264

`A242634(A008683(A008574(n))+n)`
-/

namespace A088567.P11921836646019972264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A008683 (A008574 n).toNat + (n : ℤ)).toNat

end

end A088567.P11921836646019972264

namespace A088567

/-- `A242634(A008683(A008574(n))+n)` -/
def P11921836646019972264.Spec : Prop :=
  ∀ n, P11921836646019972264.a n = A088567 n

end A088567

/-! ## A088567.P9735401880206433043

`A242634(record[A124625(n)]-n)`
-/

namespace A088567.P9735401880206433043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A088567.P9735401880206433043

namespace A088567

/-- `A242634(record[A124625(n)]-n)` -/
def P9735401880206433043.Spec : Prop :=
  ∀ n, P9735401880206433043.a n = A088567 n

end A088567

/-! ## A088567.P4368444481711822053

`A242634(A233583(n+1))`
-/

namespace A088567.P4368444481711822053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A233583 (n + 1)).toNat

end

end A088567.P4368444481711822053

namespace A088567

/-- `A242634(A233583(n+1))` -/
def P4368444481711822053.Spec : Prop :=
  ∀ n, P4368444481711822053.a n = A088567 n

end A088567

/-!
# A088568: 3*n - 2*(partial sums of Kolakoski sequence A000002).

The programs for A088568, the canonical program `A088568.P7969983954604256845` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088568 has offset 1).

The definition of A088568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088568.P10676222112018944173

`2*A156077(n+1)-(n+1)`
-/

namespace A088568.P10676222112018944173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156077 (n + 1) - (n + 1 : ℤ)

end

end A088568.P10676222112018944173

namespace A088568

/-- `2*A156077(n+1)-(n+1)` -/
def P10676222112018944173.Spec : Prop :=
  ∀ n, P10676222112018944173.a n = A088568 (n + 1)

theorem P10676222112018944173.correct : P10676222112018944173.Spec := by
  intro n
  simp only [A088568, Nat.add_sub_cancel, A088568.P10676222112018944173.a, A088568.P7969983954604256845.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156077, A156077.P10312704143839705778.a, A000002, A000002.P13330532946811820297.a, A074286, A074286.P6856108592712522312.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088568

/-! ## A088568.P7969983954604256845

`3*(n+1)-2*A054353(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088568

/-- `3*(n+1)-2*A054353(n+1)` -/
def P7969983954604256845.Spec : Prop :=
  ∀ n, P7969983954604256845.a n = A088568 (n + 1)

theorem P7969983954604256845.correct : P7969983954604256845.Spec := by
  intro n
  simp only [A088568, Nat.add_sub_cancel]

end A088568

/-! ## A088568.P4435102485503980091

`-A294448(n+1)`
-/

namespace A088568.P4435102485503980091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A294448 (n + 1)

end

end A088568.P4435102485503980091

namespace A088568

/-- `-A294448(n+1)` -/
def P4435102485503980091.Spec : Prop :=
  ∀ n, P4435102485503980091.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P17117261442800579590

`∑[(-1)^A049705(n+1)]`
-/

namespace A088568.P17117261442800579590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A049705 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088568.P17117261442800579590

namespace A088568

/-- `∑[(-1)^A049705(n+1)]` -/
def P17117261442800579590.Spec : Prop :=
  ∀ n, P17117261442800579590.a n = (A088568 (n + 1) : ℚ)

end A088568

/-! ## A088568.P15625861796967803408

`∑[round(cos(A000002(n+1)²))]`
-/

namespace A088568.P15625861796967803408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (A000002 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088568.P15625861796967803408

namespace A088568

/-- `∑[round(cos(A000002(n+1)²))]` -/
def P15625861796967803408.Spec : Prop :=
  ∀ n, P15625861796967803408.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P2578306142093227715

`-∑[(-1)^A156253(n+1)]`
-/

namespace A088568.P2578306142093227715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A156253 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088568.P2578306142093227715

namespace A088568

/-- `-∑[(-1)^A156253(n+1)]` -/
def P2578306142093227715.Spec : Prop :=
  ∀ n, P2578306142093227715.a n = (A088568 (n + 1) : ℚ)

end A088568

/-! ## A088568.P9166149494519211135

`n+1-2*A074286(n+1)`
-/

namespace A088568.P9166149494519211135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A074286 (n + 1)

end

end A088568.P9166149494519211135

namespace A088568

/-- `n+1-2*A074286(n+1)` -/
def P9166149494519211135.Spec : Prop :=
  ∀ n, P9166149494519211135.a n = A088568 (n + 1)

theorem P9166149494519211135.correct : P9166149494519211135.Spec := by
  intro n
  simp only [A088568, Nat.add_sub_cancel, A088568.P9166149494519211135.a, A088568.P7969983954604256845.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A074286, A074286.P6856108592712522312.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088568

/-! ## A088568.P16370333830903063478

`∑[A033999(A156253(n+1)+1)]`
-/

namespace A088568.P16370333830903063478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A156253 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088568.P16370333830903063478

namespace A088568

/-- `∑[A033999(A156253(n+1)+1)]` -/
def P16370333830903063478.Spec : Prop :=
  ∀ n, P16370333830903063478.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P2455676219800426492

`A156077(n+1)-A074286(n+1)`
-/

namespace A088568.P2455676219800426492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1) - A074286 (n + 1)

end

end A088568.P2455676219800426492

namespace A088568

/-- `A156077(n+1)-A074286(n+1)` -/
def P2455676219800426492.Spec : Prop :=
  ∀ n, P2455676219800426492.a n = A088568 (n + 1)

theorem P2455676219800426492.correct : P2455676219800426492.Spec := by
  intro n
  simp only [A088568, Nat.add_sub_cancel, A088568.P2455676219800426492.a, A088568.P7969983954604256845.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A074286, A074286.P6856108592712522312.a, A156077, A156077.P10312704143839705778.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088568

/-! ## A088568.P14961204093813152166

`A156265(n+1)-A156268(n+1)`
-/

namespace A088568.P14961204093813152166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156265 (n + 1) - A156268 (n + 1)

end

end A088568.P14961204093813152166

namespace A088568

/-- `A156265(n+1)-A156268(n+1)` -/
def P14961204093813152166.Spec : Prop :=
  ∀ n, P14961204093813152166.a n = A088568 (n + 1)

theorem P14961204093813152166.correct : P14961204093813152166.Spec := by
  intro n
  simp only [A088568, Nat.add_sub_cancel, A088568.P14961204093813152166.a, A088568.P7969983954604256845.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156265, A156265.P11083405800392652458.a, A156268, A156268.P6336594155207146855.a, A000002, A000002.P13330532946811820297.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156253, A156253.P16782691293242481478.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088568

/-! ## A088568.P12542165813391131296

`A026741(n-A294448(n+1))-n`
-/

namespace A088568.P12542165813391131296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n : ℤ) - A294448 (n + 1)).toNat - (n : ℤ)

end

end A088568.P12542165813391131296

namespace A088568

/-- `A026741(n-A294448(n+1))-n` -/
def P12542165813391131296.Spec : Prop :=
  ∀ n, P12542165813391131296.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P14074836331936116731

`A028310(n-A294448(n+1))-n`
-/

namespace A088568.P14074836331936116731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A294448 (n + 1)).toNat - (n : ℤ)

end

end A088568.P14074836331936116731

namespace A088568

/-- `A028310(n-A294448(n+1))-n` -/
def P14074836331936116731.Spec : Prop :=
  ∀ n, P14074836331936116731.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P13466469991579692532

`n*A000007(n)-A294448(n+1)`
-/

namespace A088568.P13466469991579692532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A294448 (n + 1)

end

end A088568.P13466469991579692532

namespace A088568

/-- `n*A000007(n)-A294448(n+1)` -/
def P13466469991579692532.Spec : Prop :=
  ∀ n, P13466469991579692532.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P8664023976255806811

`1-(A294448(n+1)+A033999(n)²)`
-/

namespace A088568.P8664023976255806811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A294448 (n + 1) + A033999 n ^ 2)

end

end A088568.P8664023976255806811

namespace A088568

/-- `1-(A294448(n+1)+A033999(n)²)` -/
def P8664023976255806811.Spec : Prop :=
  ∀ n, P8664023976255806811.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P17625418115576106814

`and(2, A117901(n)²)-A294448(n+1)`
-/

namespace A088568.P17625418115576106814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A117901 n ^ 2) - A294448 (n + 1)

end

end A088568.P17625418115576106814

namespace A088568

/-- `and(2, A117901(n)²)-A294448(n+1)` -/
def P17625418115576106814.Spec : Prop :=
  ∀ n, P17625418115576106814.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P11519320955345475218

`∑[A049705(n+1)-A000002(n+1)]`
-/

namespace A088568.P11519320955345475218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1) - A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088568.P11519320955345475218

namespace A088568

/-- `∑[A049705(n+1)-A000002(n+1)]` -/
def P11519320955345475218.Spec : Prop :=
  ∀ n, P11519320955345475218.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P7785554431683186440

`∑[A049705(n+1)]-A054353(n+1)`
-/

namespace A088568.P7785554431683186440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054353 (n + 1)

end

end A088568.P7785554431683186440

namespace A088568

/-- `∑[A049705(n+1)]-A054353(n+1)` -/
def P7785554431683186440.Spec : Prop :=
  ∀ n, P7785554431683186440.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P7088656065442633352

`A156077(n+1)+1-A156250(n+1)`
-/

namespace A088568.P7088656065442633352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1) + (1 - A156250 (n + 1))

end

end A088568.P7088656065442633352

namespace A088568

/-- `A156077(n+1)+1-A156250(n+1)` -/
def P7088656065442633352.Spec : Prop :=
  ∀ n, P7088656065442633352.a n = A088568 (n + 1)

theorem P7088656065442633352.correct : P7088656065442633352.Spec := by
  intro n
  simp only [A088568, Nat.add_sub_cancel, A088568.P7088656065442633352.a, A088568.P7969983954604256845.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156077, A156077.P10312704143839705778.a, A156250, A156250.P8857404366207384535.a, A000002, A000002.P13330532946811820297.a, A074286, A074286.P6856108592712522312.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088568

/-! ## A088568.P10171761747241116109

`and(2, A000005(n+1)²)-A294448(n+1)`
-/

namespace A088568.P10171761747241116109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000005 (n + 1) ^ 2) - A294448 (n + 1)

end

end A088568.P10171761747241116109

namespace A088568

/-- `and(2, A000005(n+1)²)-A294448(n+1)` -/
def P10171761747241116109.Spec : Prop :=
  ∀ n, P10171761747241116109.a n = A088568 (n + 1)

end A088568

/-! ## A088568.P5337125281619817019

`n+1-A005843(∑[A000002(n+1)-1])`
-/

namespace A088568.P5337125281619817019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088568.P5337125281619817019

namespace A088568

/-- `n+1-A005843(∑[A000002(n+1)-1])` -/
def P5337125281619817019.Spec : Prop :=
  ∀ n, P5337125281619817019.a n = A088568 (n + 1)

end A088568

/-!
# A088569: Anti-Kolakoski sequence (sequence of run lengths never coincides with the sequence itself).

The programs for A088569, the canonical program `A088569.P6705758619599044298` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088569 has offset 1).

The definition of A088569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088569.P6705758619599044298

`3-A000002(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088569

/-- `3-A000002(n+2)` -/
def P6705758619599044298.Spec : Prop :=
  ∀ n, P6705758619599044298.a n = A088569 (n + 1)

theorem P6705758619599044298.correct : P6705758619599044298.Spec := by
  intro n
  simp only [A088569, Nat.add_sub_cancel]

end A088569

/-! ## A088569.P14368107044622221287

`A049705(n+2)`
-/

namespace A088569.P14368107044622221287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 2)

end

end A088569.P14368107044622221287

namespace A088569

/-- `A049705(n+2)` -/
def P14368107044622221287.Spec : Prop :=
  ∀ n, P14368107044622221287.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P18343063319977109463

`2-A157686(n+1)`
-/

namespace A088569.P18343063319977109463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A157686 (n + 1)

end

end A088569.P18343063319977109463

namespace A088569

/-- `2-A157686(n+1)` -/
def P18343063319977109463.Spec : Prop :=
  ∀ n, P18343063319977109463.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P16905632589965632217

`3-A078880(n+1)`
-/

namespace A088569.P16905632589965632217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A078880 (n + 1)

end

end A088569.P16905632589965632217

namespace A088569

/-- `3-A078880(n+1)` -/
def P16905632589965632217.Spec : Prop :=
  ∀ n, P16905632589965632217.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P18427579968365636021

`gcd(2, A156351(n+1))`
-/

namespace A088569.P18427579968365636021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A156351 (n + 1))

end

end A088569.P18427579968365636021

namespace A088569

/-- `gcd(2, A156351(n+1))` -/
def P18427579968365636021.Spec : Prop :=
  ∀ n, (P18427579968365636021.a n : ℤ) = A088569 (n + 1)

end A088569

/-! ## A088569.P2388809237421611014

`2-∑[A054354(n+1)]`
-/

namespace A088569.P2388809237421611014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088569.P2388809237421611014

namespace A088569

/-- `2-∑[A054354(n+1)]` -/
def P2388809237421611014.Spec : Prop :=
  ∀ n, P2388809237421611014.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P17319486676656773311

`a(A049710(n+1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A088569.P17319486676656773311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (A049710 (n + 1)).toNat

end

end A088569.P17319486676656773311

namespace A088569

/-- `a(A049710(n+1))` -/
def P17319486676656773311.Spec : Prop :=
  ∀ n, (P17319486676656773311.a n : ℤ) = A088569 (n + 1)

end A088569

/-! ## A088569.P6305764113807968437

`ceil(atan(A249094(n+2)+1))`
-/

namespace A088569.P6305764113807968437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A249094 (n + 2) + 1 : ℝ)⌉

end

end A088569.P6305764113807968437

namespace A088569

/-- `ceil(atan(A249094(n+2)+1))` -/
def P6305764113807968437.Spec : Prop :=
  ∀ n, P6305764113807968437.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P17185713716508953851

`2-floor(acot(A249093(n+2)))`
-/

namespace A088569.P17185713716508953851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊SequenceMachineLib.acot (A249093 (n + 2) : ℝ)⌋

end

end A088569.P17185713716508953851

namespace A088569

/-- `2-floor(acot(A249093(n+2)))` -/
def P17185713716508953851.Spec : Prop :=
  ∀ n, P17185713716508953851.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P16345735797690253775

`2/a(A006928(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A088569.P16345735797690253775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 / a (A006928 (n + 1)).toNat

end

end A088569.P16345735797690253775

namespace A088569

/-- `2/a(A006928(n+1))` -/
def P16345735797690253775.Spec : Prop :=
  ∀ n, P16345735797690253775.a n = (A088569 (n + 1) : ℚ)

end A088569

/-! ## A088569.P7914150293913127277

`char[A013947(n+1)-2]+1`
-/

namespace A088569.P7914150293913127277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A088569.P7914150293913127277

namespace A088569

/-- `char[A013947(n+1)-2]+1` -/
def P7914150293913127277.Spec : Prop :=
  ∀ n, (P7914150293913127277.a n : ℤ) = A088569 (n + 1)

end A088569

/-! ## A088569.P17543821819524860641

`A049710(A028310(n)+1)`
-/

namespace A088569.P17543821819524860641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A028310 n + 1).toNat

end

end A088569.P17543821819524860641

namespace A088569

/-- `A049710(A028310(n)+1)` -/
def P17543821819524860641.Spec : Prop :=
  ∀ n, P17543821819524860641.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P14571927278918960207

`A040001(A156351(n+1))`
-/

namespace A088569.P14571927278918960207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156351 (n + 1)).toNat

end

end A088569.P14571927278918960207

namespace A088569

/-- `A040001(A156351(n+1))` -/
def P14571927278918960207.Spec : Prop :=
  ∀ n, P14571927278918960207.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P15162034137461409165

`A049710(A054977(n)+n)`
-/

namespace A088569.P15162034137461409165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A054977 n + (n : ℤ)).toNat

end

end A088569.P15162034137461409165

namespace A088569

/-- `A049710(A054977(n)+n)` -/
def P15162034137461409165.Spec : Prop :=
  ∀ n, P15162034137461409165.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P11711706555754309969

`A000032(∑[A054354(n+1)])`
-/

namespace A088569.P11711706555754309969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088569.P11711706555754309969

namespace A088569

/-- `A000032(∑[A054354(n+1)])` -/
def P11711706555754309969.Spec : Prop :=
  ∀ n, P11711706555754309969.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P7712320076118203406

`A000002(A156728(n+1)+n)`
-/

namespace A088569.P7712320076118203406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A156728 (n + 1) + (n : ℤ)).toNat

end

end A088569.P7712320076118203406

namespace A088569

/-- `A000002(A156728(n+1)+n)` -/
def P7712320076118203406.Spec : Prop :=
  ∀ n, P7712320076118203406.a n = A088569 (n + 1)

end A088569

/-! ## A088569.P1477429525325455113

`A049710(n+1)-A000007(n)`
-/

namespace A088569.P1477429525325455113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (n + 1) - A000007 n

end

end A088569.P1477429525325455113

namespace A088569

/-- `A049710(n+1)-A000007(n)` -/
def P1477429525325455113.Spec : Prop :=
  ∀ n, P1477429525325455113.a n = A088569 (n + 1)

end A088569

/-!
# A088570: Sum of terms in n-th block of Kolakoski sequence.

The programs for A088570, the canonical program `A088570.P7695628510631317990` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088570 has offset 1).

The definition of A088570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088570.P7695628510631317990

`(3+(-1)^(n+1))/2*A000002(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088570

/-- `(3+(-1)^(n+1))/2*A000002(n+1)` -/
def P7695628510631317990.Spec : Prop :=
  ∀ n, P7695628510631317990.a n = (A088570 (n + 1) : ℚ)

end A088570

/-! ## A088570.P5653993636508089201

`floor(4/gcd(2, n))/A049705(n+1)`
-/

namespace A088570.P5653993636508089201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊4 / (Nat.gcd 2 n : ℚ)⌋ : ℚ) / (A049705 (n + 1) : ℚ)

end

end A088570.P5653993636508089201

namespace A088570

/-- `floor(4/gcd(2, n))/A049705(n+1)` -/
def P5653993636508089201.Spec : Prop :=
  ∀ n, P5653993636508089201.a n = (A088570 (n + 1) : ℚ)

end A088570

/-! ## A088570.P11140044506334463517

`(or(1, n+1)-n)*(2-char[A013947(n+1)-1])`
-/

namespace A088570.P11140044506334463517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ)) * (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A088570.P11140044506334463517

namespace A088570

/-- `(or(1, n+1)-n)*(2-char[A013947(n+1)-1])` -/
def P11140044506334463517.Spec : Prop :=
  ∀ n, P11140044506334463517.a n = A088570 (n + 1)

end A088570

/-! ## A088570.P11057744892790881325

`(or(1, n+1)-n)*2/(∑[char[A216345(n+1)-1]]%2+1)`
-/

namespace A088570.P11057744892790881325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ) : ℚ) * (2 / (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1 : ℕ) : ℚ))

end

end A088570.P11057744892790881325

namespace A088570

/-- `(or(1, n+1)-n)*2/(∑[char[A216345(n+1)-1]]%2+1)` -/
def P11057744892790881325.Spec : Prop :=
  ∀ n, P11057744892790881325.a n = (A088570 (n + 1) : ℚ)

end A088570

/-! ## A088570.P12258536670164724966

`A000002(n+1)*A000034(n)`
-/

namespace A088570.P12258536670164724966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A000034 n

end

end A088570.P12258536670164724966

namespace A088570

/-- `A000002(n+1)*A000034(n)` -/
def P12258536670164724966.Spec : Prop :=
  ∀ n, P12258536670164724966.a n = A088570 (n + 1)

end A088570

/-! ## A088570.P16413129340776581098

`A010694(n)/A049705(n+1)`
-/

namespace A088570.P16413129340776581098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010694 n : ℚ) / (A049705 (n + 1) : ℚ)

end

end A088570.P16413129340776581098

namespace A088570

/-- `A010694(n)/A049705(n+1)` -/
def P16413129340776581098.Spec : Prop :=
  ∀ n, P16413129340776581098.a n = (A088570 (n + 1) : ℚ)

end A088570

/-! ## A088570.P6496100794133130230

`A000002(n+1)*A040001(n+1)`
-/

namespace A088570.P6496100794133130230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A040001 (n + 1)

end

end A088570.P6496100794133130230

namespace A088570

/-- `A000002(n+1)*A040001(n+1)` -/
def P6496100794133130230.Spec : Prop :=
  ∀ n, P6496100794133130230.a n = A088570 (n + 1)

end A088570

/-! ## A088570.P6431896961011633217

`(3-A049705(n+1))*A000034(n)`
-/

namespace A088570.P6431896961011633217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * A000034 n

end

end A088570.P6431896961011633217

namespace A088570

/-- `(3-A049705(n+1))*A000034(n)` -/
def P6431896961011633217.Spec : Prop :=
  ∀ n, P6431896961011633217.a n = A088570 (n + 1)

end A088570

/-! ## A088570.P1014453612287824771

`A000002(n+1)*A020639(A266303(n))`
-/

namespace A088570.P1014453612287824771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A020639 (A266303 n).toNat

end

end A088570.P1014453612287824771

namespace A088570

/-- `A000002(n+1)*A020639(A266303(n))` -/
def P1014453612287824771.Spec : Prop :=
  ∀ n, P1014453612287824771.a n = A088570 (n + 1)

end A088570

/-! ## A088570.P15043361988508937147

`A000002(n+1)*A100661(A006519(n+1))`
-/

namespace A088570.P15043361988508937147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A100661 (A006519 (n + 1)).toNat

end

end A088570.P15043361988508937147

namespace A088570

/-- `A000002(n+1)*A100661(A006519(n+1))` -/
def P15043361988508937147.Spec : Prop :=
  ∀ n, P15043361988508937147.a n = A088570 (n + 1)

end A088570

/-! ## A088570.P7792763112448612568

`Δ[A216345(A216345(n+1))]`
-/

namespace A088570.P7792763112448612568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A216345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088570.P7792763112448612568

namespace A088570

/-- `Δ[A216345(A216345(n+1))]` -/
def P7792763112448612568.Spec : Prop :=
  ∀ n, P7792763112448612568.a n = A088570 (n + 1)

end A088570

/-! ## A088570.P15968345071202472874

`A000002(n+1)*A006519(n²+1)`
-/

namespace A088570.P15968345071202472874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A006519 (n ^ 2 + 1)

end

end A088570.P15968345071202472874

namespace A088570

/-- `A000002(n+1)*A006519(n²+1)` -/
def P15968345071202472874.Spec : Prop :=
  ∀ n, P15968345071202472874.a n = A088570 (n + 1)

end A088570

/-!
# A088571: a(n) = A088314(n) - A000009(n).

The programs for A088571, there is no canonical definition to state claims against.
-/

/-! ## A088571.P12125036337409567736

`A088314(n)-A000009(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088571.P12125036337409567736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A000009 n

end

end A088571.P12125036337409567736

/-! ## A088571.P15554329748105205719

`A365042(n)-A111133(n)`
-/

namespace A088571.P15554329748105205719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365042 n - A111133 n

end

end A088571.P15554329748105205719

/-! ## A088571.P11641851314065677275

`A088314(n)-abs(A081360(n))`
-/

namespace A088571.P11641851314065677275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - |A081360 n|

end

end A088571.P11641851314065677275

/-! ## A088571.P3393672186184367300

`A088314(n)-∑[A087897(n)]`
-/

namespace A088571.P3393672186184367300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088571.P3393672186184367300

/-! ## A088571.P15892763708877989052

`A088314(n)-A201377(∑[n])`
-/

namespace A088571.P15892763708877989052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A201377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088571.P15892763708877989052

/-! ## A088571.P15713327576232593887

`A088314(n)-A284593(∑[n])`
-/

namespace A088571.P15713327576232593887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A284593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088571.P15713327576232593887

/-! ## A088571.P1901778790204848095

`A088314(n)-(A111133(n)+1)`
-/

namespace A088571.P1901778790204848095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - (A111133 n + 1)

end

end A088571.P1901778790204848095

/-! ## A088571.P1840387173600683338

`A088314(n)-A035457(2*n)`
-/

namespace A088571.P1840387173600683338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A035457 (2 * n)

end

end A088571.P1840387173600683338

/-! ## A088571.P1149952887005147610

`A088314(n)-A259094(A058331(n))`
-/

namespace A088571.P1149952887005147610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - A259094 (A058331 n).toNat

end

end A088571.P1149952887005147610

/-! ## A088571.P3576541607426973272

`A088314(n)-(A367221(n)+A367220(n))`
-/

namespace A088571.P3576541607426973272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - (A367221 n + A367220 n)

end

end A088571.P3576541607426973272

/-!
# A088572: Numbers n such that (2n+1)^2 - 2 is prime.

The programs for A088572, there is no canonical definition to state claims against.
-/

/-! ## A088572.P101570578257666478

`A089623(n+2)/2`
-/

namespace A088572.P101570578257666478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089623 (n + 2) : ℚ) / 2

end

end A088572.P101570578257666478

/-! ## A088572.P12108949165080426391

`floor(A028870(n+2)/2)`
-/

namespace A088572.P12108949165080426391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028870 (n + 2) : ℚ) / 2⌋

end

end A088572.P12108949165080426391

/-! ## A088572.P8033561060716267820

`A273943(A028870(n+2)-1)`
-/

namespace A088572.P8033561060716267820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A028870 (n + 2) - 1).toNat

end

end A088572.P8033561060716267820

/-! ## A088572.P2580521203351489243

`lt[A323741(n+1), 3]+1`
-/

namespace A088572.P2580521203351489243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323741 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088572.P2580521203351489243

/-! ## A088572.P12416334788628039741

`eq[A004273(n), A225844(n)]`
-/

namespace A088572.P12416334788628039741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088572.P12416334788628039741

/-! ## A088572.P12392749058362281710

`record[A308085(n+1)]`
-/

namespace A088572.P12392749058362281710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088572.P12392749058362281710

/-! ## A088572.P12379126803460954080

`eq[A060747(n), A225844(n)]`
-/

namespace A088572.P12379126803460954080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088572.P12379126803460954080

/-! ## A088572.P9577442993556391531

`eq[0, A106544(2*n+1)]`
-/

namespace A088572.P9577442993556391531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088572.P9577442993556391531

/-! ## A088572.P5819882396410796346

`lt[1, A106545(2*n+1)]`
-/

namespace A088572.P5819882396410796346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088572.P5819882396410796346

/-! ## A088572.P18027715147467284792

`A004524(A028870(n+2))`
-/

namespace A088572.P18027715147467284792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A028870 (n + 2)).toNat

end

end A088572.P18027715147467284792

/-! ## A088572.P13601404854212162615

`A001281(A089623(n+2))`
-/

namespace A088572.P13601404854212162615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A089623 (n + 2)).toNat

end

end A088572.P13601404854212162615

/-! ## A088572.P9398849994170836129

`eq[A004442(2*n)², A106545(2*n+1)]`
-/

namespace A088572.P9398849994170836129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088572.P9398849994170836129

/-! ## A088572.P11799487091300757814

`eq[A109613(2*n)², A106545(2*n+1)]`
-/

namespace A088572.P11799487091300757814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088572.P11799487091300757814

/-! ## A088572.P4330840812707303763

`eq[A029579(2*n+1)², A106545(2*n+1)]`
-/

namespace A088572.P4330840812707303763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088572.P4330840812707303763

/-! ## A088572.P4246635824499396908

`eq[A093178(2*n+1)², A106545(2*n+1)]`
-/

namespace A088572.P4246635824499396908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088572.P4246635824499396908

/-! ## A088572.P1233424511956715736

`eq[1, ∑{e}[2-(2*n+1)², #]]`
-/

namespace A088572.P1233424511956715736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((2 * n + 1) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088572.P1233424511956715736

/-! ## A088572.P3899436175177659889

`floor(ceil(sqrt(p?[(2*n+1)²-2]))/2)`
-/

namespace A088572.P3899436175177659889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉ : ℚ) / 2⌋

end

end A088572.P3899436175177659889

/-!
# A088575: Bisection of A088567.

The programs for A088575, the canonical program `A088575.P4330422592269604113` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088575 has offset 0).

The definition of A088575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088575.P4330422592269604113

`a(n-1)+a(floor(n/2))+(1-(-1)^n)/2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088575

/-- `a(n-1)+a(floor(n/2))+(1-(-1)^n)/2` -/
def P4330422592269604113.Spec : Prop :=
  ∀ n, P4330422592269604113.a n = (A088575 n : ℚ)

end A088575

/-! ## A088575.P4627972857516972065

`∑[a(n-2)+a(floor(n/2))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A088575.P4627972857516972065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  f1 (n - 2) + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088575.P4627972857516972065

namespace A088575

/-- `∑[a(n-2)+a(floor(n/2))]` -/
def P4627972857516972065.Spec : Prop :=
  ∀ n, (P4627972857516972065.a n : ℤ) = A088575 n

end A088575

/-! ## A088575.P11594610564130957185

`a(n-1)+a(floor(n/2))+n%2` with `a(0)=1, a(1)=1`
-/

namespace A088575.P11594610564130957185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a ⌊(n : ℚ) / 2⌋.toNat + n % 2)

end

end A088575.P11594610564130957185

namespace A088575

/-- `a(n-1)+a(floor(n/2))+n%2` -/
def P11594610564130957185.Spec : Prop :=
  ∀ n, (P11594610564130957185.a n : ℤ) = A088575 n

end A088575

/-! ## A088575.P13582804360024813762

`a(n-1)+a(floor(n/2))+2-gcd(2, n)` with `a(0)=1, a(1)=1`
-/

namespace A088575.P13582804360024813762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ)))

end

end A088575.P13582804360024813762

namespace A088575

/-- `a(n-1)+a(floor(n/2))+2-gcd(2, n)` -/
def P13582804360024813762.Spec : Prop :=
  ∀ n, P13582804360024813762.a n = A088575 n

end A088575

/-! ## A088575.P13454010068097571257

`a(n-1)+a(floor(n/2))-char[2*n]+1` with `a(0)=1, a(1)=1`
-/

namespace A088575.P13454010068097571257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1

end

end A088575.P13454010068097571257

namespace A088575

/-- `a(n-1)+a(floor(n/2))-char[2*n]+1` -/
def P13454010068097571257.Spec : Prop :=
  ∀ n, P13454010068097571257.a n = A088575 n

end A088575

/-! ## A088575.P7809798281171662947

`∑[A088567(n)-char[1]]`
-/

namespace A088575.P7809798281171662947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088575.P7809798281171662947

namespace A088575

/-- `∑[A088567(n)-char[1]]` -/
def P7809798281171662947.Spec : Prop :=
  ∀ n, P7809798281171662947.a n = A088575 n

end A088575

/-! ## A088575.P7204449124644176635

`A242634(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A088575.P7204449124644176635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242634 n + a (n - 1)

end

end A088575.P7204449124644176635

namespace A088575

/-- `A242634(n)+a(n-1)` -/
def P7204449124644176635.Spec : Prop :=
  ∀ n, P7204449124644176635.a n = A088575 n

end A088575

/-! ## A088575.P1260922881615126317

`A088585(n)+A057428(n)`
-/

namespace A088575.P1260922881615126317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088585 n + A057428 n

end

end A088575.P1260922881615126317

namespace A088575

/-- `A088585(n)+A057428(n)` -/
def P1260922881615126317.Spec : Prop :=
  ∀ n, P1260922881615126317.a n = A088575 n

end A088575

/-! ## A088575.P9114062092141686919

`A088585(n)-A057427(n)`
-/

namespace A088575.P9114062092141686919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088585 n - A057427 n

end

end A088575.P9114062092141686919

namespace A088575

/-- `A088585(n)-A057427(n)` -/
def P9114062092141686919.Spec : Prop :=
  ∀ n, P9114062092141686919.a n = A088575 n

end A088575

/-! ## A088575.P2061618536268995425

`A054977(n)+A088585(n)-2`
-/

namespace A088575.P2061618536268995425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A088585 n - 2)

end

end A088575.P2061618536268995425

namespace A088575

/-- `A054977(n)+A088585(n)-2` -/
def P2061618536268995425.Spec : Prop :=
  ∀ n, P2061618536268995425.a n = A088575 n

end A088575

/-! ## A088575.P15202204183755147353

`A088585(n)-A112347(n)*A112347(n)`
-/

namespace A088575.P15202204183755147353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088585 n - A112347 n * A112347 n

end

end A088575.P15202204183755147353

namespace A088575

/-- `A088585(n)-A112347(n)*A112347(n)` -/
def P15202204183755147353.Spec : Prop :=
  ∀ n, P15202204183755147353.a n = A088575 n

end A088575

/-! ## A088575.P15904831024852599149

`A088585(n)-A112347(n)/A121238(n)`
-/

namespace A088575.P15904831024852599149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088585 n : ℚ) - (A112347 n : ℚ) / (A121238 n : ℚ)

end

end A088575.P15904831024852599149

namespace A088575

/-- `A088585(n)-A112347(n)/A121238(n)` -/
def P15904831024852599149.Spec : Prop :=
  ∀ n, P15904831024852599149.a n = (A088575 n : ℚ)

end A088575

/-! ## A088575.P14291189441925311706

`A088585(n)-A242634(n)/A088567(n)`
-/

namespace A088575.P14291189441925311706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088585 n : ℚ) - (A242634 n : ℚ) / (A088567 n : ℚ)

end

end A088575.P14291189441925311706

namespace A088575

/-- `A088585(n)-A242634(n)/A088567(n)` -/
def P14291189441925311706.Spec : Prop :=
  ∀ n, P14291189441925311706.a n = (A088575 n : ℚ)

end A088575

/-! ## A088575.P2275392533489685440

`A088585(n)-A157928(n+1)`
-/

namespace A088575.P2275392533489685440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088585 n - A157928 (n + 1)

end

end A088575.P2275392533489685440

namespace A088575

/-- `A088585(n)-A157928(n+1)` -/
def P2275392533489685440.Spec : Prop :=
  ∀ n, P2275392533489685440.a n = A088575 n

end A088575

/-! ## A088575.P15666981487674335867

`A088567(2*n)`
-/

namespace A088575.P15666981487674335867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 (2 * n)

end

end A088575.P15666981487674335867

namespace A088575

/-- `A088567(2*n)` -/
def P15666981487674335867.Spec : Prop :=
  ∀ n, P15666981487674335867.a n = A088575 n

end A088575

/-! ## A088575.P435566002278097923

`A242634(record[A124625(n)])`
-/

namespace A088575.P435566002278097923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088575.P435566002278097923

namespace A088575

/-- `A242634(record[A124625(n)])` -/
def P435566002278097923.Spec : Prop :=
  ∀ n, P435566002278097923.a n = A088575 n

end A088575

/-! ## A088575.P16861249943573251875

`A242634(A028310(2*n))`
-/

namespace A088575.P16861249943573251875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A028310 (2 * n)).toNat

end

end A088575.P16861249943573251875

namespace A088575

/-- `A242634(A028310(2*n))` -/
def P16861249943573251875.Spec : Prop :=
  ∀ n, P16861249943573251875.a n = A088575 n

end A088575

/-! ## A088575.P1104816648793204697

`A242634(A028310(n)+n)`
-/

namespace A088575.P1104816648793204697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A028310 n + (n : ℤ)).toNat

end

end A088575.P1104816648793204697

namespace A088575

/-- `A242634(A028310(n)+n)` -/
def P1104816648793204697.Spec : Prop :=
  ∀ n, P1104816648793204697.a n = A088575 n

end A088575

/-! ## A088575.P7687189099409529644

`A242634(A008486(n)-n)`
-/

namespace A088575.P7687189099409529644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (A008486 n - (n : ℤ)).toNat

end

end A088575.P7687189099409529644

namespace A088575

/-- `A242634(A008486(n)-n)` -/
def P7687189099409529644.Spec : Prop :=
  ∀ n, P7687189099409529644.a n = A088575 n

end A088575

/-!
# A088576: Position of the first location of n in the decimal expansion of e.

The programs for A088576, there is no canonical definition to state claims against.
-/

/-! ## A088576.P13685023440919385751

`A281092(n)+1`
-/

namespace A088576.P13685023440919385751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281092 n + 1

end

end A088576.P13685023440919385751

/-! ## A088576.P10768603677483663994

`A008619(2*A281092(n))`
-/

namespace A088576.P10768603677483663994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A281092 n).toNat

end

end A088576.P10768603677483663994

/-! ## A088576.P14145309183622530996

`A027656(2*A281092(n))`
-/

namespace A088576.P14145309183622530996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A281092 n).toNat

end

end A088576.P14145309183622530996

/-! ## A088576.P1384245285159111410

`A028242(2*A281092(n))`
-/

namespace A088576.P1384245285159111410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A281092 n).toNat

end

end A088576.P1384245285159111410

/-! ## A088576.P10404363698410759556

`A029579(2*A281092(n))`
-/

namespace A088576.P10404363698410759556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A281092 n).toNat

end

end A088576.P10404363698410759556

/-! ## A088576.P1489136889431622105

`A052938(2*A281092(n))`
-/

namespace A088576.P1489136889431622105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A281092 n).toNat

end

end A088576.P1489136889431622105

/-! ## A088576.P12125309999049286822

`A080513(2*A281092(n))`
-/

namespace A088576.P12125309999049286822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A281092 n).toNat

end

end A088576.P12125309999049286822

/-! ## A088576.P5942942956767669894

`A008611(3*A281092(n))`
-/

namespace A088576.P5942942956767669894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A281092 n).toNat

end

end A088576.P5942942956767669894

/-! ## A088576.P14000328984415458862

`A008620(3*A281092(n))`
-/

namespace A088576.P14000328984415458862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A281092 n).toNat

end

end A088576.P14000328984415458862

/-! ## A088576.P8393328716882218246

`A008621(4*A281092(n))`
-/

namespace A088576.P8393328716882218246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A281092 n).toNat

end

end A088576.P8393328716882218246

/-!
# A088577: Position of the first location of n in the digits of phi = 1.61803398874989....

The programs for A088577, there is no canonical definition to state claims against.
-/

/-! ## A088577.P10053044049084891077

`A362058(n)+1`
-/

namespace A088577.P10053044049084891077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362058 n + 1

end

end A088577.P10053044049084891077

/-! ## A088577.P8552811110627168205

`A027656(2*A362058(n))`
-/

namespace A088577.P8552811110627168205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A362058 n).toNat

end

end A088577.P8552811110627168205

/-!
# A088578: a(n) = n*x^n + (n-1)*x^(n-1) + . . . + x + 1 for x=2.

The programs for A088578, the canonical program `A088578.P14643201218299381926` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088578 has offset 0).

The definition of A088578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088578.P16009081757617591668

`ogf((1-2x+4x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A088578.P16009081757617591668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -5, 8, -4] n

end

end A088578.P16009081757617591668

namespace A088578

/-- `ogf((1-2x+4x^2)/(1-5x+8x^2-4x^3))` -/
def P16009081757617591668.Spec : Prop :=
  ∀ n, P16009081757617591668.a n = A088578 n

end A088578

/-! ## A088578.P14643201218299381926

`(n-1)*2^(n+1)+3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088578

/-- `(n-1)*2^(n+1)+3` -/
def P14643201218299381926.Spec : Prop :=
  ∀ n, P14643201218299381926.a n = A088578 n

theorem P14643201218299381926.correct : P14643201218299381926.Spec := by
  intro n
  simp only [A088578]

end A088578

/-! ## A088578.P17420952391808741217

`or(1, ∑[n*2^n])`
-/

namespace A088578.P17420952391808741217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088578.P17420952391808741217

namespace A088578

/-- `or(1, ∑[n*2^n])` -/
def P17420952391808741217.Spec : Prop :=
  ∀ n, (P17420952391808741217.a n : ℤ) = A088578 n

end A088578

/-! ## A088578.P4954222294408875377

`xor(1, ∑[n*2^n])`
-/

namespace A088578.P4954222294408875377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088578.P4954222294408875377

namespace A088578

/-- `xor(1, ∑[n*2^n])` -/
def P4954222294408875377.Spec : Prop :=
  ∀ n, (P4954222294408875377.a n : ℤ) = A088578 n

end A088578

/-! ## A088578.P9181769225270866357

`∑[ogf((1-2x+4x^2)/(1-4x+4x^2))]`
-/

namespace A088578.P9181769225270866357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P9181769225270866357

namespace A088578

/-- `∑[ogf((1-2x+4x^2)/(1-4x+4x^2))]` -/
def P9181769225270866357.Spec : Prop :=
  ∀ n, P9181769225270866357.a n = A088578 n

end A088578

/-! ## A088578.P574773639397244002

`∑[gcd(n*2^n, floor(acot(n)))]`
-/

namespace A088578.P574773639397244002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * 2 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P574773639397244002

namespace A088578

/-- `∑[gcd(n*2^n, floor(acot(n)))]` -/
def P574773639397244002.Spec : Prop :=
  ∀ n, (P574773639397244002.a n : ℤ) = A088578 n

end A088578

/-! ## A088578.P1813264986524340010

`∑[n*gcd(2, a(n-1))^n]` with `a(0)=1, a(1)=2`
-/

namespace A088578.P1813264986524340010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n * Nat.gcd 2 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P1813264986524340010

namespace A088578

/-- `∑[n*gcd(2, a(n-1))^n]` -/
def P1813264986524340010.Spec : Prop :=
  ∀ n, (P1813264986524340010.a n : ℤ) = A088578 n

end A088578

/-! ## A088578.P7267386615613683289

`∑[record[abs(floor((n-1)*2^(n-1)))]]`
-/

namespace A088578.P7267386615613683289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P7267386615613683289

namespace A088578

/-- `∑[record[abs(floor((n-1)*2^(n-1)))]]` -/
def P7267386615613683289.Spec : Prop :=
  ∀ n, P7267386615613683289.a n = A088578 n

end A088578

/-! ## A088578.P10878897907704800633

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A088578.P10878897907704800633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P10878897907704800633

namespace A088578

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P10878897907704800633.Spec : Prop :=
  ∀ n, P10878897907704800633.a n = A088578 n

end A088578

/-! ## A088578.P15005445052699810515

`∑[a(n-1)+a(n-1)+2^n]` with `a(0)=1, a(1)=2`
-/

namespace A088578.P15005445052699810515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P15005445052699810515

namespace A088578

/-- `∑[a(n-1)+a(n-1)+2^n]` -/
def P15005445052699810515.Spec : Prop :=
  ∀ n, (P15005445052699810515.a n : ℤ) = A088578 n

end A088578

/-! ## A088578.P13872477213733729855

`4*(3/4+a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A088578.P13872477213733729855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * ((3 : ℚ) / 4 + (a (n - 1) - a (n - 2)))

end

end A088578.P13872477213733729855

namespace A088578

/-- `4*(3/4+a(n-1)-a(n-2))` -/
def P13872477213733729855.Spec : Prop :=
  ∀ n, P13872477213733729855.a n = (A088578 n : ℚ)

theorem P13872477213733729855.correct : P13872477213733729855.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A088578, Nat.add_sub_cancel, A088578.P13872477213733729855.a, A088578.P14643201218299381926.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A088578, Nat.add_sub_cancel, A088578.P13872477213733729855.a, A088578.P14643201218299381926.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A088578

/-! ## A088578.P10288231329519982736

`4*(a(n-1)-(a(n-2)-3/4))` with `a(0)=1, a(1)=3`
-/

namespace A088578.P10288231329519982736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 1) - (a (n - 2) - (3 : ℚ) / 4))

end

end A088578.P10288231329519982736

namespace A088578

/-- `4*(a(n-1)-(a(n-2)-3/4))` -/
def P10288231329519982736.Spec : Prop :=
  ∀ n, P10288231329519982736.a n = (A088578 n : ℚ)

theorem P10288231329519982736.correct : P10288231329519982736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A088578, Nat.add_sub_cancel, A088578.P10288231329519982736.a, A088578.P14643201218299381926.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A088578, Nat.add_sub_cancel, A088578.P10288231329519982736.a, A088578.P14643201218299381926.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A088578

/-! ## A088578.P2113132569734606271

`∑[A134401(n)]`
-/

namespace A088578.P2113132569734606271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P2113132569734606271

namespace A088578

/-- `∑[A134401(n)]` -/
def P2113132569734606271.Spec : Prop :=
  ∀ n, P2113132569734606271.a n = A088578 n

end A088578

/-! ## A088578.P6466939128417184939

`∑[2^n*A028310(n)]`
-/

namespace A088578.P6466939128417184939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P6466939128417184939

namespace A088578

/-- `∑[2^n*A028310(n)]` -/
def P6466939128417184939.Spec : Prop :=
  ∀ n, P6466939128417184939.a n = A088578 n

end A088578

/-! ## A088578.P12118991102314260521

`∑[ceil(2^(n-1))*A004277(n)]`
-/

namespace A088578.P12118991102314260521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P12118991102314260521

namespace A088578

/-- `∑[ceil(2^(n-1))*A004277(n)]` -/
def P12118991102314260521.Spec : Prop :=
  ∀ n, P12118991102314260521.a n = A088578 n

end A088578

/-! ## A088578.P11451968720281752086

`abs(∑[n*Δ[A000225(n)]+1]-n)`
-/

namespace A088578.P11451968720281752086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A088578.P11451968720281752086

namespace A088578

/-- `abs(∑[n*Δ[A000225(n)]+1]-n)` -/
def P11451968720281752086.Spec : Prop :=
  ∀ n, P11451968720281752086.a n = A088578 n

end A088578

/-! ## A088578.P9942742376555477527

`∑[A004277(n)*A011782(n)]`
-/

namespace A088578.P9942742376555477527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088578.P9942742376555477527

namespace A088578

/-- `∑[A004277(n)*A011782(n)]` -/
def P9942742376555477527.Spec : Prop :=
  ∀ n, P9942742376555477527.a n = A088578 n

end A088578

/-!
# A088580: a(n) = 1 + sigma(n).

The programs for A088580, the canonical program `A088580.P3089093194242277422` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088580 has offset 1).

The definition of A088580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000203(n+1)` (program `A088580.P3089093194242277422`, by `A088580.P3089093194242277422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088580.P3089093194242277422

`1+A000203(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088580

/-- `1+A000203(n+1)` -/
def P3089093194242277422.Spec : Prop :=
  ∀ n, P3089093194242277422.a n = A088580 (n + 1)

theorem P3089093194242277422.correct : P3089093194242277422.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel]

end A088580

/-! ## A088580.P1642453032125363427

`1+∑{d}[n+1, #]`
-/

namespace A088580.P1642453032125363427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∑ d ∈ Nat.divisors (f1 n), d

end

end A088580.P1642453032125363427

namespace A088580

/-- `1+∑{d}[n+1, #]` -/
def P1642453032125363427.Spec : Prop :=
  ∀ n, (P1642453032125363427.a n : ℤ) = A088580 (n + 1)

theorem P1642453032125363427.correct : P1642453032125363427.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P1642453032125363427.f1, A088580.P1642453032125363427.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P14319689416031239981

`Δ[A160664(n)]+1`
-/

namespace A088580.P14319689416031239981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A088580.P14319689416031239981

namespace A088580

/-- `Δ[A160664(n)]+1` -/
def P14319689416031239981.Spec : Prop :=
  ∀ n, P14319689416031239981.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P2604834368261071128

`A039653(n+1)+2`
-/

namespace A088580.P2604834368261071128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 2

end

end A088580.P2604834368261071128

namespace A088580

/-- `A039653(n+1)+2` -/
def P2604834368261071128.Spec : Prop :=
  ∀ n, P2604834368261071128.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P3946171441260244180

`A155085(n+1)-n`
-/

namespace A088580.P3946171441260244180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n : ℤ)

end

end A088580.P3946171441260244180

namespace A088580

/-- `A155085(n+1)-n` -/
def P3946171441260244180.Spec : Prop :=
  ∀ n, P3946171441260244180.a n = A088580 (n + 1)

theorem P3946171441260244180.correct : P3946171441260244180.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P3946171441260244180.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P13904025258696542830

`ceil(sqrt(A258774(n+1)))`
-/

namespace A088580.P13904025258696542830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258774 (n + 1) : ℝ)⌉

end

end A088580.P13904025258696542830

namespace A088580

/-- `ceil(sqrt(A258774(n+1)))` -/
def P13904025258696542830.Spec : Prop :=
  ∀ n, P13904025258696542830.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P10909358285845796809

`ceil(sqrt(A258974(n+1)))`
-/

namespace A088580.P10909358285845796809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258974 (n + 1) : ℝ)⌉

end

end A088580.P10909358285845796809

namespace A088580

/-- `ceil(sqrt(A258974(n+1)))` -/
def P10909358285845796809.Spec : Prop :=
  ∀ n, P10909358285845796809.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P12963907868241958812

`abs(Δ[A330725(n)])+1`
-/

namespace A088580.P12963907868241958812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A088580.P12963907868241958812

namespace A088580

/-- `abs(Δ[A330725(n)])+1` -/
def P12963907868241958812.Spec : Prop :=
  ∀ n, P12963907868241958812.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P7495135665857493532

`A245092(Δ[n²])+1`
-/

namespace A088580.P7495135665857493532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A088580.P7495135665857493532

namespace A088580

/-- `A245092(Δ[n²])+1` -/
def P7495135665857493532.Spec : Prop :=
  ∀ n, P7495135665857493532.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P13250781984968048826

`abs(A143348(n+1))+1`
-/

namespace A088580.P13250781984968048826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| + 1

end

end A088580.P13250781984968048826

namespace A088580

/-- `abs(A143348(n+1))+1` -/
def P13250781984968048826.Spec : Prop :=
  ∀ n, P13250781984968048826.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P6859893985696284602

`sqrt(A072861(n+1))+1`
-/

namespace A088580.P6859893985696284602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) + 1

end

end A088580.P6859893985696284602

namespace A088580

/-- `sqrt(A072861(n+1))+1` -/
def P6859893985696284602.Spec : Prop :=
  ∀ n, P6859893985696284602.a n = (A088580 (n + 1) : ℝ)

end A088580

/-! ## A088580.P11179365544142636375

`∑[A340793(n+1)]+1`
-/

namespace A088580.P11179365544142636375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088580.P11179365544142636375

namespace A088580

/-- `∑[A340793(n+1)]+1` -/
def P11179365544142636375.Spec : Prop :=
  ∀ n, P11179365544142636375.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P688964365201513594

`ceil(sqrt(sqrt(A259308(n+1))))`
-/

namespace A088580.P688964365201513594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A259308 (n + 1) : ℝ))⌉

end

end A088580.P688964365201513594

namespace A088580

/-- `ceil(sqrt(sqrt(A259308(n+1))))` -/
def P688964365201513594.Spec : Prop :=
  ∀ n, P688964365201513594.a n = A088580 (n + 1)

end A088580

/-! ## A088580.P7902506094581005185

`A074400(n+1)/2+1`
-/

namespace A088580.P7902506094581005185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 + 1

end

end A088580.P7902506094581005185

namespace A088580

/-- `A074400(n+1)/2+1` -/
def P7902506094581005185.Spec : Prop :=
  ∀ n, P7902506094581005185.a n = (A088580 (n + 1) : ℚ)

theorem P7902506094581005185.correct : P7902506094581005185.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P7902506094581005185.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P10414607832945503703

`A272027(n+1)/3+1`
-/

namespace A088580.P10414607832945503703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 + 1

end

end A088580.P10414607832945503703

namespace A088580

/-- `A272027(n+1)/3+1` -/
def P10414607832945503703.Spec : Prop :=
  ∀ n, P10414607832945503703.a n = (A088580 (n + 1) : ℚ)

theorem P10414607832945503703.correct : P10414607832945503703.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P10414607832945503703.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P11231214768797974736

`(A002659(n+1)+3)/2`
-/

namespace A088580.P11231214768797974736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002659 (n + 1) + 3 : ℚ) / 2

end

end A088580.P11231214768797974736

namespace A088580

/-- `(A002659(n+1)+3)/2` -/
def P11231214768797974736.Spec : Prop :=
  ∀ n, P11231214768797974736.a n = (A088580 (n + 1) : ℚ)

theorem P11231214768797974736.correct : P11231214768797974736.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P11231214768797974736.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P8948138163684764047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P2788055591426376014

`A239050(n+1)/4+1`
-/

namespace A088580.P2788055591426376014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / 4 + 1

end

end A088580.P2788055591426376014

namespace A088580

/-- `A239050(n+1)/4+1` -/
def P2788055591426376014.Spec : Prop :=
  ∀ n, P2788055591426376014.a n = (A088580 (n + 1) : ℚ)

theorem P2788055591426376014.correct : P2788055591426376014.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P2788055591426376014.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P5573417534296415386

`A274535(n+1)/5+1`
-/

namespace A088580.P5573417534296415386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274535 (n + 1) : ℚ) / 5 + 1

end

end A088580.P5573417534296415386

namespace A088580

/-- `A274535(n+1)/5+1` -/
def P5573417534296415386.Spec : Prop :=
  ∀ n, P5573417534296415386.a n = (A088580 (n + 1) : ℚ)

theorem P5573417534296415386.correct : P5573417534296415386.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P5573417534296415386.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A274535, A274535.P4233430454223343819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P7842558759614186970

`A001065(n+1)+2+n`
-/

namespace A088580.P7842558759614186970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 2 + (n : ℤ)

end

end A088580.P7842558759614186970

namespace A088580

/-- `A001065(n+1)+2+n` -/
def P7842558759614186970.Spec : Prop :=
  ∀ n, P7842558759614186970.a n = A088580 (n + 1)

theorem P7842558759614186970.correct : P7842558759614186970.Spec := by
  intro n
  simp only [A088580, Nat.add_sub_cancel, A088580.P7842558759614186970.a, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088580

/-! ## A088580.P8611121546393860403

`sqrt(sqrt(A361179(n+1)))+1`
-/

namespace A088580.P8611121546393860403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A361179 (n + 1) : ℝ)) + 1

end

end A088580.P8611121546393860403

namespace A088580

/-- `sqrt(sqrt(A361179(n+1)))+1` -/
def P8611121546393860403.Spec : Prop :=
  ∀ n, P8611121546393860403.a n = (A088580 (n + 1) : ℝ)

end A088580

/-!
# A088581: a(n) = n*x^n + (n-1)*x^(n-1) + . . . + x + 1 for x=3.

The programs for A088581, the canonical program `A088581.P14113992032455164395` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088581 has offset 0).

The definition of A088581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088581.P70003168222039361

`ogf((1-3x+9x^2)/(1-7x+15x^2-9x^3))`
-/

namespace A088581.P70003168222039361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 9] [1, -7, 15, -9] n

end

end A088581.P70003168222039361

namespace A088581

/-- `ogf((1-3x+9x^2)/(1-7x+15x^2-9x^3))` -/
def P70003168222039361.Spec : Prop :=
  ∀ n, P70003168222039361.a n = A088581 n

end A088581

/-! ## A088581.P7814234652780481131

`1/4*((6*n-3)*3^n+7)`
-/

namespace A088581.P7814234652780481131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (((6 * n : ℤ) - 3) * (3 ^ n : ℤ) + 7 : ℚ)

end

end A088581.P7814234652780481131

namespace A088581

/-- `1/4*((6*n-3)*3^n+7)` -/
def P7814234652780481131.Spec : Prop :=
  ∀ n, P7814234652780481131.a n = (A088581 n : ℚ)

theorem P7814234652780481131.correct : P7814234652780481131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A088581, Nat.add_sub_cancel, A088581.P7814234652780481131.a, A088581.P14113992032455164395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A088581, Nat.add_sub_cancel, A088581.P7814234652780481131.a, A088581.P14113992032455164395.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A088581

/-! ## A088581.P14113992032455164395

`6*a(n-1)-8*a(n-2)-6*a(n-3)+9*a(n-4)` with `a(0)=1, a(1)=4, a(2)=22, a(3)=103`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088581

/-- `6*a(n-1)-8*a(n-2)-6*a(n-3)+9*a(n-4)` -/
def P14113992032455164395.Spec : Prop :=
  ∀ n, P14113992032455164395.a n = A088581 n

theorem P14113992032455164395.correct : P14113992032455164395.Spec := by
  intro n
  simp only [A088581]

end A088581

/-! ## A088581.P10309605171152324413

`abs(xor(∑[n*3^n], -1))`
-/

namespace A088581.P10309605171152324413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)|

end

end A088581.P10309605171152324413

namespace A088581

/-- `abs(xor(∑[n*3^n], -1))` -/
def P10309605171152324413.Spec : Prop :=
  ∀ n, P10309605171152324413.a n = A088581 n

end A088581

/-! ## A088581.P1115443449253293764

`∑[ogf((1-3x+9x^2)/(1-6x+9x^2))]`
-/

namespace A088581.P1115443449253293764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 9] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P1115443449253293764

namespace A088581

/-- `∑[ogf((1-3x+9x^2)/(1-6x+9x^2))]` -/
def P1115443449253293764.Spec : Prop :=
  ∀ n, P1115443449253293764.a n = A088581 n

end A088581

/-! ## A088581.P12915458856000142675

`∑[3^n*round(1/acot(n))]`
-/

namespace A088581.P12915458856000142675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P12915458856000142675

namespace A088581

/-- `∑[3^n*round(1/acot(n))]` -/
def P12915458856000142675.Spec : Prop :=
  ∀ n, P12915458856000142675.a n = A088581 n

end A088581

/-! ## A088581.P847363691804796756

`∑[gcd(n*3^n, floor(acot(n)))]`
-/

namespace A088581.P847363691804796756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * 3 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P847363691804796756

namespace A088581

/-- `∑[gcd(n*3^n, floor(acot(n)))]` -/
def P847363691804796756.Spec : Prop :=
  ∀ n, (P847363691804796756.a n : ℤ) = A088581 n

end A088581

/-! ## A088581.P28936623885020228

`a(n-1)+n*3^n` with `a(0)=1`
-/

namespace A088581.P28936623885020228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * 3 ^ n

end

end A088581.P28936623885020228

namespace A088581

/-- `a(n-1)+n*3^n` -/
def P28936623885020228.Spec : Prop :=
  ∀ n, (P28936623885020228.a n : ℤ) = A088581 n

end A088581

/-! ## A088581.P6646741210441031828

`∑[3^n*n%a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A088581.P6646741210441031828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 ^ n * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P6646741210441031828

namespace A088581

/-- `∑[3^n*n%a(n-1)]` -/
def P6646741210441031828.Spec : Prop :=
  ∀ n, (P6646741210441031828.a n : ℤ) = A088581 n

end A088581

/-! ## A088581.P1281555878349931177

`∑[n*gcd(3, a(n-1))^n]` with `a(0)=1, a(1)=3`
-/

namespace A088581.P1281555878349931177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  n * Nat.gcd 3 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P1281555878349931177

namespace A088581

/-- `∑[n*gcd(3, a(n-1))^n]` -/
def P1281555878349931177.Spec : Prop :=
  ∀ n, (P1281555878349931177.a n : ℤ) = A088581 n

end A088581

/-! ## A088581.P8617504374263472490

`A289399(n)+1`
-/

namespace A088581.P8617504374263472490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289399 n + 1

end

end A088581.P8617504374263472490

namespace A088581

/-- `A289399(n)+1` -/
def P8617504374263472490.Spec : Prop :=
  ∀ n, P8617504374263472490.a n = A088581 n

end A088581

/-! ## A088581.P13418480028464690693

`∑[A036290(n)]+1`
-/

namespace A088581.P13418480028464690693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088581.P13418480028464690693

namespace A088581

/-- `∑[A036290(n)]+1` -/
def P13418480028464690693.Spec : Prop :=
  ∀ n, P13418480028464690693.a n = A088581 n

end A088581

/-! ## A088581.P14296832522607818859

`∑[A050914(n)]-n`
-/

namespace A088581.P14296832522607818859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A088581.P14296832522607818859

namespace A088581

/-- `∑[A050914(n)]-n` -/
def P14296832522607818859.Spec : Prop :=
  ∀ n, P14296832522607818859.a n = A088581 n

end A088581

/-! ## A088581.P1478439256003642836

`∑[3^n*A028310(n)]`
-/

namespace A088581.P1478439256003642836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P1478439256003642836

namespace A088581

/-- `∑[3^n*A028310(n)]` -/
def P1478439256003642836.Spec : Prop :=
  ∀ n, P1478439256003642836.a n = A088581 n

end A088581

/-! ## A088581.P13629025396317727361

`∑[n*A000244(n)+1]-n`
-/

namespace A088581.P13629025396317727361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000244 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A088581.P13629025396317727361

namespace A088581

/-- `∑[n*A000244(n)+1]-n` -/
def P13629025396317727361.Spec : Prop :=
  ∀ n, P13629025396317727361.a n = A088581 n

end A088581

/-! ## A088581.P14896278038264489418

`∑[A123108(2*n)*A140429(n+1)]`
-/

namespace A088581.P14896278038264489418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A140429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P14896278038264489418

namespace A088581

/-- `∑[A123108(2*n)*A140429(n+1)]` -/
def P14896278038264489418.Spec : Prop :=
  ∀ n, P14896278038264489418.a n = A088581 n

end A088581

/-! ## A088581.P6304091501320607422

`∑[n*sqrt(A001019(n))+1]-n`
-/

namespace A088581.P6304091501320607422
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A001019 n : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A088581.P6304091501320607422

namespace A088581

/-- `∑[n*sqrt(A001019(n))+1]-n` -/
def P6304091501320607422.Spec : Prop :=
  ∀ n, P6304091501320607422.a n = (A088581 n : ℝ)

end A088581

/-! ## A088581.P12455907916218456754

`∑[3^n*A137735(n²)]`
-/

namespace A088581.P12455907916218456754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A137735 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088581.P12455907916218456754

namespace A088581

/-- `∑[3^n*A137735(n²)]` -/
def P12455907916218456754.Spec : Prop :=
  ∀ n, P12455907916218456754.a n = A088581 n

end A088581

/-!
# A088582: a(n) = n*x^n + (n-1)*x^(n-1) + . . . + x + 1 for x=4.

The programs for A088582, the canonical program `A088582.P175909734931828493` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088582 has offset 0).

The definition of A088582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088582.P4584215582168001610

`ogf((1-4x+16x^2)/(1-9x+24x^2-16x^3))`
-/

namespace A088582.P4584215582168001610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 16] [1, -9, 24, -16] n

end

end A088582.P4584215582168001610

namespace A088582

/-- `ogf((1-4x+16x^2)/(1-9x+24x^2-16x^3))` -/
def P4584215582168001610.Spec : Prop :=
  ∀ n, P4584215582168001610.a n = A088582 n

end A088582

/-! ## A088582.P175909734931828493

`9*a(n-1)-24*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=5, a(2)=37`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088582

/-- `9*a(n-1)-24*a(n-2)+16*a(n-3)` -/
def P175909734931828493.Spec : Prop :=
  ∀ n, P175909734931828493.a n = A088582 n

theorem P175909734931828493.correct : P175909734931828493.Spec := by
  intro n
  simp only [A088582]

end A088582

/-! ## A088582.P3502862530010765337

`(13+(3*n-1)*4^(n+1))/9`
-/

namespace A088582.P3502862530010765337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 + ((3 * n : ℤ) - 1) * (4 ^ (n + 1) : ℤ) : ℚ) / 9

end

end A088582.P3502862530010765337

namespace A088582

/-- `(13+(3*n-1)*4^(n+1))/9` -/
def P3502862530010765337.Spec : Prop :=
  ∀ n, P3502862530010765337.a n = (A088582 n : ℚ)

theorem P3502862530010765337.correct : P3502862530010765337.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A088582, Nat.add_sub_cancel, A088582.P3502862530010765337.a, A088582.P175909734931828493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A088582, Nat.add_sub_cancel, A088582.P3502862530010765337.a, A088582.P175909734931828493.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A088582

/-! ## A088582.P4502622628030298101

`or(1, ∑[n*4^n])`
-/

namespace A088582.P4502622628030298101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088582.P4502622628030298101

namespace A088582

/-- `or(1, ∑[n*4^n])` -/
def P4502622628030298101.Spec : Prop :=
  ∀ n, (P4502622628030298101.a n : ℤ) = A088582 n

end A088582

/-! ## A088582.P14205386706202180820

`xor(1, ∑[n*4^n])`
-/

namespace A088582.P14205386706202180820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088582.P14205386706202180820

namespace A088582

/-- `xor(1, ∑[n*4^n])` -/
def P14205386706202180820.Spec : Prop :=
  ∀ n, (P14205386706202180820.a n : ℤ) = A088582 n

end A088582

/-! ## A088582.P6256168969428843211

`∑[4^n*round(1/acot(n))]`
-/

namespace A088582.P6256168969428843211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P6256168969428843211

namespace A088582

/-- `∑[4^n*round(1/acot(n))]` -/
def P6256168969428843211.Spec : Prop :=
  ∀ n, P6256168969428843211.a n = A088582 n

end A088582

/-! ## A088582.P8983450392992244780

`a(n-1)+4^n*n` with `a(0)=1`
-/

namespace A088582.P8983450392992244780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 ^ n * n

end

end A088582.P8983450392992244780

namespace A088582

/-- `a(n-1)+4^n*n` -/
def P8983450392992244780.Spec : Prop :=
  ∀ n, (P8983450392992244780.a n : ℤ) = A088582 n

end A088582

/-! ## A088582.P11765481403296826219

`∑[(floor(2/acot(n))-n)*4^n]`
-/

namespace A088582.P11765481403296826219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)) * (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P11765481403296826219

namespace A088582

/-- `∑[(floor(2/acot(n))-n)*4^n]` -/
def P11765481403296826219.Spec : Prop :=
  ∀ n, P11765481403296826219.a n = A088582 n

end A088582

/-! ## A088582.P4834311389707501206

`∑[4^n*n%a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A088582.P4834311389707501206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 ^ n * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P4834311389707501206

namespace A088582

/-- `∑[4^n*n%a(n-1)]` -/
def P4834311389707501206.Spec : Prop :=
  ∀ n, (P4834311389707501206.a n : ℤ) = A088582 n

end A088582

/-! ## A088582.P6007329934062496097

`∑[n*gcd(4, a(n-1))^n]` with `a(0)=1, a(1)=4`
-/

namespace A088582.P6007329934062496097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  n * Nat.gcd 4 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P6007329934062496097

namespace A088582

/-- `∑[n*gcd(4, a(n-1))^n]` -/
def P6007329934062496097.Spec : Prop :=
  ∀ n, (P6007329934062496097.a n : ℤ) = A088582 n

end A088582

/-! ## A088582.P15688135246255199172

`∑[A018215(n)]+1`
-/

namespace A088582.P15688135246255199172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088582.P15688135246255199172

namespace A088582

/-- `∑[A018215(n)]+1` -/
def P15688135246255199172.Spec : Prop :=
  ∀ n, P15688135246255199172.a n = A088582 n

end A088582

/-! ## A088582.P5063063238373892926

`∑[A060416(n)]+n`
-/

namespace A088582.P5063063238373892926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A088582.P5063063238373892926

namespace A088582

/-- `∑[A060416(n)]+n` -/
def P5063063238373892926.Spec : Prop :=
  ∀ n, P5063063238373892926.a n = A088582 n

end A088582

/-! ## A088582.P3068795307856027225

`∑[A050915(n)]-n`
-/

namespace A088582.P3068795307856027225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A088582.P3068795307856027225

namespace A088582

/-- `∑[A050915(n)]-n` -/
def P3068795307856027225.Spec : Prop :=
  ∀ n, P3068795307856027225.a n = A088582 n

end A088582

/-! ## A088582.P8792662207276819562

`∑[A004277(n)*A081294(n)]`
-/

namespace A088582.P8792662207276819562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P8792662207276819562

namespace A088582

/-- `∑[A004277(n)*A081294(n)]` -/
def P8792662207276819562.Spec : Prop :=
  ∀ n, P8792662207276819562.a n = A088582 n

end A088582

/-! ## A088582.P17291271463405536746

`∑[A000079(n)²*A028310(n)]`
-/

namespace A088582.P17291271463405536746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P17291271463405536746

namespace A088582

/-- `∑[A000079(n)²*A028310(n)]` -/
def P17291271463405536746.Spec : Prop :=
  ∀ n, P17291271463405536746.a n = A088582 n

end A088582

/-! ## A088582.P13810999406522082159

`∑[A004277(n)*A011782(2*n)]`
-/

namespace A088582.P13810999406522082159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A011782 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P13810999406522082159

namespace A088582

/-- `∑[A004277(n)*A011782(2*n)]` -/
def P13810999406522082159.Spec : Prop :=
  ∀ n, P13810999406522082159.a n = A088582 n

end A088582

/-! ## A088582.P8136951074469424867

`∑[A000079(2*n)*A028310(n)]`
-/

namespace A088582.P8136951074469424867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P8136951074469424867

namespace A088582

/-- `∑[A000079(2*n)*A028310(n)]` -/
def P8136951074469424867.Spec : Prop :=
  ∀ n, P8136951074469424867.a n = A088582 n

end A088582

/-! ## A088582.P11553256836352996014

`∑[or(A000007(n), A001787(2*n))]`
-/

namespace A088582.P11553256836352996014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A001787 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P11553256836352996014

namespace A088582

/-- `∑[or(A000007(n), A001787(2*n))]` -/
def P11553256836352996014.Spec : Prop :=
  ∀ n, P11553256836352996014.a n = A088582 n

end A088582

/-! ## A088582.P336124935639095179

`∑[∑[A011782(n)]²*A028310(n)]`
-/

namespace A088582.P336124935639095179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P336124935639095179

namespace A088582

/-- `∑[∑[A011782(n)]²*A028310(n)]` -/
def P336124935639095179.Spec : Prop :=
  ∀ n, P336124935639095179.a n = A088582 n

end A088582

/-! ## A088582.P4260220082123599056

`∑[A028310(n)*A131577(n+1)²]`
-/

namespace A088582.P4260220082123599056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A131577 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088582.P4260220082123599056

namespace A088582

/-- `∑[A028310(n)*A131577(n+1)²]` -/
def P4260220082123599056.Spec : Prop :=
  ∀ n, P4260220082123599056.a n = A088582 n

end A088582

/-!
# A088583: Primes of the form n*x^n + (n-1)*x^(n-1) + . . . + x + 1 for x=4.

The programs for A088583, there is no canonical definition to state claims against.
-/

/-! ## A088583.P7343902845242241639

`A088582(A005117(n+1)^A242849(n))`
-/

namespace A088583.P7343902845242241639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088582 (SequenceMachineLib.roundAway ((A005117 (n + 1) : ℚ) ^ (A242849 n : ℤ))).toNat

end

end A088583.P7343902845242241639

/-! ## A088583.P1952307211722330011

`A088582(C(A005117(n+1), A242849(n)))`
-/

namespace A088583.P1952307211722330011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088582 (Nat.choose (A005117 (n + 1)).toNat (A242849 n).toNat)

end

end A088583.P1952307211722330011

/-! ## A088583.P4737171662205215181

`A088582(C(A325398(n+1), A008834(n+1)))`
-/

namespace A088583.P4737171662205215181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088582 (Nat.choose (A325398 (n + 1)).toNat (A008834 (n + 1)).toNat)

end

end A088583.P4737171662205215181

/-!
# A088585: Bisection of A088567.

The programs for A088585, the canonical program `A088585.P3376771594381102149` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088585 has offset 0).

The definition of A088585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088585.P3376771594381102149

`∑[a(n-2)+a(floor(n/2))]` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088585

/-- `∑[a(n-2)+a(floor(n/2))]` -/
def P3376771594381102149.Spec : Prop :=
  ∀ n, (P3376771594381102149.a n : ℤ) = A088585 n

theorem P3376771594381102149.correct : P3376771594381102149.Spec := by
  intro n
  simp only [A088585]

end A088585

/-! ## A088585.P14310494252271196285

`a(n-1)+a(floor(n/2))-char[2*n]` with `a(0)=1`
-/

namespace A088585.P14310494252271196285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A088585.P14310494252271196285

namespace A088585

/-- `a(n-1)+a(floor(n/2))-char[2*n]` -/
def P14310494252271196285.Spec : Prop :=
  ∀ n, P14310494252271196285.a n = A088585 n

end A088585

/-! ## A088585.P1033793438611492019

`a(n-1)-(char[2*n]-a(floor(n/2)))` with `a(0)=1`
-/

namespace A088585.P1033793438611492019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A088585.P1033793438611492019

namespace A088585

/-- `a(n-1)-(char[2*n]-a(floor(n/2)))` -/
def P1033793438611492019.Spec : Prop :=
  ∀ n, P1033793438611492019.a n = A088585 n

end A088585

/-! ## A088585.P5296893249553679152

`∑[a(n-2)+a(and(n, -2)/2)]+1` with `a(0)=0, a(1)=1`
-/

namespace A088585.P5296893249553679152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088585.P5296893249553679152

namespace A088585

/-- `∑[a(n-2)+a(and(n, -2)/2)]+1` -/
def P5296893249553679152.Spec : Prop :=
  ∀ n, (P5296893249553679152.a n : ℤ) = A088585 n

end A088585

/-! ## A088585.P4394032627578959722

`a(n-1)-1+a(floor(n/2))+n%2` with `a(0)=1`
-/

namespace A088585.P4394032627578959722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 + (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ))

end

end A088585.P4394032627578959722

namespace A088585

/-- `a(n-1)-1+a(floor(n/2))+n%2` -/
def P4394032627578959722.Spec : Prop :=
  ∀ n, P4394032627578959722.a n = A088585 n

end A088585

/-! ## A088585.P3280521347326250855

`a(n-1)+a(floor(n/2))+1-gcd(2, n)` with `a(0)=1`
-/

namespace A088585.P3280521347326250855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a ⌊(n : ℚ) / 2⌋.toNat + 1) - (Nat.gcd 2 n : ℤ)

end

end A088585.P3280521347326250855

namespace A088585

/-- `a(n-1)+a(floor(n/2))+1-gcd(2, n)` -/
def P3280521347326250855.Spec : Prop :=
  ∀ n, P3280521347326250855.a n = A088585 n

end A088585

/-! ## A088585.P7700333859426914920

`∑[a(n-2)+a(n-∑[a(n-2)²])]+1` with `a(0)=0, a(1)=1`
-/

namespace A088585.P7700333859426914920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088585.P7700333859426914920

namespace A088585

/-- `∑[a(n-2)+a(n-∑[a(n-2)²])]+1` -/
def P7700333859426914920.Spec : Prop :=
  ∀ n, (P7700333859426914920.a n : ℤ) = A088585 n

end A088585

/-! ## A088585.P3124739666721413935

`a(n-1)+a(floor(n/2))+(1-(-1)^n)/2-1` with `a(0)=1`
-/

namespace A088585.P3124739666721413935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2) - 1

end

end A088585.P3124739666721413935

namespace A088585

/-- `a(n-1)+a(floor(n/2))+(1-(-1)^n)/2-1` -/
def P3124739666721413935.Spec : Prop :=
  ∀ n, P3124739666721413935.a n = (A088585 n : ℚ)

end A088585

/-! ## A088585.P2301183409323849288

`∑[A088567(n)]`
-/

namespace A088585.P2301183409323849288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088585.P2301183409323849288

namespace A088585

/-- `∑[A088567(n)]` -/
def P2301183409323849288.Spec : Prop :=
  ∀ n, P2301183409323849288.a n = A088585 n

theorem P2301183409323849288.correct : P2301183409323849288.Spec := by
  intro n
  simp only [A088585, Nat.add_sub_cancel, A088585.P2301183409323849288.f1, A088585.P2301183409323849288.a, A088585.P3376771594381102149.f1, A088585.P3376771594381102149.a, A088567, A088567.P12410704258799709771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088585

/-! ## A088585.P5183712862889295751

`∑[A242634(n)]+1`
-/

namespace A088585.P5183712862889295751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088585.P5183712862889295751

namespace A088585

/-- `∑[A242634(n)]+1` -/
def P5183712862889295751.Spec : Prop :=
  ∀ n, P5183712862889295751.a n = A088585 n

end A088585

/-! ## A088585.P17179439346426287669

`A088575(n)+A057427(n)`
-/

namespace A088585.P17179439346426287669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088575 n + A057427 n

end

end A088585.P17179439346426287669

namespace A088585

/-- `A088575(n)+A057427(n)` -/
def P17179439346426287669.Spec : Prop :=
  ∀ n, P17179439346426287669.a n = A088585 n

end A088585

/-! ## A088585.P10314576036411058930

`A088575(n)-A057428(n)`
-/

namespace A088585.P10314576036411058930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088575 n - A057428 n

end

end A088585.P10314576036411058930

namespace A088585

/-- `A088575(n)-A057428(n)` -/
def P10314576036411058930.Spec : Prop :=
  ∀ n, P10314576036411058930.a n = A088585 n

end A088585

/-! ## A088585.P3910641910015163493

`A088575(n)+A112347(n)*A112347(n)`
-/

namespace A088585.P3910641910015163493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088575 n + A112347 n * A112347 n

end

end A088585.P3910641910015163493

namespace A088585

/-- `A088575(n)+A112347(n)*A112347(n)` -/
def P3910641910015163493.Spec : Prop :=
  ∀ n, P3910641910015163493.a n = A088585 n

end A088585

/-! ## A088585.P10915742953009382207

`A088575(n)+A112347(n)/A121238(n)`
-/

namespace A088585.P10915742953009382207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088575 n : ℚ) + (A112347 n : ℚ) / (A121238 n : ℚ)

end

end A088585.P10915742953009382207

namespace A088585

/-- `A088575(n)+A112347(n)/A121238(n)` -/
def P10915742953009382207.Spec : Prop :=
  ∀ n, P10915742953009382207.a n = (A088585 n : ℚ)

end A088585

/-! ## A088585.P10748758781207775193

`A088575(n)+A242634(n)/A088567(n)`
-/

namespace A088585.P10748758781207775193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088575 n : ℚ) + (A242634 n : ℚ) / (A088567 n : ℚ)

end

end A088585.P10748758781207775193

namespace A088585

/-- `A088575(n)+A242634(n)/A088567(n)` -/
def P10748758781207775193.Spec : Prop :=
  ∀ n, P10748758781207775193.a n = (A088585 n : ℚ)

end A088585

/-! ## A088585.P544256473122038859

`A088567(2*n)-A057428(n)`
-/

namespace A088585.P544256473122038859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 (2 * n) - A057428 n

end

end A088585.P544256473122038859

namespace A088585

/-- `A088567(2*n)-A057428(n)` -/
def P544256473122038859.Spec : Prop :=
  ∀ n, P544256473122038859.a n = A088585 n

end A088585

/-! ## A088585.P15131032381722957444

`A088567(2*n)-A062157(2*n)`
-/

namespace A088585.P15131032381722957444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 (2 * n) - A062157 (2 * n)

end

end A088585.P15131032381722957444

namespace A088585

/-- `A088567(2*n)-A062157(2*n)` -/
def P15131032381722957444.Spec : Prop :=
  ∀ n, P15131032381722957444.a n = A088585 n

end A088585

/-! ## A088585.P4457764293594598051

`A088567(Δ[n²])`
-/

namespace A088585.P4457764293594598051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088585.P4457764293594598051

namespace A088585

/-- `A088567(Δ[n²])` -/
def P4457764293594598051.Spec : Prop :=
  ∀ n, P4457764293594598051.a n = A088585 n

end A088585

/-! ## A088585.P12293821275608778541

`A242634(Δ[n²])`
-/

namespace A088585.P12293821275608778541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088585.P12293821275608778541

namespace A088585

/-- `A242634(Δ[n²])` -/
def P12293821275608778541.Spec : Prop :=
  ∀ n, P12293821275608778541.a n = A088585 n

end A088585

/-! ## A088585.P3479886777642970715

`A242634(2*n)+1`
-/

namespace A088585.P3479886777642970715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 (2 * n) + 1

end

end A088585.P3479886777642970715

namespace A088585

/-- `A242634(2*n)+1` -/
def P3479886777642970715.Spec : Prop :=
  ∀ n, P3479886777642970715.a n = A088585 n

end A088585

/-!
# A088586: Larger section of edge A089025(n) by integral cevian A088513(n).

The programs for A088586, there is no canonical definition to state claims against.
-/

/-! ## A088586.P945458902405386314

`(A089025(n+1)+A088587(n+1))/2`
-/

namespace A088586.P945458902405386314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089025 (n + 1) + A088587 (n + 1) : ℚ) / 2

end

end A088586.P945458902405386314

/-! ## A088586.P12218851853859712916

`A088587(n+1)+A088514(n+1)`
-/

namespace A088586.P12218851853859712916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088587 (n + 1) + A088514 (n + 1)

end

end A088586.P12218851853859712916

/-! ## A088586.P8872312228840812610

`A089025(n+1)-A088514(n+1)`
-/

namespace A088586.P8872312228840812610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089025 (n + 1) - A088514 (n + 1)

end

end A088586.P8872312228840812610

/-! ## A088586.P6680829142593359555

`record[A201223(n+2)]-A088514(n+1)`
-/

namespace A088586.P6680829142593359555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088514 (n + 1)

end

end A088586.P6680829142593359555

/-! ## A088586.P12358315827589590054

`A001281(A089025(n+1)+A088587(n+1))`
-/

namespace A088586.P12358315827589590054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A089025 (n + 1) + A088587 (n + 1)).toNat

end

end A088586.P12358315827589590054

/-! ## A088586.P15260227844661711604

`A004526(A089025(n+1)+A088587(n+1))`
-/

namespace A088586.P15260227844661711604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A089025 (n + 1) + A088587 (n + 1)).toNat

end

end A088586.P15260227844661711604

/-! ## A088586.P11515804552023332881

`A014682(A089025(n+1)+A088587(n+1))`
-/

namespace A088586.P11515804552023332881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A089025 (n + 1) + A088587 (n + 1)).toNat

end

end A088586.P11515804552023332881

/-! ## A088586.P7683221636482073023

`A123108(A089025(n+1)+A088587(n+1))`
-/

namespace A088586.P7683221636482073023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A089025 (n + 1) + A088587 (n + 1)).toNat

end

end A088586.P7683221636482073023

/-!
# A088587: Difference between the two segments of edge d = A089025(n) partitioned by cevian c = A088513(n).

The programs for A088587, there is no canonical definition to state claims against.
-/

/-! ## A088587.P10207749695225148081

`A088586(n+1)-A088514(n+1)`
-/

namespace A088587.P10207749695225148081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (n + 1) - A088514 (n + 1)

end

end A088587.P10207749695225148081

/-! ## A088587.P18064161013748874866

`A089025(n+1)-2*A088514(n+1)`
-/

namespace A088587.P18064161013748874866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089025 (n + 1) - 2 * A088514 (n + 1)

end

end A088587.P18064161013748874866

/-! ## A088587.P7290221962110276860

`2*A088586(n+1)-A089025(n+1)`
-/

namespace A088587.P7290221962110276860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088586 (n + 1) - A089025 (n + 1)

end

end A088587.P7290221962110276860

/-! ## A088587.P2241971072941178338

`A089025(n+1)-A004277(A088514(n+1))`
-/

namespace A088587.P2241971072941178338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089025 (n + 1) - A004277 (A088514 (n + 1)).toNat

end

end A088587.P2241971072941178338

/-! ## A088587.P978180306397007491

`A004277(A088586(n+1))-A089025(n+1)`
-/

namespace A088587.P978180306397007491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088586 (n + 1)).toNat - A089025 (n + 1)

end

end A088587.P978180306397007491

/-! ## A088587.P10915036445533071710

`A005843(A088586(n+1))%A089025(A000027(n+1))`
-/

namespace A088587.P10915036445533071710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A088586 (n + 1)).toNat) (A089025 (A000027 (n + 1)).toNat)

end

end A088587.P10915036445533071710

/-! ## A088587.P16266759603187872664

`A088586(A000027(n+1))+A088586(n+1)-A089025(n+1)`
-/

namespace A088587.P16266759603187872664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (A000027 (n + 1)).toNat + (A088586 (n + 1) - A089025 (n + 1))

end

end A088587.P16266759603187872664

/-!
# A088588: a(0)=1, a(n) = floor(Pi * exp(f(n)*(f(n)+1)/2) * prime(n/2)#) where f(n)=floor((n+1)/2) and p(n)# is the n-th primorial.

The programs for A088588, there is no canonical definition to state claims against.
-/

/-! ## A088588.P5066323205821356371

`A088589(A178334(n)+n)`
-/

namespace A088588.P5066323205821356371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088589 (A178334 n + (n : ℤ)).toNat

end

end A088588.P5066323205821356371

/-! ## A088588.P14828143519518967070

`record[A088589(A025581(n+2))]`
-/

namespace A088588.P14828143519518967070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088589 (A025581 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088588.P14828143519518967070

/-! ## A088588.P16173101651234800204

`A088589(1-A000007(n)+n)`
-/

namespace A088588.P16173101651234800204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088589 (1 - A000007 n + (n : ℤ)).toNat

end

end A088588.P16173101651234800204

/-! ## A088588.P8776037531578311422

`A088589(1-(A000007(n)-n))`
-/

namespace A088588.P8776037531578311422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088589 (1 - (A000007 n - (n : ℤ))).toNat

end

end A088588.P8776037531578311422

/-! ## A088588.P15830133697540626785

`A088589(xor(A000007(n), A347400(n+1)))`
-/

namespace A088588.P15830133697540626785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088589 (Int.xor (A000007 n) (A347400 (n + 1))).toNat

end

end A088588.P15830133697540626785

/-!
# A088589: a(0)=1, a(n) = floor(Pi * exp(f(n)*(f(n)+1)/2) * prime((n-1)/2)#) where f(n)=floor(n/2) and p(n)# is the n-th primorial.

The programs for A088589, there is no canonical definition to state claims against.
-/

/-! ## A088589.P2492250296073807497

`∪[A088588(n+1)%A088583(n+1), A088588(n)]`
-/

namespace A088589.P2492250296073807497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088588 (n + 1)) (A088583 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088589.P2492250296073807497

/-! ## A088589.P2320315836983674881

`A117894(n)*A122356(A135139(n))`
-/

namespace A088589.P2320315836983674881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117894 n * A122356 (A135139 n).toNat

end

end A088589.P2320315836983674881

/-!
# A088590: A nonsense sequence.

The programs for A088590, there is no canonical definition to state claims against.
-/

/-! ## A088590.P6881622476776099197

`∑[∑[A322399(n+1)+1]]`
-/

namespace A088590.P6881622476776099197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322399 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088590.P6881622476776099197

/-!
# A088591: A nonsense sequence.

The programs for A088591, there is no canonical definition to state claims against.
-/

/-! ## A088591.P12430631922874299645

`∏{p}[A209413(3^n), #]`
-/

namespace A088591.P12430631922874299645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209413 (3 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A088591.P12430631922874299645

/-!
# A088592: Let p be the n-th 4k+3 prime (A002145), g be any primitive root of p. The mapping x->g^x mod p gives a permutation of {1,2,...,p-1}. a(n) is 0 if the permutation is even for each g, 1 if odd for each g.

The programs for A088592, there is no canonical definition to state claims against.
-/

/-! ## A088592.P884234143864239884

`ceil(sin(A265643(n+1)))`
-/

namespace A088592.P884234143864239884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A265643 (n + 1) : ℝ)⌉

end

end A088592.P884234143864239884

/-! ## A088592.P14608832279383877264

`(A282037(n+1)%4)%3`
-/

namespace A088592.P14608832279383877264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A282037 (n + 1)) 4) 3

end

end A088592.P14608832279383877264

/-! ## A088592.P14556261623603293970

`floor(sqrt(A282035(n+1)))%2`
-/

namespace A088592.P14556261623603293970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A282035 (n + 1))) 2

end

end A088592.P14556261623603293970

/-! ## A088592.P1779595798949529241

`(and(2, A002143(n+1))/2)^n`
-/

namespace A088592.P1779595798949529241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.land 2 (A002143 (n + 1)) : ℚ) / 2) ^ n

end

end A088592.P1779595798949529241

/-! ## A088592.P12974884589191320384

`((p?[4*n-1]-1)/2-A276183(4*p?[4*n-1]))%2`
-/

namespace A088592.P12974884589191320384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2 - (A276183 (4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat : ℚ))) 2

end

end A088592.P12974884589191320384

/-! ## A088592.P7624678594899066540

`A166486(A282037(n+1)+1)`
-/

namespace A088592.P7624678594899066540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A282037 (n + 1) + 1).toNat

end

end A088592.P7624678594899066540

/-! ## A088592.P13739824876406157243

`A121262(A282037(n+1)-1)`
-/

namespace A088592.P13739824876406157243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A282037 (n + 1) - 1).toNat

end

end A088592.P13739824876406157243

/-! ## A088592.P18416422150994435428

`A178151(A080148(n+1))%2`
-/

namespace A088592.P18416422150994435428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178151 (A080148 (n + 1)).toNat) 2

end

end A088592.P18416422150994435428

/-! ## A088592.P8666118177883612330

`A000035(floor(sqrt(A282035(n+1))))`
-/

namespace A088592.P8666118177883612330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.sqrt (A282035 (n + 1))).toNat

end

end A088592.P8666118177883612330

/-! ## A088592.P10951457590827874727

`char[n*A087960(A002143(n+1))]`
-/

namespace A088592.P10951457590827874727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087960 (A002143 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088592.P10951457590827874727

/-! ## A088592.P10642948796904802500

`A010873(A282037(n+1)+1)/2`
-/

namespace A088592.P10642948796904802500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010873 (A282037 (n + 1) + 1).toNat : ℚ) / 2

end

end A088592.P10642948796904802500

/-! ## A088592.P5481510587498251132

`A005127(a(A265643(n+1)+1))` with `a(0)=1`
-/

namespace A088592.P5481510587498251132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005127 (a (A265643 (n + 1) + 1).toNat).toNat

end

end A088592.P5481510587498251132

/-! ## A088592.P5951119769379662347

`A085491(n*(1-A265643(n+1)))`
-/

namespace A088592.P5951119769379662347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 ((n : ℤ) * (1 - A265643 (n + 1))).toNat

end

end A088592.P5951119769379662347

/-! ## A088592.P16626696668308693180

`A000045(A265643(n+1)+gcd(n, n+1))`
-/

namespace A088592.P16626696668308693180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A265643 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A088592.P16626696668308693180

/-!
# A088593: a(0)=18; a(n+1) = largest odd factor of 3*a(n)+1; stop when a(n)=1.

The programs for A088593, there is no canonical definition to state claims against.
-/

/-! ## A088593.P14515022215450706719

`A139391(a(n-1))` with `a(0)=18, a(1)=55`
-/

namespace A088593.P14515022215450706719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18, 55] fun n a =>
  A139391 (a (n - 1)).toNat

end

end A088593.P14515022215450706719

/-! ## A088593.P7889034608372776015

`A000265(3*a(n-1)+1)` with `a(0)=18`
-/

namespace A088593.P7889034608372776015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  A000265 (3 * a (n - 1) + 1).toNat

end

end A088593.P7889034608372776015

/-! ## A088593.P9794094437507366523

`A000265(A016777(a(n-1)))` with `a(0)=18`
-/

namespace A088593.P9794094437507366523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  A000265 (A016777 (a (n - 1)).toNat).toNat

end

end A088593.P9794094437507366523

/-! ## A088593.P8597038533690296047

`A030101(A030101(3*a(n-1)+1))` with `a(0)=18`
-/

namespace A088593.P8597038533690296047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  A030101 (A030101 (3 * a (n - 1) + 1).toNat).toNat

end

end A088593.P8597038533690296047

/-! ## A088593.P17234238187781501630

`A000265(A103221(18*a(n-1)))` with `a(0)=18`
-/

namespace A088593.P17234238187781501630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  A000265 (A103221 (18 * a (n - 1)).toNat).toNat

end

end A088593.P17234238187781501630

/-!
# A088594: Number of 3-dimensional lattice paths running from (0,0,0) to (n,n,n), lying in {(x,y,z) : 0<=x<=y<=z} and using the steps (1,0,0), (0,1,0), (0,0,1), (1,1,0), (1,0,1), (0,1,1), (1,1,1).

The programs for A088594, there is no canonical definition to state claims against.
-/

/-! ## A088594.P9370305300422656544

`A036453(n+1)²*A105124(n)`
-/

namespace A088594.P9370305300422656544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A105124 n

end

end A088594.P9370305300422656544

/-! ## A088594.P3334754926288395380

`(A178334(n)+1)²*A105124(n)`
-/

namespace A088594.P3334754926288395380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) ^ 2 * A105124 n

end

end A088594.P3334754926288395380

/-! ## A088594.P1022679009539201785

`A000005(A056913(n+1))*A105124(n)`
-/

namespace A088594.P1022679009539201785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056913 (n + 1)).toNat * A105124 n

end

end A088594.P1022679009539201785

/-! ## A088594.P5342330611703271593

`A114284(A067774(n+1))²*A105124(n)`
-/

namespace A088594.P5342330611703271593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 (A067774 (n + 1)).toNat ^ 2 * A105124 n

end

end A088594.P5342330611703271593

/-! ## A088594.P4632524610577514984

`A114284(A052905(2*n+1))²*A105124(n)`
-/

namespace A088594.P4632524610577514984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 (A052905 (2 * n + 1)).toNat ^ 2 * A105124 n

end

end A088594.P4632524610577514984

/-!
# A088595: Numbers n such that (A006530(n) + A020639(n))/2 is an integer, divides n and it is not a power of prime number: it has at least 2 distinct prime factors. Special terms of A088948.

The programs for A088595, there is no canonical definition to state claims against.
-/

/-! ## A088595.P5949142980485042970

`∩[A088949(n+1), A090196(n+1)]`
-/

namespace A088595.P5949142980485042970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P5949142980485042970

/-! ## A088595.P17177307989187049347

`∩[A088949(n+1), A216918(n+1)]`
-/

namespace A088595.P17177307989187049347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P17177307989187049347

/-! ## A088595.P7158442822617439102

`∩[A060700(n+1), A088949(n+1)]`
-/

namespace A088595.P7158442822617439102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P7158442822617439102

/-! ## A088595.P5714394630857919825

`∩[A027854(n+1), A088949(n+1)]`
-/

namespace A088595.P5714394630857919825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P5714394630857919825

/-! ## A088595.P4904410935223456371

`∩[A088949(n+1), A291045(n+1)]`
-/

namespace A088595.P4904410935223456371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P4904410935223456371

/-! ## A088595.P2639787477924602492

`∩[A088949(n+1), A289484(n+1)]`
-/

namespace A088595.P2639787477924602492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P2639787477924602492

/-! ## A088595.P4283755979967853687

`∩[A088949(n+1), A138604(n+1)]`
-/

namespace A088595.P4283755979967853687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P4283755979967853687

/-! ## A088595.P15822389467776111424

`∩[A088949(n+1), A129512(n+1)]`
-/

namespace A088595.P15822389467776111424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P15822389467776111424

/-! ## A088595.P12601575248373221173

`∩[A083883(n+1), A088949(n+1)]`
-/

namespace A088595.P12601575248373221173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P12601575248373221173

/-! ## A088595.P13003171194792274006

`∩[A061346(n+1), A088949(n+1)]`
-/

namespace A088595.P13003171194792274006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P13003171194792274006

/-! ## A088595.P370377248168502213

`∩[A005279(n+1), A088949(n+1)]`
-/

namespace A088595.P370377248168502213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P370377248168502213

/-! ## A088595.P3137591812697750825

`∩[A000977(n+1), A088949(n+1)]`
-/

namespace A088595.P3137591812697750825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088595.P3137591812697750825

/-!
# A088597: First (most significant) number in the concatenation of A077293(n).

The programs for A088597, there is no canonical definition to state claims against.
-/

/-! ## A088597.P16352862305184099512

`A088598(n)+a(n-1)` with `a(0)=1`
-/

namespace A088597.P16352862305184099512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088598 n + a (n - 1)

end

end A088597.P16352862305184099512

/-! ## A088597.P14443528757813510843

`∑[A088598(4*floor(acot(n))+n)]`
-/

namespace A088597.P14443528757813510843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088598 (4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088597.P14443528757813510843

/-! ## A088597.P1052356628773305095

`∑[A088598(floor(acot(n)²)²+n)]`
-/

namespace A088597.P1052356628773305095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088598 (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088597.P1052356628773305095

/-! ## A088597.P1471335110860734820

`∑[A088598(abs(1-n)+1)]-1`
-/

namespace A088597.P1471335110860734820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088598 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088597.P1471335110860734820

/-! ## A088597.P9028420087809834483

`∑[A088598(A000038(n)²+n)]`
-/

namespace A088597.P9028420087809834483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088598 (A000038 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088597.P9028420087809834483

/-! ## A088597.P2622166642710335610

`a(n-1)-(A000038(n)-A088598(n))` with `a(0)=1`
-/

namespace A088597.P2622166642710335610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000038 n - A088598 n)

end

end A088597.P2622166642710335610

/-! ## A088597.P4678115060138208819

`∑[A088598(n/A153284(4*a(n-1)))]` with `a(0)=1`
-/

namespace A088597.P4678115060138208819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A088598 (SequenceMachineLib.roundAway ((n : ℚ) / (A153284 (4 * f1 (n - 1)).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088597.P4678115060138208819

/-! ## A088597.P6221755279443552699

`∑[A088598(n)%A017317((n-1)*a(n-1))]` with `a(0)=1`
-/

namespace A088597.P6221755279443552699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A088598 n) (A017317 (((n : ℤ) - 1) * f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088597.P6221755279443552699

/-! ## A088597.P17958392968194689741

`∑[A088598(A233583(n+1)+A000038(n))]`
-/

namespace A088597.P17958392968194689741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088598 (A233583 (n + 1) + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088597.P17958392968194689741

/-!
# A088598: Number of numbers appearing in the concatenation A077293(n).

The programs for A088598, there is no canonical definition to state claims against.
-/

/-! ## A088598.P15189417705922982913

`Δ[A088597(n+1)]`
-/

namespace A088598.P15189417705922982913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088598.P15189417705922982913

/-! ## A088598.P1268725802107374750

`Δ[record[A088597(A133310(n))]]`
-/

namespace A088598.P1268725802107374750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088597 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088598.P1268725802107374750

/-! ## A088598.P4336122563213329964

`Δ[record[A088597(A137735(n))]]`
-/

namespace A088598.P4336122563213329964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088597 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088598.P4336122563213329964

/-! ## A088598.P10315647195617917895

`Δ[record[A088597(A193738(n))]]`
-/

namespace A088598.P10315647195617917895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088597 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088598.P10315647195617917895

/-! ## A088598.P14211400482212912981

`A088597(n+2)-A088597(n+1)`
-/

namespace A088598.P14211400482212912981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088597 (n + 2) - A088597 (n + 1)

end

end A088598.P14211400482212912981

/-!
# A088599: Smallest multiple of n using only one nonzero digit.

The programs for A088599, there is no canonical definition to state claims against.
-/

/-! ## A088599.P5903783864443009910

`(n+1)*A088756(n+1)`
-/

namespace A088599.P5903783864443009910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088756 (n + 1)

end

end A088599.P5903783864443009910

/-! ## A088599.P2096692083946903942

`lcm(Δ[A001057(n)], A088756(n+1))`
-/

namespace A088599.P2096692083946903942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A088756 (n + 1))

end

end A088599.P2096692083946903942

/-! ## A088599.P14584631308900363926

`lcm(n+1, A088756(A000027(n+1)))`
-/

namespace A088599.P14584631308900363926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A088756 (A000027 (n + 1)).toNat)

end

end A088599.P14584631308900363926

/-! ## A088599.P1772923914086731653

`lcm(xor(n, -1), A088756(A008621(4*n)))`
-/

namespace A088599.P1772923914086731653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A088756 (A008621 (4 * n)).toNat)

end

end A088599.P1772923914086731653

/-! ## A088599.P10862131687470542269

`lcm(A028310(n+1), A088756(A028310(n+1)))`
-/

namespace A088599.P10862131687470542269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (n + 1)) (A088756 (A028310 (n + 1)).toNat)

end

end A088599.P10862131687470542269

/-! ## A088599.P3616218539237878035

`lcm(A088756(A004719(n+1)), A090108(n+1))`
-/

namespace A088599.P3616218539237878035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088756 (A004719 (n + 1)).toNat) (A090108 (n + 1))

end

end A088599.P3616218539237878035

